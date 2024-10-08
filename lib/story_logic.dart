import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart' hide Image;
import 'package:just_audio/just_audio.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:vibration/vibration.dart';
import 'package:animated_text_kit/animated_text_kit.dart' ;
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:share_plus/share_plus.dart';
import 'story.dart';


const String interstitialAdUnitId = 'ca-app-pub-3940256099942544/1033173712';

final currentStoryNodeProvider = StateProvider<String>((ref) => 'start');
final vibrationEnabledProvider = StateProvider<bool>((ref) => true);
final textAnimationCompleteProvider = StateProvider<bool>((ref) => false);
final backgroundOpacityProvider = StateProvider<double>((ref) => 0.5);
final consentObtainedProvider = StateProvider<bool>((ref) => false);


class StoryPage extends ConsumerStatefulWidget {
  final Map<String, StoryNode> storyMap;
  final VoidCallback onExit;

  const StoryPage({Key? key, required this.storyMap, required this.onExit})
      : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends ConsumerState<StoryPage> {
  late AudioPlayer _audioPlayer;
  InterstitialAd? _interstitialAd;
  int _nodeChanges = 0;
  final double _volume = 0.3;
  int _interstitialLoadAttempts = 0;
  static const int maxFailedLoadAttempts = 3;
  final InAppReview inAppReview = InAppReview.instance;
  final int _vibrationStrength = 64;

  @override
  void initState() {
    super.initState();
    _initAudio();
    _initAdMob();
  }

  Future<void> _initAudio() async {
    _audioPlayer = AudioPlayer();
    try {
      await _audioPlayer.setAsset('assets/background_music.mp3');
      await _audioPlayer.setLoopMode(LoopMode.all);
      await _audioPlayer.setVolume(_volume);
      await _audioPlayer.play();
    } catch (_) {
      // Silently handle audio initialization errors
    }
  }

  Future<void> _initAdMob() async {
    await _requestConsent();
    await _createInterstitialAd();
  }




  Future<void> _requestConsent() async {
    ConsentRequestParameters params = ConsentRequestParameters();

    try {
       ConsentInformation.instance.requestConsentInfoUpdate(
        params,
            () async {
          if (await ConsentInformation.instance.isConsentFormAvailable()) {
            print("Consent form available");
            var status = await ConsentInformation.instance.getConsentStatus();
            if (status == ConsentStatus.required) {
              _loadConsentForm();
            } else {
              ref.read(consentObtainedProvider.notifier).state = status == ConsentStatus.obtained;
            }
          } else {
            // Handle case where consent form is not available
            ref.read(consentObtainedProvider.notifier).state = false;
            print("Consent form not available");
          }
        },
            (FormError error) {
          // Handle error (e.g., no internet) by assuming no consent
          ref.read(consentObtainedProvider.notifier).state = false;
          print("Error in requestConsentInfoUpdate: ${error.message}");
        },
      );
    } catch (e) {
      // Silently handle consent request errors
      ref.read(consentObtainedProvider.notifier).state = false;
      print("Exception in _requestConsent: $e");
    }
  }
  Future<void> _loadConsentForm() async {
    try {
      ConsentForm.loadConsentForm(
            (ConsentForm consentForm) async {
          consentForm.show(
                (FormError? formError) {
              if (formError == null) {
                var status = ConsentInformation.instance.getConsentStatus();
                ref.read(consentObtainedProvider.notifier).state = status == ConsentStatus.obtained;
              } else {
                ref.read(consentObtainedProvider.notifier).state = false;
                print("Error showing consent form: ${formError.message}");
              }
            },
          );
        },
            (FormError error) {
          // Handle loading error by assuming no consent
          ref.read(consentObtainedProvider.notifier).state = false;
          print("Error loading consent form: ${error.message}");
        },
      );
    } catch (e) {
      // Silently handle consent form loading errors
      ref.read(consentObtainedProvider.notifier).state = false;
      print("Exception in _loadConsentForm: $e");
    }
  }

  Future<void> _createInterstitialAd() async {
    try {
      await InterstitialAd.load(
        adUnitId: interstitialAdUnitId,
        request: AdRequest(
          nonPersonalizedAds: !ref.watch(consentObtainedProvider), // Set non-personalized ads if no consent
        ),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            _interstitialAd = ad;
            _interstitialLoadAttempts = 0;
          },
          onAdFailedToLoad: (_) {
            _interstitialLoadAttempts++;
            _interstitialAd = null;
            if (_interstitialLoadAttempts <= maxFailedLoadAttempts) {
              _createInterstitialAd();
            }
          },
        ),
      );
    } catch (_) {
      // Silently handle ad creation errors
    }
  }

  void _showInterstitialAd() {
    if (_interstitialAd != null) {
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (InterstitialAd ad) {
          ad.dispose();
          _createInterstitialAd();
        },
        onAdFailedToShowFullScreenContent: (InterstitialAd ad, _) {
          ad.dispose();
          _createInterstitialAd();
        },
      );
      _interstitialAd!.show().catchError((_) {});
      _interstitialAd = null;
    } else {
      _createInterstitialAd();
    }
  }

  Future<String> _getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_name') ?? 'Adventurer';
  }

  Future<void> _requestReview() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final bool hasRated = prefs.getBool('has_rated') ?? false;
      final int lastRatingPrompt = prefs.getInt('last_rating_prompt') ?? 0;
      final now = DateTime.now().millisecondsSinceEpoch;

      if (!hasRated && now - lastRatingPrompt > 432000000) {
        // 5 days in milliseconds
        if (await inAppReview.isAvailable()) {
          final userName = await _getUserName();
          _showCustomReviewDialog(userName);
          await prefs.setInt('last_rating_prompt', now);
        }
      }
    } catch (_) {
      // Silently handle review request errors
    }
  }


  Future<void> _showCustomReviewDialog(String userName) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Hello, $userName!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('We hope you\'re enjoying your adventure so far!'),
                SizedBox(height: 10),
                Text(
                    'Would you like to share your experience and rate our app?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Not Now'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Rate Now'),
              onPressed: () async {
                Navigator.of(context).pop();
                await inAppReview.requestReview();
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool('has_rated', true);
              },
            ),
          ],
        );
      },
    );
  }

  void _onNodeChange() {
    _nodeChanges++;
    if (_nodeChanges % 8 == 0) {
      _showInterstitialAd();
    } else if (_nodeChanges % 8 == 7) {
      // Preload the ad one node before it's needed
      _createInterstitialAd();
    }
    if (_nodeChanges % 10 == 0) {
      _requestReview();
    }
    ref.read(textAnimationCompleteProvider.notifier).state = false;
    print("Node changed, textAnimationComplete set to false");
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _interstitialAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentNode = ref.watch(currentStoryNodeProvider);
    final storyNode = widget.storyMap[currentNode] ?? widget.storyMap['start']!;
    final backgroundOpacity = ref.watch(backgroundOpacityProvider);

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        widget.onExit();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Story'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: widget.onExit,
          ),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              ),
            ),
          ],
        ),
        endDrawer: _buildDrawer(),
        body: Stack(
          children: [
            Opacity(
              opacity: backgroundOpacity,
              child: Image.asset(
                'assets/background_image.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildStoryText(storyNode),
                    _buildAnimation(storyNode),
                    _buildChoices(storyNode),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



  Widget _buildDrawer() {
    final vibrationEnabled = ref.watch(vibrationEnabledProvider);

    Future<void> _shareApp() async {
      final prefs = await SharedPreferences.getInstance();
      final userName = prefs.getString('user_name') ?? 'a friend';

      final String appLink = 'https://yourapplink.com'; // Replace with your app's link
      final String message = 'Check out this amazing app recommended by $userName! Download it now: $appLink';

      await Share.share(message, subject: 'Check out this great app!');
    }

    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: Text('Main Menu'),
              onTap: () {
                Navigator.pop(context);
                widget.onExit();
              },
            ),
            SwitchListTile(
              title: Text('Vibration'),
              value: vibrationEnabled,
              onChanged: (bool value) {
                ref.read(vibrationEnabledProvider.notifier).state = value;
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Share App'),
              leading: Icon(Icons.share),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                _shareApp(); // Call the share function
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStoryText(StoryNode storyNode) {
    final List<String> chunks = storyNode.text.split('. '); // Split text at each period followed by a space
    final chunkIndexProvider = StateProvider<int>((ref) => 0); // To track the current chunk index
    final isDisplayingProvider = StateProvider<bool>((ref) => false); // To control text reset and next display

    return Consumer(
      builder: (context, ref, _) {
        int currentIndex = ref.watch(chunkIndexProvider);
        bool isDisplaying = ref.watch(isDisplayingProvider);

        // If we're displaying a chunk, set it up in the animated text
        String currentChunk = currentIndex < chunks.length ? chunks[currentIndex] : '';

        if (!isDisplaying && currentIndex < chunks.length) {
          // Trigger the display of the next chunk
          Future.delayed(Duration(milliseconds: 500), () {
            ref.read(isDisplayingProvider.notifier).state = true; // Mark as displaying
          });
        }

        return Container(
          padding: EdgeInsets.all(16),
          child: AnimatedTextKit(
            key: ValueKey(currentChunk), // Key changes when chunk changes
            animatedTexts: [
              TypewriterAnimatedText(
                currentChunk,
                textStyle: TextStyle(fontFamily: "Google fonts", fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
                speed: Duration(milliseconds: 100),
              ),
            ],
            totalRepeatCount: 1,
            onFinished: () async {
              // Reset and show next chunk after a delay
              ref.read(isDisplayingProvider.notifier).state = false; // Reset displaying state

              // Wait before clearing the screen
              await Future.delayed(Duration(seconds: 2));
              ref.read(chunkIndexProvider.notifier).state += 1; // Move to next chunk

              if (ref.read(chunkIndexProvider) >= chunks.length) {
                // If all chunks have been displayed, mark animation as complete
                ref.read(textAnimationCompleteProvider.notifier).state = true;
              }
            },
          ),
        );
      },
    );
  }



  // Example: Manually controlling speed



  Widget _buildAnimation(StoryNode storyNode) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          child: FutureBuilder<RiveFile>(
            future: RiveFile.asset('lib/Assets/${storyNode.animation}'),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                return RiveAnimation.direct(
                  snapshot.data!,
                  fit: BoxFit.contain,
                );
              } else if (snapshot.hasError) {
                // Fallback to image if Rive animation fails to load
                return Image.asset(
                  'lib/Assets/${storyNode.image}',
                  fit: BoxFit.contain,
                );
              } else {
                // Show a loading indicator while the animation is being loaded
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        );
      },
    );
  }



  Widget _buildChoices(StoryNode storyNode) {
    final textAnimationComplete = ref.watch(textAnimationCompleteProvider);

    return textAnimationComplete
        ? Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: storyNode.choices
          .map((choice) => Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 8.0, horizontal: 16.0),
        child: AnimatedTapButton(
          text: choice.text,

          onCompleted: () {
            ref.read(currentStoryNodeProvider.notifier).state =
                choice.nextNode;
            _onNodeChange();
          },
          vibrationStrength: _vibrationStrength,
        ),
      ))
          .toList(),
    )
        : SizedBox.shrink();
  }
}

