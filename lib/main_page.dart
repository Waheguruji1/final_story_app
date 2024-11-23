import 'package:flutter/material.dart';
import 'story_logic.dart';
import 'story.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0.0, -0.5),
                radius: 1.8,
                colors: [
                  Colors.deepPurple.shade900,
                  Colors.black,
                ],
              ),
            ),
          ),
          // Main content
          Column(
            children: [
              // App Bar Replacement
              Container(
                padding: EdgeInsets.only(top: 40, bottom: 20),
                child: Center(
                  child: Text(
                    'Story Selection',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Orbitron', // Space-inspired font
                    ),
                  ),
                ),
              ),
              // Story List
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView.builder(
                    itemCount: storyMaps.keys.length,
                    itemBuilder: (context, index) {
                      String storyTitle = storyMaps.keys.elementAt(index);
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            shadowColor: Colors.purpleAccent,
                            padding: EdgeInsets.all(16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 10,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StoryPage(
                                  storyMap: storyMaps[storyTitle]!,
                                  onExit: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.auto_stories,
                                color: Colors.white,
                                size: 28,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  storyTitle,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white70,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