class AnimatedTapButton extends ConsumerStatefulWidget {
  final String text;
  final VoidCallback onCompleted;
  final int vibrationStrength;

  const AnimatedTapButton({
    Key? key,
    required this.text,
    required this.onCompleted,
    required this.vibrationStrength,
  }) : super(key: key);

  @override
  _AnimatedTapButtonState createState() => _AnimatedTapButtonState();
}

class _AnimatedTapButtonState extends ConsumerState<AnimatedTapButton> {
  final ValueNotifier<bool> _isAnimating = ValueNotifier<bool>(false);
  final int _animationDuration = 2; // 2 seconds for animation

  @override
  void dispose() {
    _isAnimating.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isAnimating,
      builder: (context, isAnimating, child) {
        return AnimatedButton(
          height: 70,
          width: 300,
          text: widget.text,

          isReverse: true,
          selectedTextColor: Colors.black,
          transitionType: TransitionType.LEFT_TOP_ROUNDER,
          textStyle: const TextStyle(
            fontFamily: "Google fonts",
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          selectedBackgroundColor: Colors.white,
          backgroundColor: Colors.black,
          borderColor: Colors.white,
          borderWidth: 2,
          borderRadius: 15,
          onPress: _onTap,
          animationDuration: Duration(seconds: _animationDuration),
          isSelected: isAnimating,
        );
      },
    );
  }

  void _onTap() {
    if (!_isAnimating.value) {
      _isAnimating.value = true;
      _startVibration();
      _startAnimation();
    }
  }

  void _startVibration() async {
    final vibrationEnabled = ref.read(vibrationEnabledProvider);
    if (vibrationEnabled) {
      try {
        if (await Vibration.hasVibrator() ?? false) {
          Vibration.vibrate(
            duration: 1000, // Vibrate for 1 second
            amplitude: widget.vibrationStrength,
          );
          print("Vibration started for 1 second");
        }
      } catch (e) {
        print("Error starting vibration: $e");
      }
    }
  }

  void _startAnimation() {
    Future.delayed(Duration(seconds: _animationDuration), () {
      _isAnimating.value = false;
      widget.onCompleted();
    });
  }
}