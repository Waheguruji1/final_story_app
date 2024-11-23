// story.dart
class StoryNode {
  final String text;
  final String animation;
  final List<Choice> choices;
  final String image;

  StoryNode({
    required this.text,
    required this.animation,
    required this.choices,
    required this.image,
  });
}

class Choice {
  final String text;
  final String nextNode;

  Choice({required this.text, required this.nextNode});
}

final Map<String, Map<String, StoryNode>> storyMaps = {
  'Forest Adventure': {
    'start': StoryNode(
      text: 'Have you ever wondered what lies beyond the night sky? 🤔',
      animation: 'stars_twinkling',
      image: 'night_sky',
      choices: [
        Choice(text: 'Yes', nextNode: 'curiosity'),
        Choice(text: 'No', nextNode: 'curiosity'),
      ],
    ),
    'curiosity': StoryNode(
      text:
      'When you gaze at the stars, do you imagine the vast expanse beyond our reach?',
      animation: 'zoom_to_stars',
      image: 'Space.jpg',
      choices: [
        Choice(text: 'Yes, it\'s mesmerizing!', nextNode: 'story_start'),
        Choice(text: 'Not really, it\'s just space.', nextNode: 'story_start'),
      ],
    ),
    'story_start': StoryNode(
      text:
      'Well, there\'s only one way to find out! Let\'s go on an adventure!',
      animation: 'door_opening',
      image: 'old_house',
      choices: [
        Choice(text: "Let's go!", nextNode: 'intro'),
      ],
    ),
    'intro': StoryNode(
      text:
      'You, Max, and Shaun stumble upon a game called "Cosmic Rift" in a dusty attic.',
      animation: 'dust_particles',
      image: 'game_box',
      choices: [
        Choice(text: 'Continue', nextNode: 'game_description'),
      ],
    ),
    'game_description': StoryNode(
      text:
      '"Cosmic Rift" - a mysterious board game from a forgotten era, hidden in Mistwoods.',
      animation: 'fade_to_past',
      image: 'old_attic',
      choices: [
        Choice(text: 'Continue', nextNode: 'inventor_mystery'),
      ],
    ),
    'inventor_mystery': StoryNode(
      text:
      'Rumor has it, its eccentric inventor vanished, leaving behind only this cryptic artifact.',
      animation: 'inventor_silhouette',
      image: 'old_photo',
      choices: [
        Choice(text: 'Continue', nextNode: 'game_board'),
      ],
    ),
    'game_board': StoryNode(
      text:
      'The board is polished copper and platinum, inlaid with shimmering constellations.',
      animation: 'constellations_glowing',
      image: 'game_board_close_up',
      choices: [
        Choice(text: 'Continue', nextNode: 'game_pieces'),
      ],
    ),
    'game_pieces': StoryNode(
      text:
      'Miniature spaceships serve as game pieces, each unique and intricately detailed.',
      animation: 'spaceship_spinning',
      image: 'game_pieces_detail',
      choices: [
        Choice(text: 'Continue', nextNode: 'game_legend'),
      ],
    ),
    'game_legend': StoryNode(
      text:
      'Legend says "Cosmic Rift" was a prototype for a new kind of interactive experience.',
      animation: 'portal_opening',
      image: 'swirling_galaxy',
      choices: [
        Choice(text: 'Continue', nextNode: 'game_start_prompt'),
      ],
    ),
    'game_start_prompt': StoryNode(
      text:
      'Ready to uncover the secrets beyond the horizon? Once you start, survival is key.',
      animation: 'game_board_glowing',
      image: 'game_ready',
      choices: [
        Choice(text: 'Start the Game!', nextNode: 'max_turn'),
      ],
    ),
    'max_turn': StoryNode(
      text:
      'Max takes the first turn, pushing the button. A random number appears - 2!',
      animation: 'dice_rolling',
      image: 'blue_airplane_moving',
      choices: [
        Choice(text: 'Continue', nextNode: 'card_appears'),
      ],
    ),
  },

  // Meteor Mayhem

  'Meteor Mayhem': {
    'start': StoryNode(
      text: 'A card emerges from the game...',
      animation: 'card_rising',
      image: 'card_back',
      choices: [
        Choice(text: 'Continue', nextNode: 'card_reveal'),
      ],
    ),
    'card_reveal': StoryNode(
      text:
      '"Survive the storm, conquer the chaos—Meteor Mayhem is just the beginning."',
      animation: 'card_flipping',
      image: 'meteor_card',
      choices: [
        Choice(text: 'Continue', nextNode: 'meteor_shower'),
      ],
    ),
    'meteor_shower': StoryNode(
      text:
      'The house shakes violently! Stars pierce through the roof. Plan your next move!',
      animation: 'house_shaking',
      image: 'meteors_falling',
      choices: [
        Choice(text: 'Run to the basement!', nextNode: 'basement_cover'),
        Choice(text: 'Head for the attic!', nextNode: 'attic_cover'),
        Choice(text: 'Escape the house!', nextNode: 'escape_attempt'),
      ],
    ),
    'escape_attempt': StoryNode(
      text:
      'You try to escape, but the meteors hit too fast! Take cover quickly!',
      animation: 'meteors_hitting_house',
      image: 'house_damage',
      choices: [
        Choice(text: 'Find cover!', nextNode: 'aftermath'),
      ],
    ),
    'basement_cover': StoryNode(
      text:
      'You dive into the basement for cover, the house groaning above you.',
      animation: 'running_downstairs',
      image: 'basement_shelter',
      choices: [
        Choice(text: 'Continue', nextNode: 'aftermath'),
      ],
    ),
    'attic_cover': StoryNode(
      text:
      'You scramble into the attic, hoping the roof holds. The noise is deafening!',
      animation: 'running_upstairs',
      image: 'attic_hiding',
      choices: [
        Choice(text: 'Continue', nextNode: 'aftermath'),
      ],
    ),
    'aftermath': StoryNode(
      text:
      'An eerie calm descends. You assess the damage, trying to grasp what just happened.',
      animation: 'dust_settling',
      image: 'house_after_meteors',
      choices: [
        Choice(text: 'Continue', nextNode: 'space_reveal'),
      ],
    ),
    'space_reveal': StoryNode(
      text:
      'Suddenly, a blinding light floods through the window. You cautiously peek outside...',
      animation: 'light_beam',
      image: 'house_floating_in_space',
      choices: [
        Choice(text: 'Step outside', nextNode: 'space_view'),
        Choice(text: 'Retreat in fear', nextNode: 'fearful_retreat'),
      ],
    ),
    'space_view': StoryNode(
      text:
      'Your house is floating in space! Stars, asteroids, and planets surround you. What do you do?',
      animation: 'stars_panning',
      image: 'panoramic_space_view',
      choices: [
        Choice(text: 'Rush back inside', nextNode: 'fearful_retreat'),
        Choice(text: 'Take a moment to marvel', nextNode: 'marvel_at_space'),
      ],
    ),
    'fearful_retreat': StoryNode(
      text:
      'Terrified, you rush back inside, sharing the news with Max and Shaun. What next?',
      animation: 'door_slamming',
      image: 'inside_house_looking_out',
      choices: [
        Choice(text: 'Search for answers', nextNode: 'search_for_clues'),
      ],
    ),
    'marvel_at_space': StoryNode(
      text:
      'You take a moment to appreciate the breathtaking, terrifying beauty of space. But danger lurks...',
      animation: 'slow_zoom_on_planet',
      image: 'planet_close_up',
      choices: [
        Choice(text: 'Head back inside', nextNode: 'search_for_clues'),
      ],
    ),
    'search_for_clues': StoryNode(
      text:
      'You search for clues. Max calls out, "There\'s something written on the game cover!"',
      animation: 'searching_books',
      image: 'game_box_close_up',
      choices: [
        Choice(text: 'Continue', nextNode: 'game_warning'),
      ],
    ),
    'game_warning': StoryNode(
      text:
      '"This game is for the fearless... Survival is the only choice." You understand now...',
      animation: 'text_appearing',
      image: 'game_cover_text',
      choices: [
        Choice(text: 'Continue', nextNode: 'your_turn'),
      ],
    ),
    'your_turn': StoryNode(
      text:
      'You\'ve traveled through space and time! Surviving the game is your only hope. It\'s your turn.',
      animation: 'your_character_closeup',
      image: 'your_character',
      choices: [
        Choice(text: 'Continue the game', nextNode: 'roll_dice'),
      ],
    ),
  },

// Malfunctioning Robot

  'MalfunctioningRobot': {
    'start': StoryNode(
      text:
      'You continue the game. The dial spins, your green spaceship lands on 5. A card appears!',
      animation: 'dice_rolling',
      image: 'green_spaceship_moving',
      choices: [
        Choice(text: 'Continue', nextNode: 'robot_card'),
      ],
    ),
    'robot_card': StoryNode(
      text: 'The card reads, "Robot Malfunction."',
      animation: 'card_flipping',
      image: 'robot_card',
      choices: [
        Choice(text: 'Continue', nextNode: 'robot_appears'),
      ],
    ),
    'robot_appears': StoryNode(
      text:
      '"What does it mean?" Shaun asks. Suddenly, a toy robot appears. "It\'s just a little robot..."',
      animation: 'toy_robot_appearing',
      image: 'toy_robot',
      choices: [
        Choice(text: 'Continue', nextNode: 'robot_grows'),
      ],
    ),
    'robot_grows': StoryNode(
      text:
      'The robot grows rapidly, transforming into a menacing machine, its eyes glowing red!',
      animation: 'robot_transforming',
      image: 'giant_robot',
      choices: [
        Choice(text: 'Continue', nextNode: 'robot_attacks'),
      ],
    ),
    'robot_attacks': StoryNode(
      text:
      '"It\'s malfunctioning!" Shaun yells as the robot charges. What\'s your next move?',
      animation: 'robot_charging',
      image: 'robot_attacking',
      choices: [
        Choice(
            text: 'Run down the corridor to the left',
            nextNode: 'narrow_escape'),
        Choice(
            text: 'Try to disable the robot using the control panel',
            nextNode: 'disable_attempt'),
      ],
    ),
    'narrow_escape': StoryNode(
      text:
      'Max, Alex, and Shaun sprint down the left corridor, hearts pounding as the robot barrels after them. The walls close in as the corridor narrows, leaving them with little room to maneuver. The sound of the robot’s heavy steps grows louder, and the trio realizes they’re running out of time.',
      animation: 'narrow_corridor_run',
      image: 'tight_space_escape',
      choices: [
        Choice(
            text: 'Dive into a side room and hide',
            nextNode: 'hide_from_robot'),
        Choice(
            text: 'Keep running and look for an exit', nextNode: 'find_exit'),
      ],
    ),
    'disable_attempt': StoryNode(
      text:
      'Shaun spots a control panel on the wall. "There! Maybe we can shut it down!" He rushes to the panel and starts frantically tapping on the controls, trying to override the robot’s programming. The robot slows down for a moment, its movements jerky and uncoordinated, but the panel sparks and the system starts to overload.',
      animation: 'control_panel_hack',
      image: 'control_panel_sparks',
      choices: [
        Choice(text: 'Abort the attempt and run', nextNode: 'narrow_escape'),
        Choice(
            text: 'Continue trying to disable the robot',
            nextNode: 'robot_disabled'),
      ],
    ),
    'hide_from_robot': StoryNode(
      text:
      'The trio dives into a small side room, slamming the door behind them. They hold their breath as the sound of the robot’s steps thunder past the door. It pauses, seemingly scanning the area, before continuing down the corridor. They’ve bought themselves a few precious moments, but the robot could return at any time.',
      animation: 'hiding_in_shadows',
      image: 'robot_outside_door',
      choices: [
        Choice(
            text: 'Sneak out and try to find another way',
            nextNode: 'find_exit'),
        Choice(
            text: 'Stay hidden and hope the robot leaves',
            nextNode: 'robot_returns'),
      ],
    ),
    'find_exit': StoryNode(
      text:
      'The trio bursts out of the narrow corridor and into a larger chamber. They spot an exit at the far end, but the robot is hot on their heels, smashing through obstacles as it pursues them. They know this might be their only chance to escape.',
      animation: 'final_dash_for_exit',
      image: 'exit_in_sight',
      choices: [
        Choice(
            text: 'Make a final dash for the exit', nextNode: 'escape_attempt'),
        Choice(text: 'Set a trap for the robot', nextNode: 'set_trap'),
      ],
    ),
    'robot_disabled': StoryNode(
      text:
      'Shaun’s fingers fly over the controls as sparks fly from the panel. Just as the robot closes in, its movements stutter and then it freezes, powered down by Shaun’s last-second hack. The trio breathes a sigh of relief, but they know the danger isn’t over yet.',
      animation: 'robot_shutting_down',
      image: 'robot_frozen',
      choices: [
        Choice(
            text: 'Search the area for more threats', nextNode: 'search_area'),
        Choice(
            text: 'Move on before something else happens', nextNode: 'move_on'),
      ],
    ),
    'set_trap': StoryNode(
      text:
      'Max and Alex quickly grab some materials scattered around the chamber and set up a makeshift trap near the exit. As the robot charges forward, it triggers the trap, causing a series of explosions that momentarily stop it in its tracks.',
      animation: 'robot_trapped',
      image: 'robot_trap_explosions',
      choices: [
        Choice(
            text: 'Escape while the robot is stunned',
            nextNode: 'escape_attempt'),
        Choice(
            text: 'Use the distraction to disable the robot',
            nextNode: 'disarm_robot'),
      ],
    ),
    'escape_attempt': StoryNode(
      text:
      'The trio sees an opportunity to escape while the robot is temporarily incapacitated. They sprint toward the exit, but just as they reach the door, it slams shut, trapping them inside with the robot.',
      animation: 'door_slams_shut',
      image: 'trapped_inside',
      choices: [
        Choice(text: 'Look for another exit', nextNode: 'find_secondary_exit'),
        Choice(text: 'Try to force the door open', nextNode: 'force_door'),
      ],
    ),
    'search_area': StoryNode(
      text:
      'While the robot remains frozen, the trio quickly scans the area for any other potential threats or useful items. They find a strange device that might help them, but activating it could be risky.',
      animation: 'scanning_area',
      image: 'finding_device',
      choices: [
        Choice(text: 'Activate the device', nextNode: 'activate_device'),
        Choice(text: 'Leave the device and move on', nextNode: 'move_on'),
      ],
    ),
    'find_secondary_exit': StoryNode(
      text:
      'Max, Alex, and Shaun frantically search the room for another way out. They find a small hatch hidden behind a pile of debris. It looks like it could be an escape route, but it’s a tight fit.',
      animation: 'finding_hatch',
      image: 'small_hatch',
      choices: [
        Choice(
            text: 'Squeeze through the hatch',
            nextNode: 'squeeze_through_hatch'),
        Choice(text: 'Look for another option', nextNode: 'keep_searching'),
      ],
    ),
    'force_door': StoryNode(
      text:
      'Using all their strength, the trio tries to pry the door open. The robot starts to stir, and they know they only have seconds before it fully reactivates. The door begins to budge, but it’s slow going.',
      animation: 'forcing_door',
      image: 'door_creaking_open',
      choices: [
        Choice(text: 'Keep forcing the door', nextNode: 'door_opens'),
        Choice(
            text: 'Abandon the door and find another way',
            nextNode: 'find_secondary_exit'),
      ],
    ),
    'disarm_robot': StoryNode(
      text:
      'With the robot still stunned, Shaun attempts to disarm it completely. He accesses a control panel on its back, but it’s a complex system, and one wrong move could reawaken the machine.',
      animation: 'disarming_robot',
      image: 'robot_control_panel',
      choices: [
        Choice(
            text: 'Take the risk and disable the robot',
            nextNode: 'robot_disabled_final'),
        Choice(text: 'Abort the attempt and run', nextNode: 'escape_attempt'),
      ],
    ),
    'activate_device': StoryNode(
      text:
      'The device hums to life, emitting a strange light that envelops the room. Suddenly, time seems to slow down, and the robot’s movements become sluggish. However, the device’s energy is draining fast.',
      animation: 'device_activated',
      image: 'time_slowing_down',
      choices: [
        Choice(
            text: 'Use the slowed time to escape', nextNode: 'escape_attempt'),
        Choice(
            text: 'Try to use the device to stop the robot',
            nextNode: 'stop_robot_with_device'),
      ],
    ),
    'door_opens': StoryNode(
      text:
      'With a final heave, the door bursts open, just as the robot starts to regain full functionality. The trio quickly dives through the opening, slamming the door shut behind them, cutting off the robot’s pursuit.',
      animation: 'door_bursts_open',
      image: 'escaping_robot',
      choices: [
        Choice(
            text: 'Barricade the door to buy more time',
            nextNode: 'barricade_door'),
        Choice(text: 'Run to the next room', nextNode: 'next_room'),
      ],
    ),
    'squeeze_through_hatch': StoryNode(
      text:
      'One by one, the trio squeezes through the narrow hatch. It’s a tight fit, but they manage to slip through just as the robot starts smashing its way through the debris. They land in a dark, unfamiliar room.',
      animation: 'hatch_escape',
      image: 'dark_room',
      choices: [
        Choice(
            text: 'Explore the new room for exits',
            nextNode: 'explore_dark_room'),
        Choice(
            text: 'Try to block the hatch from the other side',
            nextNode: 'block_hatch'),
      ],
    ),
    'robot_malfunction': StoryNode(
      text:
      'As the trio navigates the labyrinthine corridors of the house, a sudden jolt shakes the structure. The lights flicker, and an ominous rumble echoes through the walls. Suddenly, a massive robot emerges from the shadows, its eyes glowing red. It’s a deadly machine, towering over them like a mechanical giant. "It’s malfunctioning!" Shaun yells as the robot locks onto them and starts charging.',
      animation: 'robot_emergence_and_chase',
      image: 'deadly_robot_chase',
      choices: [
        Choice(
            text: 'Run down the corridor to the left',
            nextNode: 'narrow_escape'),
        Choice(
            text: 'Try to disable the robot using the control panel',
            nextNode: 'disable_attempt'),
        Choice(text: 'Lure the robot into a trap', nextNode: 'lure_into_trap'),
        Choice(text: 'Distract the robot and split up', nextNode: 'split_up'),
      ],
    ),
    'lure_into_trap': StoryNode(
      text:
      'Thinking quickly, Max shouts, "We need to trap it!" The trio rushes through a series of corridors, leading the robot towards an unstable section of the house. As the robot charges in, Shaun triggers a collapse, hoping to trap it beneath the rubble.',
      animation: 'trap_robot_in_rubble',
      image: 'robot_trapped',
      choices: [
        Choice(text: 'Check if the robot is disabled', nextNode: 'check_robot'),
        Choice(
            text: 'Escape before the house collapses further',
            nextNode: 'escape_collapse'),
      ],
    ),
    'split_up': StoryNode(
      text:
      'Realizing they need to confuse the robot, Alex shouts, "We should split up!" Max, Alex, and Shaun each take a different corridor, hoping to divide the robot’s attention. The robot hesitates for a moment before selecting a target.',
      animation: 'split_up_and_run',
      image: 'split_decision',
      choices: [
        Choice(text: 'Max leads the robot away', nextNode: 'max_leads_away'),
        Choice(
            text: 'Shaun lures the robot into a trap',
            nextNode: 'lure_into_trap'),
        Choice(
            text: 'Alex tries to double back and help the others',
            nextNode: 'double_back'),
      ],
    ),
    'throw_object': StoryNode(
      text:
      'In a desperate attempt to slow the robot down, Max grabs a heavy object and hurls it at the robot. The object strikes the robot’s leg, causing it to stumble, but it quickly regains balance and resumes the chase with renewed aggression.',
      animation: 'robot_stumbles',
      image: 'robot_stumbling',
      choices: [
        Choice(
            text: 'Use the brief delay to find an exit', nextNode: 'find_exit'),
        Choice(
            text: 'Try to disarm the robot while it’s off balance',
            nextNode: 'disarm_robot'),
      ],
    ),
    'robot_turns': StoryNode(
      text:
      'Shaun’s hands move rapidly over the control panel as he attempts to rewrite the robot’s programming. Suddenly, the robot’s eyes flicker from red to blue, and it turns to face the opposite direction, ready to fight on their side.',
      animation: 'robot_turns_to_ally',
      image: 'robot_ally',
      choices: [
        Choice(
            text: 'Use the robot to fight off other threats',
            nextNode: 'robot_ally_fight'),
        Choice(
            text: 'Disable the robot permanently to avoid risks',
            nextNode: 'disable_robot_final'),
      ],
    ),
    'escape_collapse': StoryNode(
      text:
      'As the walls around them start to crumble, the trio makes a mad dash to escape the collapsing section of the house. The ground shakes beneath their feet, and debris falls from the ceiling as they race against time.',
      animation: 'escape_collapse',
      image: 'house_collapse',
      choices: [
        Choice(text: 'Find a safe place to hide', nextNode: 'find_safe_place'),
        Choice(
            text: 'Keep running towards the main exit', nextNode: 'find_exit'),
      ],
    ),
    'check_robot': StoryNode(
      text:
      'The trio cautiously approaches the rubble to see if the robot is truly disabled. The silence is eerie, but as they draw near, the robot’s eyes suddenly light up, and it starts to stir, its systems slowly coming back online.',
      animation: 'robot_reactivating',
      image: 'robot_rebooting',
      choices: [
        Choice(text: 'Run before it fully reactivates', nextNode: 'find_exit'),
        Choice(
            text: 'Try to shut it down again', nextNode: 'disable_robot_final'),
      ],
    ),
    'robot_ally_fight': StoryNode(
      text:
      'With the robot now on their side, the trio directs it to confront other dangers lurking in the house. The robot smashes through obstacles and defeats enemies, clearing a path for them to continue their journey.',
      animation: 'robot_fights_enemies',
      image: 'robot_clearing_path',
      choices: [
        Choice(
            text: 'Continue using the robot as an ally',
            nextNode: 'ally_robot_support'),
        Choice(
            text: 'Disable the robot now that the path is clear',
            nextNode: 'disable_robot_final'),
      ],
    ),
    'disable_robot_final': StoryNode(
      text:
      'Realizing that the robot poses too much of a risk, even as an ally, Shaun decides to shut it down for good. With a final command at the control panel, the robot powers down completely, its eyes fading to darkness.',
      animation: 'robot_final_shutdown',
      image: 'robot_shutdown',
      choices: [
        Choice(text: 'Move on and explore the next area', nextNode: 'move_on'),
        Choice(
            text: 'Search the area for useful items', nextNode: 'search_area'),
      ],
    ),
  },

  // Nebula Fog

  'NebulaFogCard': {
    'start': StoryNode(
      text:
      'Shaun pushes the Button . the no. rolls down to 5 . The game reacts instantly, and a card floats up. Max grabs it, eyes narrowing. He reads it aloud, "Nebula Fog." The room dims, shadows lengthen. The card’s warning chills your spine: "Beware the Nebula Fog... it reveals what’s hidden and conceals what’s true. Find the light before the darkness finds you."',
      animation: 'CardAppearance',
      image: 'nebula_fog_card.jpg',
      choices: [
        Choice(
            text: 'Get ready for the challenge',
            nextNode: 'NebulaFogChallenge'),
        Choice(
            text: 'Ask Shaun about the message',
            nextNode: 'DiscussCardWithShaun'),
      ],
    ),
    'DiscussCardWithShaun': StoryNode(
      text:
      'You turn to Shaun, questioning him about the cryptic message. Shaun looks worried, "It seems we need to find a light source before the fog overtakes us. We should be cautious and stay together." The fog starts creeping in as Max finishes speaking.',
      animation: 'DiscussCard',
      image: 'Shaun_worried.jpg',
      choices: [
        Choice(
            text: 'Get ready for the challenge',
            nextNode: 'NebulaFogChallenge'),
        Choice(
            text: 'Search for light immediately', nextNode: 'SearchLightNode'),
      ],
    ),
    'NebulaFogChallenge': StoryNode(
      text:
      'As soon as Shaun finishes reading the card, the house shudders. A thick, cold fog seeps in, surrounding you. Vision blurs, and the outside world vanishes. The fog pulses, almost alive, wrapping tighter around the three of you. You hear Shaun’s nervous whisper, "What now?" The card’s voice lingers in your mind: "Find the light before the darkness finds you."',
      animation: 'NebulaFogRising',
      image: 'nebula_fog.jpg',
      choices: [
        Choice(text: 'Search for light', nextNode: 'SearchLightNode'),
        Choice(text: 'Stay still and watch', nextNode: 'ObserveFogNode'),
        Choice(
            text: 'Try to move through the fog',
            nextNode: 'MoveThroughFogNode'),
      ],
    ),
    'SearchLightNode': StoryNode(
      text:
      'You push forward, eyes straining in the dense fog. Suddenly, a faint glow catches your eye. A flicker of hope. You signal to Max and Shaun. Moving closer, you see it—a glowing orb embedded in the wall. But as you reach out, the fog swirls, the light starts to fade...',
      animation: 'LightFlicker',
      image: 'glowing_orb.jpg',
      choices: [
        Choice(text: 'Touch the orb quickly', nextNode: 'TouchOrbNode'),
        Choice(text: 'Step back cautiously', nextNode: 'StepBackNode'),
        Choice(
            text: 'Call Max and Shaun closer', nextNode: 'CallTeamCloserNode'),
      ],
    ),
    'TouchOrbNode': StoryNode(
      text:
      'You leap forward, hand outstretched. The moment your fingers brush the orb, a jolt of warmth spreads through you. The fog recoils, but the light is dimming fast. "What did you do?" Max shouts, panic in his voice.',
      animation: 'OrbTouch',
      image: 'glowing_orb.jpg',
      choices: [
        Choice(text: 'Hold the orb tighter', nextNode: 'HoldOrbNode'),
        Choice(text: 'Let go immediately', nextNode: 'LetGoOrbNode'),
        Choice(text: 'Tell Max to grab it too', nextNode: 'MaxGrabOrbNode'),
      ],
    ),
    'StepBackNode': StoryNode(
      text:
      'You take a step back, the fog swirling around you. The orb’s light dims further, and the mist seems to thicken. Shaun looks at you with concern, "We need to do something fast!"',
      animation: 'FogThickens',
      image: 'nebula_fog.jpg',
      choices: [
        Choice(
            text: 'Move closer to the orb again', nextNode: 'SearchLightNode'),
        Choice(
            text: 'Look for another light source', nextNode: 'SearchLightNode'),
        Choice(text: 'Try to calm Shaun and Max', nextNode: 'CalmTeamNode'),
      ],
    ),
    'CallTeamCloserNode': StoryNode(
      text:
      'You call Max and Shaun over. Max approaches cautiously, grabbing the orb just as it begins to fade. The light stabilizes, and the fog recedes slightly. "I think... it’s working," Max says, his voice strained.',
      animation: 'MaxGrab',
      image: 'max_holding_orb.jpg',
      choices: [
        Choice(text: 'Help Max hold the orb', nextNode: 'HelpMaxNode'),
        Choice(text: 'Focus on finding an exit', nextNode: 'FocusExitNode'),
        Choice(
            text: 'Tell Shaun to search the room', nextNode: 'ShaunSearchNode'),
      ],
    ),
    'HelpMaxNode': StoryNode(
      text:
      'You and Max work together, holding the orb firmly. The fog continues to thin out, revealing a faintly illuminated door. "We’re almost there," Max says, determination in his voice.',
      animation: 'TeamWork',
      image: 'orb_and_door.jpg',
      choices: [
        Choice(text: 'Head towards the door', nextNode: 'DoorExitNode'),
        Choice(
            text: 'Inspect the area around the door',
            nextNode: 'InspectDoorAreaNode'),
      ],
    ),
    'FocusExitNode': StoryNode(
      text:
      'You focus all your attention on finding a way out. The orb’s light helps to push the fog back just enough. Then you see it—a door, half-hidden in the mist. "There!" you shout, pointing it out. The three of you make a run for it. The door swings open, and you burst through. The fog dissipates behind you.',
      animation: 'DoorExit',
      image: 'hidden_door.jpg',
      choices: [
        Choice(text: 'Close the door quickly', nextNode: 'CloseDoorNode'),
        Choice(
            text: 'Check your surroundings', nextNode: 'CheckSurroundingsNode'),
      ],
    ),
    'ShaunSearchNode': StoryNode(
      text:
      'Shaun begins searching the room frantically. Amidst the fog, he finds a switch that illuminates a small lamp. The light pushes back the fog just enough to reveal the exit door. "I found it!" Shaun shouts.',
      animation: 'ShaunSearch',
      image: 'shaun_searching.jpg',
      choices: [
        Choice(text: 'Head towards the door', nextNode: 'DoorExitNode'),
        Choice(text: 'Inspect the lamp further', nextNode: 'InspectLampNode'),
      ],
    ),
    'InspectLampNode': StoryNode(
      text:
      'You examine the lamp Shaun found. It’s an old, dusty piece, but it emits a steady, bright light. The fog seems to shrink away from it. You decide to use it as a guide.',
      animation: 'LampInspection',
      image: 'hand_lamp.jpg',
      choices: [
        Choice(text: 'Head towards the door', nextNode: 'DoorExitNode'),
        Choice(
            text: 'Investigate the room further',
            nextNode: 'InvestigateRoomNode'),
      ],
    ),
    'MoveForwardNode': StoryNode(
      text:
      'You push forward despite the resistance. The fog continues to resist but starts to thin out slightly. You catch sight of a faint glow ahead. "Almost there," you think.',
      animation: 'FogResistance',
      image: 'faint_glow.jpg',
      choices: [
        Choice(text: 'Continue moving forward', nextNode: 'FindLightNode'),
        Choice(
            text: 'Retreat and try a different approach',
            nextNode: 'RetreatNode'),
      ],
    ),
    'RetreatNode': StoryNode(
      text:
      'You decide to retreat, regrouping with Max and Shaun. The fog remains dense, but the path you previously saw is still visible. "We need to be careful this time," Max suggests.',
      animation: 'Retreat',
      image: 'retreat.jpg',
      choices: [
        Choice(
            text: 'Follow the path cautiously', nextNode: 'CautiousPathNode'),
        Choice(text: 'Try another approach', nextNode: 'SearchLightNode'),
      ],
    ),
    'FindLightNode': StoryNode(
      text:
      'You continue forward, the fog thinning just enough to reveal a large, glowing crystal embedded in the wall. The light pulses gently, casting eerie shadows on the walls. You feel a sense of relief as the fog begins to dissipate.',
      animation: 'CrystalGlow',
      image: 'glowing_crystal.jpg',
      choices: [
        Choice(text: 'Take the crystal', nextNode: 'TakeCrystalNode'),
        Choice(
            text: 'Continue searching for another way',
            nextNode: 'SearchLightNode'),
      ],
    ),
    'TakeCrystalNode': StoryNode(
      text:
      'You reach out and take the crystal. Its light intensifies, pushing back the fog completely. The room is now clear, and you can see a door at the far end. "We did it!" Max exclaims.',
      animation: 'CrystalTaken',
      image: 'crystal_taken.jpg',
      choices: [
        Choice(text: 'Head towards the door', nextNode: 'DoorExitNode'),
        Choice(
            text: 'Examine the crystal further',
            nextNode: 'ExamineCrystalNode'),
      ],
    ),
    'ExamineCrystalNode': StoryNode(
      text:
      'You take a closer look at the crystal. It’s glowing with a soft, reassuring light. As you hold it, you notice strange symbols etched into its surface. The symbols seem to shimmer and pulse in rhythm with the crystal’s glow. The fog has completely vanished.',
      animation: 'CrystalSymbols',
      image: 'crystal_symbols.jpg',
      choices: [
        Choice(text: 'Keep the crystal', nextNode: 'KeepCrystalNode'),
        Choice(
            text: 'Put the crystal down and head to the door',
            nextNode: 'DoorExitNode'),
      ],
    ),
    'KeepCrystalNode': StoryNode(
      text:
      'You decide to keep the crystal as a reminder of the challenge you faced. It continues to emit a soft light as you head towards the door. The light seems to guide you, making your way forward clearer and more reassuring.',
      animation: 'CrystalGuidance',
      image: 'crystal_guidance.jpg',
      choices: [
        Choice(text: 'Open the door', nextNode: 'DoorExitNode'),
        Choice(text: 'Inspect the room further', nextNode: 'InspectRoomNode'),
      ],
    ),
    'InspectRoomNode': StoryNode(
      text:
      'You take a moment to examine the room. The fog is gone, revealing strange artifacts and old furniture. There’s a sense of history here, but the door remains your primary focus. The crystal’s light makes the room feel less ominous.',
      animation: 'RoomInspection',
      image: 'room_inspection.jpg',
      choices: [
        Choice(text: 'Open the door', nextNode: 'DoorExitNode'),
        Choice(
            text: 'Search for additional items', nextNode: 'SearchItemsNode'),
      ],
    ),
    'SearchItemsNode': StoryNode(
      text:
      'You search through the room, finding old books and relics. Among them, you discover a small chest. Opening it reveals old maps and notes that might be useful later. The door remains your primary goal.',
      animation: 'ChestOpen',
      image: 'chest.jpg',
      choices: [
        Choice(text: 'Open the door', nextNode: 'DoorExitNode'),
        Choice(text: 'Study the maps and notes', nextNode: 'StudyMapsNode'),
      ],
    ),
    'StudyMapsNode': StoryNode(
      text:
      'You take some time to study the maps and notes. They depict various locations and contain cryptic notes. Though interesting, they don’t provide immediate help. The door remains the best way forward.',
      animation: 'MapsStudy',
      image: 'maps_study.jpg',
      choices: [
        Choice(text: 'Open the door', nextNode: 'DoorExitNode'),
        Choice(
            text: 'Continue searching the room', nextNode: 'InspectRoomNode1'),
      ],
    ),
    'DoorExitNode': StoryNode(
      text:
      'You approach the door, your heart pounding with anticipation. As you push it open, a wave of relief washes over you. The room beyond is calm and well-lit, a stark contrast to the oppressive fog. You and your team step through, leaving the Nebula Fog challenge behind.',
      animation: 'DoorOpen',
      image: 'door_open.jpg',
      choices: [
        Choice(
            text: 'Catch your breath and look around',
            nextNode: 'CatchBreathNode'),
        Choice(text: 'Check on Max and Shaun', nextNode: 'CheckOnTeamNode'),
      ],
    ),
    'InspectRoomNode1': StoryNode(
      text:
      'The room you’ve entered is calm and safe. You take a moment to inspect the new environment. The space is spacious and welcoming, a stark contrast to the oppressive fog you just escaped.',
      animation: 'NewRoomInspection',
      image: 'new_room.jpg',
      choices: [
        Choice(text: 'Take a break and rest', nextNode: 'TakeBreakNode'),
        Choice(
            text: 'Look for clues in the room', nextNode: 'LookForCluesNode'),
      ],
    ),
    'LookForCluesNode': StoryNode(
      text:
      'You search the new room for any clues or hints. It’s a well-organized space with several pieces of old furniture and artifacts. There’s nothing immediately alarming, but you do find a journal with notes about previous adventurers.',
      animation: 'JournalFind',
      image: 'journal.jpg',
      choices: [
        Choice(text: 'Read the journal', nextNode: 'ReadJournalNode'),
        Choice(
            text: 'Move on and explore further',
            nextNode: 'ExploreFurtherNode'),
      ],
    ),
    'ReadJournalNode': StoryNode(
      text:
      'You open the journal and begin reading. It contains accounts of past adventurers who faced similar challenges. The entries provide insights into overcoming trials and navigating through mysterious situations. The journal may come in handy later.',
      animation: 'JournalReading',
      image: 'journal.jpg',
      choices: [
        Choice(text: 'Take the journal with you', nextNode: 'TakeJournalNode'),
        Choice(text: 'Leave it and move on', nextNode: 'ExploreFurtherNode'),
      ],
    ),
    'TakeJournalNode': StoryNode(
      text:
      'You decide to take the journal with you. It might prove useful in future challenges. With the room’s calm and the challenge of Nebula Fog behind you, you and your team feel a sense of accomplishment.',
      animation: 'JournalTaken',
      image: 'journal_taken.jpg',
      choices: [
        Choice(text: 'Take a break and rest', nextNode: 'TakeBreakNode'),
        Choice(text: 'Continue exploring', nextNode: 'ExploreFurtherNode'),
      ],
    ),
    'ExploreFurtherNode': StoryNode(
      text:
      'You and your team continue exploring the new room. It’s peaceful, and you feel a sense of relief. The challenge of Nebula Fog has been conquered, and the path ahead seems promising.',
      animation: 'ExploreRoom',
      image: 'explore_room.jpg',
      choices: [
        Choice(text: 'Take a break and rest', nextNode: 'TakeBreakNode'),
        Choice(
            text: 'Prepare for the next challenge',
            nextNode: 'PrepareNextChallengeNode'),
      ],
    ),
    'PrepareNextChallengeNode': StoryNode(
      text:
      'With the Nebula Fog challenge behind you, you take a moment to prepare for whatever comes next. The room is quiet, and the path ahead is uncertain, but you and your team are ready for the adventures that lie ahead.',
      animation: 'Preparation',
      image: 'preparation.jpg',
      choices: [
        Choice(
            text: 'Move forward cautiously',
            nextNode: 'MoveForwardCautiouslyNode'),
        Choice(
            text: 'Discuss the next steps with the team',
            nextNode: 'DiscussNextStepsNode'),
      ],
    ),
    'MoveForwardCautiouslyNode': StoryNode(
      text:
      'You decide to move forward cautiously, keeping an eye out for any new challenges or clues. The room ahead seems calm, but you stay vigilant, ready for whatever might come next.',
      animation: 'MovingForward',
      image: 'moving_forward.jpg',
      choices: [
        Choice(text: 'Continue exploring', nextNode: 'ExploreRoomNode'),
        Choice(
            text: 'Prepare for the next challenge',
            nextNode: 'PrepareNextChallengeNode'),
      ],
    ),
    'DiscussNextStepsNode': StoryNode(
      text:
      'You and your team discuss the next steps, analyzing what you’ve learned from the Nebula Fog challenge. You feel more prepared for future obstacles, with a clear sense of direction moving forward.',
      animation: 'TeamDiscussion',
      image: 'team_discussion.jpg',
      choices: [
        Choice(text: 'Continue exploring', nextNode: 'ExploreRoomNode'),
        Choice(
            text: 'Prepare for the next challenge',
            nextNode: 'PrepareNextChallengeNode'),
      ],
    ),
    'TakeBreakNode': StoryNode(
      text:
      'You decide to take a well-deserved break. The room is calm, and you take the time to rest and regroup. The challenges of Nebula Fog have been overcome, and you feel rejuvenated for whatever comes next.',
      animation: 'TakingBreak',
      image: 'taking_break.jpg',
      choices: [
        Choice(text: 'Continue exploring', nextNode: 'ExploreRoomNode'),
        Choice(
            text: 'Prepare for the next challenge',
            nextNode: 'PrepareNextChallengeNode'),
      ],
    ),
    'EndNebulaFogChallenge': StoryNode(
      text:
      'With the Nebula Fog challenge successfully completed, you and your team take a moment to reflect on the experience. The room you’ve entered feels like a new beginning, and you’re ready to face the next adventure with renewed confidence and determination.',
      animation: 'ChallengeCompleted',
      image: 'challenge_completed.jpg',
      choices: [
        Choice(text: 'Start the next challenge', nextNode: 'NextChallengeNode'),
        Choice(
            text: 'Review the journey so far', nextNode: 'ReviewJourneyNode'),
      ],
    ),
    'NextChallengeNode': StoryNode(
      text:
      'You and your team brace yourselves for the next challenge. The journey ahead is unknown, but with your recent success, you feel ready to tackle whatever comes next.',
      animation: 'CardAppearance',
      image: 'Cursed-gem.jpg',
      choices: [
        Choice(text: '', nextNode: ''),
      ],
    ),
  },

// Cursed Gem

  'CursedGem': {
    'start': StoryNode(
      text:
      'It is now Max turn . Max pushes the Button . the no. rolls down to 7 . Max ship starts to move . The game reacts instantly.',
      animation: 'CardAppearance',
      image: 'Cursed-gem.jpg',
      choices: [
        Choice(
            text: 'Get ready for the challenge',
            nextNode: 'CursedSpaceGemStart'),
      ],
    ),
    'CursedSpaceGemStart': StoryNode(
      text:
      'The card reads "Cursed Space Gem." Suddenly, a strange, glowing gem materializes in the center of the room, emitting a pulsating light. You, Max, and Shaun feel an immediate sense of unease as the gem begins to hum with energy. Without warning, the floor tilts slightly, and you realize the gravity in the house is shifting. Panic rises as you and your friends struggle to keep your footing, aware that the gem is the source of this terrifying phenomenon.',
      animation: 'gem_appearance_with_gravity_shift',
      image: 'cracked_gem.jpg',
      choices: [
        Choice(
            text: 'Try to grab onto something sturdy.',
            nextNode: 'GrabOntoSomething'),
        Choice(
            text: 'Stay still and hope the gravity stabilizes.',
            nextNode: 'WaitForStability'),
        Choice(
            text: 'Warn Max and Shaun to be careful.',
            nextNode: 'WarnFriendsAboutGravity'),
      ],
    ),
    'GrabOntoSomething': StoryNode(
      text:
      'You quickly reach out and grab the edge of a nearby table as the floor tilts even more. The gravity inside the house continues to fluctuate, making it feel as though the entire room could flip at any moment. Max and Shaun are also trying to steady themselves, their faces reflecting the same fear you feel. The gem pulses with a malevolent energy, and you can sense that it’s responsible for this dangerous situation.',
      animation: 'grabbing_table',
      image: 'gravity-reversal.jpg',
      choices: [
        Choice(
            text: 'Hold on tightly and wait for the gravity to stabilize.',
            nextNode: 'HoldOnTightly'),
        Choice(
            text: 'Attempt to move closer to the gem.',
            nextNode: 'MoveCloserToGem'),
        Choice(
            text: 'Shout to Max and Shaun to find something to hold onto.',
            nextNode: 'TellFriendsToHoldOn'),
        Choice(
            text: 'Try to cover the gem with something.', nextNode: 'CoverGem'),
      ],
    ),
    'WaitForStability': StoryNode(
      text:
      'You freeze in place, hoping the gravity will stabilize on its own. The gem’s light pulses rhythmically, and for a brief moment, it seems like the floor is leveling out. But then, without warning, the gravity reverses, sending you and your friends crashing toward the ceiling. The sudden shift is disorienting, and you’re left scrambling to find a way to stay safe in this topsy-turvy situation.',
      animation: 'gravity',
      image: 'gravity-reversal.jpg',
      choices: [
        Choice(
            text: 'Try to grab onto something on the ceiling.',
            nextNode: 'GrabOnCeiling'),
        Choice(
            text: 'Look for a way to reach the gem.', nextNode: 'ReachForGem'),
        Choice(
            text: 'Call out for Max and Shaun to find help.',
            nextNode: 'CallForHelp'),
      ],
    ),
    'WarnFriendsAboutGravity': StoryNode(
      text:
      'You shout a warning to Max and Shaun, telling them to be careful as the gravity continues to fluctuate. They nod, trying to steady themselves as the room tilts and shifts. The gem’s glow intensifies, and you can feel the force of gravity becoming more erratic. The house seems to be at the mercy of the gem’s power.',
      animation: 'warning_friends_gravity',
      image: 'friends_struggling_with_gravity',
      choices: [
        Choice(
            text: 'Look for something to use as an anchor.',
            nextNode: 'FindAnchor'),
        Choice(text: 'Suggest trying to move the gem.', nextNode: 'MoveGem'),
        Choice(
            text: 'Try to block the gem’s light.', nextNode: 'BlockGemLight'),
      ],
    ),
    'HoldOnTightly': StoryNode(
      text:
      'You hold onto the table as tightly as you can, your knuckles turning white from the strain. The gravity continues to shift wildly, making it nearly impossible to predict what will happen next. Max and Shaun are doing the same, gripping whatever they can to avoid being thrown around the room. The gem’s power is overwhelming, and you realize that you need to do something before the entire house is torn apart.',
      animation: 'holding_on_tightly',
      image: 'holding_on_tightly_to_furniture',
      choices: [
        Choice(
            text: 'Try to inch closer to the gem despite the gravity.',
            nextNode: 'InchCloserToGem'),
        Choice(
            text: 'Stay where you are and hope the gravity stabilizes.',
            nextNode: 'StayPut'),
        Choice(
            text: 'Try to use the table to block the gem’s light.',
            nextNode: 'BlockGemLight'),
      ],
    ),
    'MoveCloserToGem': StoryNode(
      text:
      'Despite the unpredictable gravity, you decide to move closer to the gem. Each step is a struggle as the floor tilts and shifts beneath you. Max and Shaun watch anxiously as you approach the glowing gem. The whispers in your mind grow louder, warning you of the dangers ahead, but you push forward, determined to end this madness.',
      animation: 'moving_closer_to_gem',
      image: 'protagonist_moving_closer_to_gem',
      choices: [
        Choice(
            text: 'Reach out and try to touch the gem.', nextNode: 'TouchGem'),
        Choice(
            text: 'Stop just short of the gem and observe it.',
            nextNode: 'ObserveGem'),
        Choice(text: 'Try to push the gem away.', nextNode: 'PushGemAway'),
      ],
    ),
    'TellFriendsToHoldOn': StoryNode(
      text:
      'You yell at Max and Shaun to find something to hold onto. They quickly grab onto whatever they can as the gravity reverses again, sending everything flying toward the ceiling. The room spins wildly, and the gem’s glow pulses with an ominous energy. You can feel the strain in your arms as you hold on for dear life, unsure of how long you can keep this up.',
      animation: 'telling_friends_to_hold_on',
      image: 'friends_holding_on_as_gravity_reverses',
      choices: [
        Choice(
            text: 'Try to pull yourself toward the gem.',
            nextNode: 'PullTowardGem'),
        Choice(
            text: 'Suggest to Max and Shaun to try and knock the gem over.',
            nextNode: 'KnockOverGem'),
        Choice(
            text: 'Try to grab anything that might help you reach the gem.',
            nextNode: 'GrabHelp'),
      ],
    ),
    'GrabOnCeiling': StoryNode(
      text:
      'You manage to grab onto a ceiling beam as the gravity shifts again, holding on as tightly as you can. Max and Shaun are struggling to do the same, but the gem’s power is relentless. The room spins around you, and you know you can’t keep this up for long. You need to figure out a way to stop the gem’s influence before it’s too late.',
      animation: 'grabbing_ceiling_beam',
      image: 'holding_onto_ceiling_beam',
      choices: [
        Choice(
            text: 'Try to swing toward the gem.', nextNode: 'SwingTowardGem'),
        Choice(
            text:
            'Call out to Max and Shaun to find a way to neutralize the gem.',
            nextNode: 'NeutralizeGem'),
        Choice(
            text: 'Search for anything to help you with the gem.',
            nextNode: 'SearchForHelp'),
      ],
    ),
    'ReachForGem': StoryNode(
      text:
      'You reach for the gem, but just as your fingers are about to touch it, the gravity shifts again, pulling you back toward the ceiling. The gem seems to be toying with you, using its power to keep you away. You’re left hanging precariously in mid-air, unsure of what to do next.',
      animation: 'reaching_for_gem',
      image: 'protagonist_reaching_for_gem',
      choices: [
        Choice(
            text: 'Try again to reach the gem.', nextNode: 'TryAgainReachGem'),
        Choice(
            text: 'Look for something to throw at the gem.',
            nextNode: 'ThrowAtGem'),
        Choice(
            text: 'Wait for the gravity to change again before attempting.',
            nextNode: 'WaitAndTry'),
      ],
    ),
    'FindAnchor': StoryNode(
      text:
      'You quickly look around for something to use as an anchor. There’s an old, heavy bookshelf nearby that might be sturdy enough to hold you down. You call out to Max and Shaun, and together you drag the bookshelf toward the center of the room, hoping it will keep you grounded as the gravity continues to shift.',
      animation: 'finding_anchor',
      image: 'protagonists_using_bookshelf_as_anchor',
      choices: [
        Choice(
            text: 'Use the bookshelf to stabilize yourselves.',
            nextNode: 'UseBookshelf'),
        Choice(
            text: 'Decide to push the bookshelf toward the gem.',
            nextNode: 'PushBookshelfToGem'),
        Choice(
            text: 'Search for another way to stabilize.',
            nextNode: 'SearchForStabilizer'),
      ],
    ),
    'MoveGem': StoryNode(
      text:
      'You suggest trying to move the gem, thinking it might break its hold on the house. Max and Shaun agree, and the three of you brace yourselves for another gravity shift as you approach the gem. The air crackles with tension, and you can feel the gem’s power resisting your every step.',
      animation: 'moving_gem',
      image: 'protagonists_approaching_gem_together',
      choices: [
        Choice(text: 'Try to lift the gem together.', nextNode: 'LiftGem'),
        Choice(
            text: 'Push the gem to see if it can be moved.',
            nextNode: 'PushGem'),
        Choice(
            text: 'Use a tool to pry the gem from its spot.',
            nextNode: 'PryGem'),
      ],
    ),
    'TouchGem': StoryNode(
      text:
      'You reach out and touch the gem, feeling its cold, pulsating surface. An intense wave of energy surges through you, and the gravity in the room stabilizes momentarily. However, the gem’s power is too great, and it begins to pull you in different directions again. The struggle to maintain your grip on the gem is becoming increasingly difficult.',
      animation: 'touching_gem',
      image: 'protagonist_touching_gem',
      choices: [
        Choice(
            text:
            'Try to hold onto the gem’s surface and focus on stabilizing it.',
            nextNode: 'StabilizeGem'),
        Choice(
            text: 'Pull away and regroup with Max and Shaun.',
            nextNode: 'RegroupWithFriends'),
      ],
    ),
    'ObserveGem': StoryNode(
      text:
      'You stop just short of the gem and observe its glow more closely. The gem’s light seems to flicker in a rhythmic pattern. As you watch, you notice a faint inscription on its surface. The inscription might provide a clue on how to neutralize its power. The gravity shifts again, making it harder to concentrate.',
      animation: 'observing_gem',
      image: 'protagonist_observing_gem',
      choices: [
        Choice(
            text: 'Attempt to decipher the inscription.',
            nextNode: 'DecipherInscription'),
        Choice(
            text: 'Return to your friends and share your findings.',
            nextNode: 'ShareFindings'),
      ],
    ),
    'PushGemAway': StoryNode(
      text:
      'You push against the gem with all your strength, but its gravitational pull makes it incredibly difficult. The gem seems to resist your efforts, and the shifting gravity makes it hard to maintain your balance. Despite your best efforts, you realize you need a different strategy to deal with the gem.',
      animation: 'pushing_gem_away',
      image: 'protagonist_pushing_gem',
      choices: [
        Choice(
            text: 'Try to use a makeshift tool to pry the gem free.',
            nextNode: 'UseToolToPryGem'),
        Choice(
            text: 'Rejoin Max and Shaun to brainstorm a new approach.',
            nextNode: 'BrainstormNewPlan'),
      ],
    ),
    'LiftGem': StoryNode(
      text:
      'With Max and Shaun’s help, you manage to lift the gem off its pedestal. The gravity shifts violently as you struggle to maintain control. The gem’s power is immense, and it begins to pulse faster and stronger. You need to act quickly to neutralize it before the house is torn apart.',
      animation: 'lifting_gem',
      image: 'protagonists_lifting_gem',
      choices: [
        Choice(
            text: 'Attempt to throw the gem out of the house.',
            nextNode: 'ThrowGem'),
        Choice(
            text: 'Look for a way to destroy the gem.', nextNode: 'DestroyGem'),
      ],
    ),
    'PushGem': StoryNode(
      text:
      'You and your friends push the gem as hard as you can. The gem wobbles but doesn’t move. The gravity continues to shift, making your task even harder. Just when it seems like the gem won’t budge, you notice a crack forming in its surface. It might be the key to stopping its power.',
      animation: 'pushing_gem',
      image: 'protagonists_pushing_gem',
      choices: [
        Choice(
            text: 'Try to widen the crack to destabilize the gem.',
            nextNode: 'WidenCrack'),
        Choice(
            text: 'Search for something to smash the gem.',
            nextNode: 'FindSledgehammer'),
      ],
    ),
    'PryGem': StoryNode(
      text:
      'Using a sturdy tool, you manage to pry the gem from its spot. As you lift it, the gravity becomes even more erratic, causing the room to spin uncontrollably. The gem’s power seems to be diminishing, but you need to be quick to fully neutralize it.',
      animation: 'prying_gem',
      image: 'prying_gem_from_spot',
      choices: [
        Choice(text: 'Throw the gem outside the house.', nextNode: 'ThrowGem'),
        Choice(
            text: 'Smash the gem with a heavy object.', nextNode: 'SmashGem'),
      ],
    ),
    'BlockGemLight': StoryNode(
      text:
      'You try to block the gem’s light using a nearby object. The room stabilizes slightly, but the gem’s power still fluctuates. The gravity shifts less violently, but you realize you need a more permanent solution to stop the gem.',
      animation: 'blocking_gem_light',
      image: 'object_blocking_gem_light',
      choices: [
        Choice(
            text: 'Move closer to the gem to try and disable it directly.',
            nextNode: 'DisableGemDirectly'),
        Choice(
            text: 'Consult with Max and Shaun for a new plan.',
            nextNode: 'ConsultFriends'),
      ],
    ),
    'TryAgainReachGem': StoryNode(
      text:
      'You make another attempt to reach the gem. This time, you manage to touch its surface. An intense burst of energy surrounds you, causing the gravity to stabilize briefly. The gem seems to be reacting to your touch, but you need to find a way to control its power.',
      animation: 'reaching_again_for_gem',
      image: 'protagonist_reaching_gem_again',
      choices: [
        Choice(text: 'Try to hold the gem still.', nextNode: 'HoldGemStill'),
        Choice(
            text: 'Seek assistance from Max and Shaun to manage the gem.',
            nextNode: 'SeekAssistance'),
      ],
    ),
    'ThrowGem': StoryNode(
      text:
      'With a final, mighty effort, you throw the gem outside the house. As it leaves, the gravity shifts dramatically one last time before everything settles. The house is silent, and the oppressive energy of the gem is gone. You and your friends breathe a sigh of relief, knowing you’ve neutralized the threat.',
      animation: 'throwing_gem',
      image: 'gem_being_thrown_outside',
      choices: [
        Choice(
            text: 'Check for any residual effects or damage.',
            nextNode: 'CheckDamage'),
        Choice(
            text: 'Celebrate your success and regroup.',
            nextNode: 'CelebrateSuccess'),
      ],
    ),
    'DestroyGem': StoryNode(
      text:
      'You find a heavy object and smash it into the gem. As it shatters, the gravity stabilizes, and the house slowly returns to normal. The gem’s power is completely neutralized, and you and your friends can finally relax. The crisis is over, and you’ve managed to save the house from being torn apart.',
      animation: 'destroying_gem',
      image: 'gem_being_destroyed',
      choices: [
        Choice(
            text: 'Inspect the room for any further issues.',
            nextNode: 'InspectRoom'),
        Choice(
            text: 'Rejoin Max and Shaun to discuss what just happened.',
            nextNode: 'DiscussWithFriends'),
      ],
    ),
    'WidenCrack': StoryNode(
      text:
      'You work to widen the crack in the gem, hoping to destabilize its power. As the crack grows larger, the gem’s light flickers erratically. The gravity becomes less erratic, and the gem’s control over the room weakens. You’re getting closer to neutralizing the threat.',
      animation: 'widening_crack',
      image: 'gem_with_large_crack',
      choices: [
        Choice(
            text: 'Continue widening the crack.', nextNode: 'ContinueWidening'),
        Choice(
            text: 'Attempt to destroy the gem while it’s weakened.',
            nextNode: 'DestroyWeakenedGem'),
      ],
    ),
    'NeutralizeGem': StoryNode(
      text:
      'Max and Shaun work with you to neutralize the gem’s power. With a combined effort, you manage to weaken the gem’s influence, causing the gravity shifts to lessen. The house stabilizes, and the gem’s dangerous effect begins to fade.',
      animation: 'neutralizing_gem',
      image: 'gem_becoming_weaker',
      choices: [
        Choice(
            text: 'Continue neutralizing the gem.',
            nextNode: 'ContinueNeutralizing'),
        Choice(
            text: 'Search for a permanent solution to stop the gem.',
            nextNode: 'FindPermanentSolution'),
      ],
    ),
    'EndChallenge': StoryNode(
      text:
      'With the gem’s power neutralized, the gravity in the house stabilizes completely. The room returns to normal, and the oppressive aura of the gem is gone. You, Max, and Shaun stand together, exhausted but relieved. You’ve successfully overcome the challenge posed by the Cursed Space Gem and can now focus on your next adventure.',
      animation: 'challenge_end',
      image: 'room_stabilized_after_challenge',
      choices: [
        Choice(
            text: 'Prepare for the next challenge.',
            nextNode: 'PrepareNextChallenge'),
        Choice(
            text: 'Take a moment to rest and reflect on the experience.',
            nextNode: 'RestAndReflect'),
      ],
    ),
    'PrepareNextChallenge': StoryNode(
      text:
      'You and your friends gather your strength and prepare yourselves for the next challenge. With the Cursed Space Gem behind you, you feel a renewed sense of determination. The house remains stable, and you set your sights on what lies ahead, ready for whatever comes next.',
      animation: 'preparing_for_next_challenge',
      image: 'protagonists_ready_for_next_adventure',
      choices: [
        Choice(text: 'Continue exploring the house.', nextNode: 'ExploreHouse'),
        Choice(
            text: 'Review your items and strategy.',
            nextNode: 'ReviewStrategy'),
      ],
    ),
    'RestAndReflect': StoryNode(
      text:
      'You, Max, and Shaun take a moment to rest and reflect on the experience. The house is calm, and the intense energy of the gem has faded. You discuss the events that transpired, share your thoughts and feelings, and appreciate the teamwork that got you through the challenge. It’s a well-deserved break before you continue on your journey.',
      animation: 'rest_and_reflect',
      image: 'protagonists_resting_and_reflecting',
      choices: [
        Choice(text: 'Plan your next steps.', nextNode: 'PlanNextSteps'),
        Choice(
            text: 'Look around the house for any new clues or items.',
            nextNode: 'SearchForClues'),
      ],
    ),
    'ExploreHouse': StoryNode(
      text:
      'You and your friends decide to explore the house further. Now that the gravity issues are resolved, you might discover new areas or hidden secrets that could aid you in your adventure. The house seems to hold many mysteries yet to be uncovered.',
      animation: 'exploring_house',
      image: 'protagonists_exploring_the_house',
      choices: [
        Choice(text: 'Investigate the attic.', nextNode: 'InvestigateAttic'),
        Choice(
            text: 'Check the basement for hidden passages.',
            nextNode: 'CheckBasement'),
      ],
    ),
    'ReviewStrategy': StoryNode(
      text:
      'You review your items and strategy with Max and Shaun, making sure you’re well-prepared for future challenges. This is a crucial step to ensure you don’t encounter the same issues again and are ready for whatever the house throws at you next.',
      animation: 'reviewing_strategy',
      image: 'protagonists_reviewing_strategy',
      choices: [
        Choice(
            text: 'Update your inventory list.', nextNode: 'UpdateInventory'),
        Choice(
            text: 'Discuss potential strategies for upcoming challenges.',
            nextNode: 'DiscussStrategies'),
      ],
    ),
    'PlanNextSteps': StoryNode(
      text:
      'You plan your next steps carefully, considering what you’ve learned from the Cursed Space Gem challenge. The house remains a place of wonder and danger, and your next move could reveal new adventures or dangers. With renewed focus, you prepare to face whatever comes next.',
      animation: 'planning_next_steps',
      image: 'protagonists_planning_next_steps',
      choices: [
        Choice(text: 'Advance to the next room.', nextNode: 'NextRoom'),
        Choice(
            text: 'Rest and prepare your equipment.',
            nextNode: 'RestAndPrepare'),
      ],
    ),
    'SearchForClues': StoryNode(
      text:
      'You look around the house for any new clues or items that might help with your adventure. The house seems to be full of hidden secrets, and you might find something useful or revealing if you search carefully.',
      animation: 'searching_for_clues',
      image: 'protagonists_searching_house',
      choices: [
        Choice(
            text: 'Examine unusual objects in the living room.',
            nextNode: 'ExamineLivingRoom'),
        Choice(
            text: 'Look in the old study for any interesting books or papers.',
            nextNode: 'LookInStudy'),
      ],
    ),
    'InspectRoom': StoryNode(
      text:
      'You inspect the room for any residual effects or damage from the gem’s influence. The room appears to be stable, but you notice a few minor disturbances that need attention. It’s important to ensure everything is in order before moving on.',
      animation: 'inspecting_room',
      image: 'room_being_inspected',
      choices: [
        Choice(
            text: 'Fix any damages or disturbances.', nextNode: 'FixDamages'),
        Choice(
            text: 'Ensure all equipment is functioning properly.',
            nextNode: 'CheckEquipment'),
      ],
    ),
    'DiscussWithFriends': StoryNode(
      text:
      'You discuss the events with Max and Shaun, sharing your thoughts on what happened and what might come next. It’s a valuable moment of reflection that strengthens your bond and prepares you for the challenges ahead.',
      animation: 'discussing_experience',
      image: 'friends_discussing_experience',
      choices: [
        Choice(
            text: 'Plan your next moves together.',
            nextNode: 'PlanMovesTogether'),
        Choice(
            text: 'Review your current objectives.',
            nextNode: 'ReviewObjectives'),
      ],
    ),
    'CheckDamage': StoryNode(
      text:
      'You check the room for any residual effects or damage from the gem’s influence. The room appears to be stable, but you notice a few minor disturbances that need attention. It’s important to ensure everything is in order before moving on.',
      animation: 'checking_damage',
      image: 'room_being_checked_for_damage',
      choices: [
        Choice(text: 'Fix any visible damages.', nextNode: 'FixVisibleDamages'),
        Choice(
            text: 'Perform a thorough inspection of the entire house.',
            nextNode: 'ThoroughInspection'),
      ],
    ),
    'CelebrateSuccess': StoryNode(
      text:
      'You, Max, and Shaun celebrate your success. The challenge was difficult, but you managed to overcome it. With the house now stabilized, you take some time to enjoy the victory and prepare for the adventures that lie ahead.',
      animation: 'celebrating_success',
      image: 'protagonists_celebrating',
      choices: [
        Choice(
            text: 'Discuss what you learned from this challenge.',
            nextNode: 'DiscussLessonsLearned'),
        Choice(
            text: 'Take a break and enjoy some downtime.',
            nextNode: 'EnjoyDowntime'),
      ],
    ),
    'InchCloserToGem': StoryNode(
      text:
      'Despite the unpredictable gravity, you inch closer to the gem. Each step feels like a battle, but your determination pushes you forward. You finally reach the gem, and with a decisive action, you attempt to neutralize its power directly.',
      animation: 'inching_closer_to_gem',
      image: 'protagonist_inching_closer_to_gem',
      choices: [
        Choice(
            text: 'Use a special technique to neutralize the gem.',
            nextNode: 'NeutralizeGemDirectly'),
        Choice(
            text: 'Return to Max and Shaun to discuss the next move.',
            nextNode: 'DiscussNextMove'),
      ],
    ),
    'NeutralizeGemDirectly': StoryNode(
      text:
      'You use a special technique to neutralize the gem’s power. As you focus your energy on the gem, its pulsations slow and eventually stop. The gravity stabilizes, and the house returns to normal. You’ve effectively neutralized the gem’s threat.',
      animation: 'neutralizing_gem_directly',
      image: 'neutralizing_gem',
      choices: [
        Choice(
            text: 'Check for any remaining issues in the room.',
            nextNode: 'CheckRemainingIssues'),
        Choice(
            text: 'Celebrate your success with your friends.',
            nextNode: 'CelebrateSuccess'),
      ],
    ),
    'ContinueWidening': StoryNode(
      text:
      'You continue widening the crack in the gem. The gem’s light flickers erratically, and the gravity shifts become less violent. The gem’s power is weakening, and you are one step closer to neutralizing its influence.',
      animation: 'continuing_widening_crack',
      image: 'gem_with_expanding_crack',
      choices: [
        Choice(
            text: 'Finish widening the crack.',
            nextNode: 'FinishWideningCrack'),
        Choice(
            text: 'Look for additional ways to weaken the gem.',
            nextNode: 'WeakenGemFurther'),
      ],
    ),
    'DestroyWeakenedGem': StoryNode(
      text:
      'With the gem weakened, you manage to destroy it completely. As the gem shatters, the gravity stabilizes and the house returns to normal. The immediate threat is gone, and you’ve successfully dealt with the danger. The air is filled with a sense of relief and victory as you and your friends stand together, grateful for overcoming this perilous challenge.',
      animation: 'destroying_gem',
      image: 'gem_shattering_and_gravity_stabilizing',
      choices: [
        Choice(
            text: 'Take a moment to celebrate your victory.',
            nextNode: 'CelebrateVictory'),
        Choice(
            text: 'Start preparing for the next challenge.',
            nextNode: 'PrepareNextChallenge'),
      ],
    ),
    'CelebrateVictory': StoryNode(
      text:
      'You and your friends take a moment to celebrate your hard-earned victory. The sense of accomplishment is palpable as you reflect on the challenge you’ve just overcome. It’s a time to enjoy the victory and recharge for the adventures that lie ahead.',
      animation: 'celebrating_victory',
      image: 'protagonists_celebrating_victory',
      choices: [
        Choice(
            text: 'Discuss what you’ve learned from the challenge.',
            nextNode: 'DiscussLessonsLearned'),
        Choice(
            text: 'Enjoy some downtime before moving forward.',
            nextNode: 'EnjoyDowntime'),
      ],
    ),
    'DiscussLessonsLearned': StoryNode(
      text:
      'You gather with Max and Shaun to discuss the lessons learned from the challenge. Reflecting on what worked and what didn’t helps to solidify your strategies and improve your teamwork. This discussion is crucial for ensuring that you’re prepared for future trials.',
      animation: 'discussing_lessons',
      image: 'protagonists_discussing_lessons',
      choices: [
        Choice(
            text: 'Plan your next steps based on these lessons.',
            nextNode: 'PlanNextSteps'),
        Choice(
            text: 'Take a break and enjoy some downtime.',
            nextNode: 'EnjoyDowntime'),
      ],
    ),
    'EnjoyDowntime': StoryNode(
      text:
      'You and your friends take a well-deserved break. The intense experience of dealing with the Cursed Space Gem has passed, and now it’s time to relax and enjoy some downtime. This moment of calm helps you recharge and prepare for the challenges ahead.',
      animation: 'enjoying_downtime',
      image: 'protagonists_relaxing',
      choices: [
        Choice(text: 'Resume exploring the house.', nextNode: 'ExploreHouse'),
        Choice(
            text: 'Review your inventory and strategy.',
            nextNode: 'ReviewStrategy'),
      ],
    ),
    'FinishWideningCrack': StoryNode(
      text:
      'You complete the task of widening the crack in the gem. As the gem’s power diminishes, the gravity fluctuations become less severe. The gem’s light fades, signaling that its influence is weakening. With the crack fully widened, the gem’s threat is now manageable.',
      animation: 'finishing_widening_crack',
      image: 'gem_with_large_crack',
      choices: [
        Choice(
            text: 'Destroy the gem to neutralize the threat completely.',
            nextNode: 'DestroyWeakenedGem'),
        Choice(
            text: 'Look for other ways to ensure the gem’s influence is gone.',
            nextNode: 'CheckForOtherWays'),
      ],
    ),
    'CheckForOtherWays': StoryNode(
      text:
      'You decide to check for other ways to ensure the gem’s influence is fully neutralized. After a thorough inspection, you confirm that the gem’s power has been diminished and that the gravity should stabilize soon. The threat is effectively mitigated, but it’s wise to remain cautious.',
      animation: 'checking_for_other_ways',
      image: 'protagonists_inspecting_gem',
      choices: [
        Choice(
            text: 'Destroy the gem to be absolutely sure.',
            nextNode: 'DestroyWeakenedGem'),
        Choice(
            text: 'Celebrate your success and prepare for the next challenge.',
            nextNode: 'CelebrateVictory'),
      ],
    ),
    'InvestigateAttic': StoryNode(
      text:
      'You head to the attic, a place you haven’t explored before. The dusty, cobweb-filled space reveals old furniture and forgotten relics. Among the clutter, you might find something useful or a clue to the next part of your adventure.',
      animation: 'investigating_attic',
      image: 'protagonists_in_attic',
      choices: [
        Choice(
            text: 'Search for hidden compartments.',
            nextNode: 'SearchHiddenCompartments'),
        Choice(
            text: 'Examine old documents and artifacts.',
            nextNode: 'ExamineDocuments'),
      ],
    ),
    'CheckBasement': StoryNode(
      text:
      'You make your way to the basement, a dark and mysterious area that might hold secrets or hidden passages. The basement is filled with old crates and cobwebs, and you need to be cautious as you explore.',
      animation: 'checking_basement',
      image: 'protagonists_in_basement',
      choices: [
        Choice(
            text: 'Look for hidden doors or passages.',
            nextNode: 'LookForPassages'),
        Choice(
            text: 'Inspect the crates for interesting items.',
            nextNode: 'InspectCrates'),
      ],
    ),
    'SearchHiddenCompartments': StoryNode(
      text:
      'You search for hidden compartments in the attic and discover an old, dusty chest. Inside, you find a set of mysterious items that might be valuable for your journey. The chest also contains a cryptic note that could provide clues for the next challenge.',
      animation: 'searching_hidden_compartments',
      image: 'hidden_chest_in_attic',
      choices: [
        Choice(
            text: 'Examine the items and note closely.',
            nextNode: 'ExamineItemsAndNote'),
        Choice(
            text: 'Take the chest back to review with Max and Shaun.',
            nextNode: 'ReviewWithFriends'),
      ],
    ),
    'ExamineDocuments': StoryNode(
      text:
      'You examine the old documents and artifacts found in the attic. Among the papers, you uncover a map that seems to indicate secret locations within the house. This map could be crucial for your next steps in the adventure.',
      animation: 'examining_documents',
      image: 'old_documents_in_attic',
      choices: [
        Choice(text: 'Study the map in detail.', nextNode: 'StudyMap'),
        Choice(
            text: 'Show the map to Max and Shaun for their input.',
            nextNode: 'ShowToFriends'),
      ],
    ),
    'LookForPassages': StoryNode(
      text:
      'You search the basement for hidden doors or passages. After some careful exploration, you discover a concealed passageway behind a stack of crates. This passage could lead to unknown areas or important discoveries.',
      animation: 'looking_for_passages',
      image: 'hidden_passage_in_basement',
      choices: [
        Choice(
            text: 'Enter the passageway and explore.',
            nextNode: 'ExplorePassageway'),
        Choice(
            text: 'Investigate the crates further before entering.',
            nextNode: 'InvestigateCrates'),
      ],
    ),
    'InspectCrates': StoryNode(
      text:
      'You inspect the crates in the basement and find some old, interesting items that might be useful. Among them, you come across an old diary with handwritten notes that might hold valuable information or clues for your adventure.',
      animation: 'inspecting_crates',
      image: 'old_items_in_crates',
      choices: [
        Choice(text: 'Read the diary for clues.', nextNode: 'ReadDiary'),
        Choice(
            text: 'Take the items back to review with Max and Shaun.',
            nextNode: 'ReviewWithFriends'),
      ],
    ),
    'StudyMap': StoryNode(
      text:
      'You study the map closely and notice several marked locations that could be significant. Each mark corresponds to different areas within the house. The map seems to provide a guide to hidden or secret places that might offer more clues or challenges.',
      animation: 'studying_map',
      image: 'detailed_map_of_house',
      choices: [
        Choice(
            text: 'Plan a route to investigate these locations.',
            nextNode: 'PlanInvestigationRoute'),
        Choice(
            text: 'Show the map to Max and Shaun for their input.',
            nextNode: 'ShowToFriends'),
      ],
    ),
    'ShowToFriends': StoryNode(
      text:
      'You share the map or items with Max and Shaun, and they offer their insights and suggestions. Working together, you decide on the best course of action based on the new information you’ve gathered.',
      animation: 'showing_items_to_friends',
      image: 'protagonists_discussing_discoveries',
      choices: [
        Choice(
            text: 'Proceed with the agreed plan.', nextNode: 'ProceedWithPlan'),
        Choice(
            text: 'Take more time to review the items and map.',
            nextNode: 'TakeMoreTime'),
      ],
    ),
    'ProceedWithPlan': StoryNode(
      text:
      'You and your friends follow the plan you’ve devised based on the new discoveries. With renewed purpose, you continue your adventure through the house, ready to tackle the challenges and mysteries that lie ahead.',
      animation: 'proceeding_with_plan',
      image: 'protagonists_following_plan',
      choices: [
        Choice(
            text: 'Advance to the next area on the map.',
            nextNode: 'NextAreaOnMap'),
        Choice(
            text: 'Prepare and review your strategies once more.',
            nextNode: 'PrepareAndReview'),
      ],
    ),
    'TakeMoreTime': StoryNode(
      text:
      'You decide to take more time to review the items and map thoroughly. This careful examination allows you to refine your strategy and ensure that you’re well-prepared for the next steps in your adventure.',
      animation: 'taking_more_time',
      image: 'protagonists_reviewing_items',
      choices: [
        Choice(
            text: 'Return to your investigation with a clearer plan.',
            nextNode: 'ReturnToInvestigation'),
        Choice(
            text: 'Rest and regroup before proceeding.',
            nextNode: 'RestAndRegroup'),
      ],
    ),
    'NextAreaOnMap': StoryNode(
      text:
      'You advance to the next area on the map, feeling a mix of anticipation and excitement. Each step brings you closer to uncovering new secrets and facing new challenges. The house is full of surprises, and you’re ready for what’s next.',
      animation: 'advancing_to_next_area',
      image: 'protagonists_in_next_area',
      choices: [
        Choice(
            text: 'Explore the new area thoroughly.',
            nextNode: 'ExploreNewArea'),
        Choice(
            text: 'Review any new items or clues found in the area.',
            nextNode: 'ReviewNewItems'),
      ],
    ),
    'ExploreNewArea': StoryNode(
      text:
      'You explore the new area thoroughly, uncovering hidden secrets and encountering unexpected challenges. The house continues to reveal its mysteries as you delve deeper into your adventure.',
      animation: 'exploring_new_area',
      image: 'protagonists_exploring_new_area',
      choices: [
        Choice(text: 'Face the challenge head-on.', nextNode: 'FaceChallenge'),
        Choice(
            text: 'Seek additional help or information.', nextNode: 'SeekHelp'),
      ],
    ),
    'ReviewNewItems': StoryNode(
      text:
      'You review any new items or clues found in the area, looking for connections or useful information. This analysis helps you to better understand your situation and prepare for future challenges.',
      animation: 'reviewing_new_items',
      image: 'protagonists_reviewing_new_clues',
      choices: [
        Choice(
            text: 'Apply the new information to your current strategy.',
            nextNode: 'ApplyNewInformation'),
        Choice(
            text: 'Consult with Max and Shaun about the findings.',
            nextNode: 'ConsultWithFriends'),
      ],
    ),
    'ApplyNewInformation': StoryNode(
      text:
      'You apply the new information to your current strategy, refining your approach based on the recent discoveries. This updated strategy enhances your preparedness for the challenges that lie ahead.',
      animation: 'applying_new_information',
      image: 'protagonists_updating_strategy',
      choices: [
        Choice(
            text: 'Advance with the updated strategy.',
            nextNode: 'AdvanceWithStrategy'),
        Choice(
            text: 'Review and adjust your approach further.',
            nextNode: 'ReviewAndAdjust'),
      ],
    ),
    'AdvanceWithStrategy': StoryNode(
      text:
      'With your updated strategy in place, you advance with confidence, ready to tackle the challenges ahead. Your journey through the house continues as you move closer to uncovering its secrets and achieving your goals.',
      animation: 'advancing_with_strategy',
      image: 'protagonists_advancing_in_house',
      choices: [
        Choice(
            text: 'Continue exploring new areas.', nextNode: 'ExploreNewAreas'),
        Choice(
            text: 'Prepare for upcoming challenges.',
            nextNode: 'PrepareForChallenges'),
      ],
    ),
    'ReviewAndAdjust': StoryNode(
      text:
      'You review and adjust your approach further, ensuring   that you’re as prepared as possible for what lies ahead. The additional time spent refining your strategy increases your chances of success in the face of upcoming challenges.',
      animation: 'reviewing_and_adjusting_strategy',
      image: 'protagonists_refining_strategy',
      choices: [
        Choice(
            text: 'Move forward with confidence.',
            nextNode: 'AdvanceWithStrategy'),
        Choice(
            text: 'Discuss final details with Max and Shaun.',
            nextNode: 'FinalDiscussion'),
      ],
    ),
    'FinalDiscussion': StoryNode(
      text:
      'You gather with Max and Shaun for a final discussion before moving forward. This conversation allows you to clarify any remaining uncertainties and solidify your plan. With everything in place, you feel ready to tackle whatever comes next.',
      animation: 'final_discussion',
      image: 'protagonists_discussing_plan',
      choices: [
        Choice(
            text: 'Proceed with the final plan.', nextNode: 'ProceedWithPlan'),
        Choice(
            text: 'Take one last moment to review everything.',
            nextNode: 'FinalReview'),
      ],
    ),
    'FinalReview': StoryNode(
      text:
      'You take one last moment to review everything—your strategy, your resources, and the information you’ve gathered. This thorough review leaves you feeling prepared and confident as you move forward into the unknown.',
      animation: 'final_review',
      image: 'protagonists_final_review',
      choices: [
        Choice(
            text: 'Advance with renewed determination.',
            nextNode: 'AdvanceWithStrategy'),
        Choice(
            text: 'Double-check all preparations.',
            nextNode: 'DoubleCheckPreparations'),
      ],
    ),
    'DoubleCheckPreparations': StoryNode(
      text:
      'You double-check all your preparations, ensuring that nothing has been overlooked. This final check gives you the peace of mind that you’ve done everything possible to prepare for the challenges ahead.',
      animation: 'double_checking_preparations',
      image: 'protagonists_double_checking',
      choices: [
        Choice(
            text: 'Move forward confidently.', nextNode: 'AdvanceWithStrategy'),
        Choice(text: 'Take a deep breath and go.', nextNode: 'ProceedWithPlan'),
      ],
    ),
    'FaceChallenge': StoryNode(
      text:
      'You decide to face the challenge head-on, drawing on all your experience and knowledge. The challenge is tough, but you’re determined to overcome it. With careful planning and quick thinking, you push through the obstacles.',
      animation: 'facing_challenge',
      image: 'protagonists_facing_challenge',
      choices: [
        Choice(
            text: 'Push forward with determination.', nextNode: 'PushForward'),
        Choice(
            text: 'Consider alternative strategies.',
            nextNode: 'ConsiderAlternatives'),
      ],
    ),
    'SeekHelp': StoryNode(
      text:
      'You seek additional help or information to tackle the challenge. By reaching out, you gain new insights and support that make the task more manageable. This collaboration strengthens your resolve and increases your chances of success.',
      animation: 'seeking_help',
      image: 'protagonists_getting_help',
      choices: [
        Choice(
            text: 'Apply the new insights to the challenge.',
            nextNode: 'ApplyNewInsights'),
        Choice(
            text: 'Discuss the plan with Max and Shaun.',
            nextNode: 'ConsultWithFriends'),
      ],
    ),
    'PushForward': StoryNode(
      text:
      'You push forward with determination, using all your strength and cunning to overcome the challenge. It’s a difficult journey, but your resolve is unshakable, and you eventually emerge victorious.',
      animation: 'pushing_forward',
      image: 'protagonists_pushing_forward',
      choices: [
        Choice(
            text: 'Celebrate your hard-earned victory.',
            nextNode: 'CelebrateVictory'),
        Choice(
            text: 'Prepare for the next challenge.',
            nextNode: 'PrepareNextChallenge'),
      ],
    ),
    'ConsiderAlternatives': StoryNode(
      text:
      'You take a moment to consider alternative strategies, weighing the risks and benefits of different approaches. This careful consideration allows you to choose the best course of action, improving your chances of success.',
      animation: 'considering_alternatives',
      image: 'protagonists_considering_options',
      choices: [
        Choice(
            text: 'Choose the best alternative strategy.',
            nextNode: 'ApplyNewStrategy'),
        Choice(text: 'Stick to the original plan.', nextNode: 'StickToPlan'),
      ],
    ),
    'ApplyNewStrategy': StoryNode(
      text:
      'You decide to apply a new strategy, based on your careful analysis. This approach proves to be effective, helping you to overcome the challenge in a more efficient way.',
      animation: 'applying_new_strategy',
      image: 'protagonists_executing_new_strategy',
      choices: [
        Choice(text: 'Celebrate your success.', nextNode: 'CelebrateVictory'),
        Choice(
            text: 'Prepare for the next challenge.',
            nextNode: 'PrepareNextChallenge'),
      ],
    ),
    'StickToPlan': StoryNode(
      text:
      'You choose to stick to the original plan, confident in your initial strategy. Despite the difficulties, your plan holds strong, and you manage to overcome the challenge.',
      animation: 'sticking_to_plan',
      image: 'protagonists_executing_plan',
      choices: [
        Choice(text: 'Celebrate your victory.', nextNode: 'CelebrateVictory'),
        Choice(
            text: 'Plan for the next challenge.',
            nextNode: 'PrepareNextChallenge'),
      ],
    ),
    'ApplyNewInsights': StoryNode(
      text:
      'You apply the new insights you’ve gained, adjusting your approach accordingly. This new information proves invaluable, allowing you to navigate the challenge more effectively.',
      animation: 'applying_new_insights',
      image: 'protagonists_using_new_insights',
      choices: [
        Choice(text: 'Proceed with confidence.', nextNode: 'ProceedWithPlan'),
        Choice(text: 'Celebrate your progress.', nextNode: 'CelebrateVictory'),
      ],
    ),
    'RestAndRegroup': StoryNode(
      text:
      'After a moment of rest, you and your friends regroup, ready to continue your adventure. The break has refreshed you, and you feel more prepared to face the challenges ahead.',
      animation: 'resting_and_regrouping',
      image: 'protagonists_regrouping',
      choices: [
        Choice(text: 'Resume your exploration.', nextNode: 'ExploreHouse'),
        Choice(
            text: 'Plan your next move carefully.',
            nextNode: 'PrepareNextChallenge'),
      ],
    ),
  },

// AntiGravityMaze

  'AntiGravityMaze': {
    'start': StoryNode(
      text: 'now it\'s your turn to push the button and decide your fate , "',
      animation: 'CardAppearance',
      image: 'anti_gravity_maze_card.jpg',
      choices: [
        Choice(
            text: 'Push the Button to conquer your fear',
            nextNode: 'AntiGravityMazecontinue'),
      ],
    ),
    'AntiGravityMazecontinue': StoryNode(
      text:
      'Yet Again , tension hanging in the air. The number 7 appears. As before, a card materializes, hovering before you. You Grabbed it quickly . Your face is darkening as you,re reading the card aloud, "Anti-Gravity Maze." A low hum fills the room, and you feel your stomach lurch as the floor beneath you shimmers and fades. The card’s message rings in your mind: "In the maze where gravity bends, up is down, and down is up. Find the center, or lose your way forever."',
      animation: 'CardAppearance',
      image: 'anti_gravity_maze_card.jpg',
      choices: [
        Choice(
            text: 'Brace yourself for the challenge',
            nextNode: 'AntiGravityMazeStart'),
        Choice(text: 'Ask Max what he thinks', nextNode: 'DiscussMazeWithMax'),
      ],
    ),
    'AntiGravityMazeStart': StoryNode(
      text:
      'The room twists and spins, walls melting into strange shapes. The floor flips upside down, and suddenly, you’re falling—but not downwards. You and Max land softly on what was the ceiling. "This is... disorienting," Max mutters, trying to steady himself. "We need to find the center of this maze before we get completely lost."',
      animation: 'GravityShift',
      image: 'disorienting_maze.jpg',
      choices: [
        Choice(text: 'Start moving cautiously', nextNode: 'CautiousMoveNode'),
        Choice(text: 'Jump to test gravity', nextNode: 'TestGravityNode'),
        Choice(text: 'Ask Max for a plan', nextNode: 'PlanWithMaxNode'),
      ],
    ),
    'CautiousMoveNode': StoryNode(
      text:
      'You step forward carefully, each movement testing the strange gravity. The walls around you pulse with an otherworldly light. The path ahead splits into three: a narrow tunnel on the left, a steep incline straight ahead, and a swirling vortex to the right. Max glances at you, "Which way do we go?"',
      animation: 'MazePathsSplit',
      image: 'maze_split.jpg',
      choices: [
        Choice(text: 'Take the narrow tunnel', nextNode: 'NarrowTunnelNode'),
        Choice(text: 'Climb the incline', nextNode: 'ClimbInclineNode'),
        Choice(text: 'Enter the vortex', nextNode: 'EnterVortexNode'),
      ],
    ),
    'TestGravityNode': StoryNode(
      text:
      'You give a small jump, and your body floats upwards, slowly spinning. Max watches with wide eyes as you hover above him. "So, we can control our movement here... but it’s tricky," you say, landing gently. "We’ll need to be careful."',
      animation: 'FloatingInAir',
      image: 'anti_gravity_jump.jpg',
      choices: [
        Choice(text: 'Try jumping higher', nextNode: 'JumpHigherNode'),
        Choice(
            text: 'Suggest moving cautiously',
            nextNode: 'SuggestCautiousMoveNode'),
        Choice(text: 'Ask Max what he thinks', nextNode: 'AskMaxOpinionNode'),
      ],
    ),
    'PlanWithMaxNode': StoryNode(
      text:
      'Max looks around, his brow furrowed. "This place is a trap designed to mess with our sense of direction. If we can figure out the pattern of how gravity shifts, maybe we can find the center more easily."',
      animation: 'MaxThinking',
      image: 'max_thinking.jpg',
      choices: [
        Choice(
            text: 'Agree to observe the pattern',
            nextNode: 'ObservePatternNode'),
        Choice(
            text: 'Suggest moving forward cautiously',
            nextNode: 'CautiousMoveNode'),
        Choice(
            text: 'Propose splitting up to cover more ground',
            nextNode: 'SplitUpNode'),
      ],
    ),
    'JumpHigherNode': StoryNode(
      text:
      'You push off harder, floating higher and faster. The higher you go, the more the world around you seems to twist. You spot something in the distance—a bright light, possibly the center of the maze. "Max, I see something!" you shout.',
      animation: 'JumpHigher',
      image: 'light_in_maze.jpg',
      choices: [
        Choice(text: 'Head towards the light', nextNode: 'HeadToLightNode'),
        Choice(text: 'Descend back to Max', nextNode: 'DescendToMaxNode'),
        Choice(text: 'Signal Max to join you', nextNode: 'SignalMaxNode'),
      ],
    ),
    'SuggestCautiousMoveNode': StoryNode(
      text:
      'You suggest moving forward cautiously, watching every step. Max nods in agreement. The path splits into three: a narrow tunnel, a steep incline, and a swirling vortex. "It’s a maze alright," Max says, trying to make sense of it all.',
      animation: 'MazePathsSplit',
      image: 'maze_split.jpg',
      choices: [
        Choice(text: 'Take the narrow tunnel', nextNode: 'NarrowTunnelNode'),
        Choice(text: 'Climb the incline', nextNode: 'ClimbInclineNode'),
        Choice(text: 'Enter the vortex', nextNode: 'EnterVortexNode'),
      ],
    ),
    'HeadToLightNode': StoryNode(
      text:
      'You decide to float towards the light, but the closer you get, the stronger the gravitational pull becomes, pulling you off course. You need to navigate carefully, or risk getting thrown off.',
      animation: 'NavigatingGravity',
      image: 'gravity_pull.jpg',
      choices: [
        Choice(text: 'Fight against the pull', nextNode: 'FightPullNode'),
        Choice(
            text: 'Try to use the pull to your advantage',
            nextNode: 'UsePullNode'),
        Choice(text: 'Signal Max for help', nextNode: 'SignalMaxForHelpNode'),
      ],
    ),
    'NarrowTunnelNode': StoryNode(
      text:
      'You squeeze into the narrow tunnel. The walls seem to close in, and gravity feels heavier here. You struggle to keep moving forward, each step more difficult than the last. Max is right behind you, breathing heavily.',
      animation: 'TunnelCrawl',
      image: 'narrow_tunnel.jpg',
      choices: [
        Choice(
            text: 'Push through the tunnel', nextNode: 'PushThroughTunnelNode'),
        Choice(
            text: 'Backtrack and try another path', nextNode: 'BacktrackNode'),
        Choice(text: 'Ask Max to go first', nextNode: 'MaxFirstNode'),
      ],
    ),
    'ClimbInclineNode': StoryNode(
      text:
      'You and Max begin to climb the steep incline. The gravity shifts again, making the climb harder. The higher you go, the heavier you feel. "This isn’t normal," Max grunts, struggling to keep up.',
      animation: 'ClimbingIncline',
      image: 'steep_incline.jpg',
      choices: [
        Choice(
            text: 'Keep climbing despite the difficulty',
            nextNode: 'KeepClimbingNode'),
        Choice(text: 'Suggest taking a break', nextNode: 'TakeBreakNode'),
        Choice(
            text: 'Slide back down and try another path',
            nextNode: 'SlideDownNode'),
      ],
    ),
    'EnterVortexNode': StoryNode(
      text:
      'You decide to enter the swirling vortex. As soon as you step in, the world spins faster around you. It feels like you’re being pulled in every direction at once. "Stay close!" you shout to Max, but the vortex is making it hard to hear anything.',
      animation: 'EnteringVortex',
      image: 'vortex_maze.jpg',
      choices: [
        Choice(
            text: 'Move deeper into the vortex',
            nextNode: 'DeeperIntoVortexNode'),
        Choice(text: 'Try to back out quickly', nextNode: 'BackOutVortexNode'),
        Choice(text: 'Reach for Max’s hand', nextNode: 'ReachForMaxNode'),
      ],
    ),
    'FightPullNode': StoryNode(
      text:
      'You struggle against the gravitational pull, each movement becoming harder. The light seems further away now, almost mocking you. But giving up isn’t an option. "Come on!" you urge yourself, pushing forward with all your strength.',
      animation: 'StrugglingAgainstGravity',
      image: 'gravity_fight.jpg',
      choices: [
        Choice(text: 'Continue fighting', nextNode: 'KeepFightingNode'),
        Choice(
            text: 'Look for another way around',
            nextNode: 'FindAlternateRouteNode'),
        Choice(text: 'Call out to Max', nextNode: 'CallToMaxNode'),
      ],
    ),
    'DeeperIntoVortexNode': StoryNode(
      text:
      'You push deeper into the vortex, the pull becoming stronger. The world around you blurs, and you feel like you’re spinning out of control. Suddenly, the pull stops, and you find yourself in a new part of the maze—right at its center. "Max! I made it!"',
      animation: 'ReachingMazeCenter',
      image: 'maze_center.jpg',
      choices: [
        Choice(
            text: 'Look for a way to bring Max here',
            nextNode: 'HelpMaxToCenterNode'),
        Choice(text: 'Wait for Max to catch up', nextNode: 'WaitForMaxNode'),
        Choice(
            text: 'Explore the maze center alone',
            nextNode: 'ExploreMazeCenterNode'),
      ],
    ),
    'PushThroughTunnelNode': StoryNode(
      text:
      'You push through the narrow tunnel, ignoring the increasing pressure. Finally, you emerge into a wider space, feeling a sense of relief. Max follows closely, his face sweaty but determined. "We’re getting closer," he says, glancing around.',
      animation: 'TunnelExit',
      image: 'tunnel_exit.jpg',
      choices: [
        Choice(
            text: 'Continue exploring the new area',
            nextNode: 'ExploreNewAreaNode'),
        Choice(text: 'Rest and regroup', nextNode: 'RestAndRegroupNode'),
        Choice(text: 'Look for another exit', nextNode: 'LookForExitNode'),
      ],
    ),
    'ExploreMazeCenterNode': StoryNode(
      text:
      'You explore the maze center, discovering a glowing orb. It pulses with energy, and you sense it might be the key to exiting the maze. "This might be it," you think, approaching it cautiously.',
      animation: 'OrbDiscovery',
      image: 'glowing_orb.jpg',
      choices: [
        Choice(text: 'Examine the orb closely', nextNode: 'ExamineOrbNode'),
        Choice(text: 'Try to activate the orb', nextNode: 'ActivateOrbNode'),
        Choice(text: 'Wait for Max to join you', nextNode: 'WaitForMaxNode'),
      ],
    ),
    'HelpMaxToCenterNode': StoryNode(
      text:
      'You find a way to bring Max to the center by guiding him through the maze’s shifting gravity. Together, you stand before the glowing orb. "We did it," Max says with a relieved smile. "Now let’s figure out how to get out of here."',
      animation: 'MaxJoining',
      image: 'max_joining.jpg',
      choices: [
        Choice(
            text: 'Examine the orb together',
            nextNode: 'ExamineOrbTogetherNode'),
        Choice(text: 'Try to activate the orb', nextNode: 'ActivateOrbNode'),
        Choice(
            text: 'Look for an exit from the maze',
            nextNode: 'LookForExitNode'),
      ],
    ),
    'WaitForMaxNode': StoryNode(
      text:
      'You wait for Max to catch up, taking in the surroundings of the maze center. The orb continues to pulse, and you feel a strange energy in the air. Max finally arrives, looking relieved.',
      animation: 'WaitingForMax',
      image: 'waiting_for_max.jpg',
      choices: [
        Choice(text: 'Examine the orb', nextNode: 'ExamineOrbNode'),
        Choice(text: 'Try to activate the orb', nextNode: 'ActivateOrbNode'),
        Choice(
            text: 'Explore the maze center further',
            nextNode: 'ExploreMazeCenterNode'),
      ],
    ),
    'ExploreNewAreaNode': StoryNode(
      text:
      'You and Max explore the new area, discovering strange symbols on the walls. They seem to hint at a solution to the maze’s gravity puzzle. "These might be clues," Max says, studying the symbols.',
      animation: 'ExploringSymbols',
      image: 'symbols_on_walls.jpg',
      choices: [
        Choice(
            text: 'Try to decode the symbols', nextNode: 'DecodeSymbolsNode'),
        Choice(
            text: 'Look for an exit from this area',
            nextNode: 'LookForExitNode'),
        Choice(text: 'Continue exploring', nextNode: 'ContinueExploringNode'),
      ],
    ),
    'DecodeSymbolsNode': StoryNode(
      text:
      'You and Max work together to decode the symbols. After some effort, you realize they form a map of the maze. "We have a way out now," Max says, holding up the map.',
      animation: 'DecodingSymbols',
      image: 'decoded_map.jpg',
      choices: [
        Choice(
            text: 'Follow the map to the exit',
            nextNode: 'FollowMapToExitNode'),
        Choice(text: 'Double-check the map', nextNode: 'DoubleCheckMapNode'),
        Choice(
            text: 'Explore further for additional clues',
            nextNode: 'ExploreFurtherNode'),
      ],
    ),
    'ActivateOrbNode': StoryNode(
      text:
      'You attempt to activate the orb. It emits a blinding light, and suddenly, the maze’s gravity shifts back to normal. The walls return to their original positions, and you find yourself back in the familiar room. "We did it!" Max cheers.',
      animation: 'OrbActivation',
      image: 'orb_activation.jpg',
      choices: [
        Choice(text: 'Celebrate the success', nextNode: 'CelebrateSuccessNode'),
        Choice(text: 'Review what happened', nextNode: 'ReviewMazeNode'),
        Choice(
            text: 'Prepare for the next challenge',
            nextNode: 'PrepareNextChallengeNode'),
      ],
    ),
    'PrepareNextChallengeNode': StoryNode(
      text:
      'With the maze behind you, you and Max prepare for the next challenge. The orb’s light fades, and you brace yourselves for whatever comes next. "Let’s stay focused," Max advises, as you move on.',
      animation: 'PreparingForNextChallenge',
      image: 'preparing_for_next_challenge.jpg',
      choices: [
        Choice(
            text: 'Move on to the next challenge',
            nextNode: 'NextChallengeNode'),
        Choice(text: 'Take a moment to rest', nextNode: 'RestNode'),
        Choice(
            text: 'Review what you’ve learned',
            nextNode: 'ReviewLearningsNode'),
      ],
    ),
    'CelebrateSuccessNode': StoryNode(
      text:
      'You and Max celebrate your success in overcoming the maze. The challenge has been a tough one, but you’re relieved to be done. "Great job," Max says, shaking your hand. "What’s next?"',
      animation: 'Celebration',
      image: 'celebration.jpg',
      choices: [
        Choice(text: 'Review the challenge', nextNode: 'ReviewChallengeNode'),
        Choice(
            text: 'Prepare for the next challenge',
            nextNode: 'PrepareNextChallengeNode'),
        Choice(text: 'Take a moment to relax', nextNode: 'RelaxNode'),
      ],
    ),
    'ReviewChallengeNode': StoryNode(
      text:
      'You review the maze challenge, analyzing what went well and what could be improved. Max offers his insights as well, and together, you gain a better understanding of the maze’s complexities.',
      animation: 'ReviewingChallenge',
      image: 'review_challenge.jpg',
      choices: [
        Choice(
            text: 'Discuss the maze’s difficulties',
            nextNode: 'DiscussDifficultiesNode'),
        Choice(
            text: 'Plan for future challenges',
            nextNode: 'PlanFutureChallengesNode'),
        Choice(text: 'Move on to the next task', nextNode: 'NextTaskNode'),
      ],
    ),
    'RelaxNode': StoryNode(
      text:
      'You take a moment to relax, reflecting on the maze challenge. Max joins you, and you both take a deep breath, readying yourselves for whatever comes next.',
      animation: 'Relaxing',
      image: 'relaxation.jpg',
      choices: [
        Choice(text: 'Plan your next move', nextNode: 'PlanNextMoveNode'),
        Choice(
            text: 'Discuss the recent challenge',
            nextNode: 'DiscussChallengeNode'),
        Choice(
            text: 'Move on to the next challenge',
            nextNode: 'NextChallengeNode'),
      ],
    ),
    'PlanNextMoveNode': StoryNode(
      text:
      'You and Max sit down to plan your next move. With the maze challenge behind you, you discuss strategies for tackling future obstacles.',
      animation: 'PlanningNextMove',
      image: 'planning_next_move.jpg',
      choices: [
        Choice(
            text: 'Review the upcoming challenges',
            nextNode: 'ReviewUpcomingChallengesNode'),
        Choice(
            text: 'Take a break before proceeding', nextNode: 'TakeBreakNode'),
        Choice(text: 'Proceed to the next task', nextNode: 'NextTaskNode'),
      ],
    ),
    'NextChallengeNode': StoryNode(
      text:
      'You and Max move on to the next challenge, ready to tackle whatever comes next. The journey continues, with new obstacles and adventures awaiting you.',
      animation: 'NextChallenge',
      image: 'next_challenge.jpg',
      choices: [
        Choice(
            text: 'Dive into the next challenge',
            nextNode: 'StartNextChallengeNode'),
        Choice(text: 'Take a moment to strategize', nextNode: 'StrategizeNode'),
        Choice(
            text: 'Review your progress so far',
            nextNode: 'ReviewProgressNode'),
      ],
    ),
    'StrategizeNode': StoryNode(
      text:
      'You take a moment to strategize, planning how to approach the upcoming challenges. Max offers his insights, and you both feel more prepared.',
      animation: 'Strategizing',
      image: 'strategizing.jpg',
      choices: [
        Choice(
            text: 'Start the next challenge',
            nextNode: 'StartNextChallengeNode'),
        Choice(text: 'Take a break first', nextNode: 'TakeBreakNode'),
        Choice(
            text: 'Review your strategies', nextNode: 'ReviewStrategiesNode'),
      ],
    ),
    'ReviewProgressNode': StoryNode(
      text:
      'You review your progress, considering the challenges you’ve faced and how you’ve overcome them. Max joins in the reflection, and you both feel a sense of accomplishment.',
      animation: 'ReviewingProgress',
      image: 'review_progress.jpg',
      choices: [
        Choice(
            text: 'Move on to the next challenge',
            nextNode: 'NextChallengeNode'),
        Choice(text: 'Take a break to relax', nextNode: 'RelaxNode'),
        Choice(
            text: 'Plan for future challenges',
            nextNode: 'PlanFutureChallengesNode'),
      ],
    ),
  },

// Black Hole

  'Blackhole': {
    'start': StoryNode(
      text:
      ' it\'s now  Shaun\'s turn to press the button . will Shaun be the next Space Hero . "',
      animation: 'CardAppearance',
      image: 'anti_gravity_maze_card.jpg',
      choices: [
        Choice(text: 'Push the Button', nextNode: 'Blackholecard'),
      ],
    ),
    'Blackholecard': StoryNode(
      text:
      ' Shaun had pushed the button . the dial stops on no.5 , and a card appeared from the game . It says "BLACK HOLE NEARBY. "',
      animation: 'CardAppearance',
      image: 'anti_gravity_maze_card.jpg',
      choices: [
        Choice(text: 'Start the Challenge', nextNode: 'BlackholeThreat'),
      ],
    ),
    'blackHoleThreat': StoryNode(
      text:
      'As the house gets closer to the black hole, you realize the situation is critical. The gravitational pull is so strong that the house begins to shake and tremble. With no way to escape outside, you and the others must rely solely on your wits and the house’s structure to survive the impending doom.',
      animation: 'house_shaking',
      image: 'house_shaking',
      choices: [
        Choice(
            text: 'Secure the furniture to stabilize the house',
            nextNode: 'secureFurniture'),
        Choice(
            text: 'Try to reinforce the house with whatever you can find',
            nextNode: 'reinforceHouse'),
      ],
    ),
    'secureFurniture': StoryNode(
      text:
      'You and your friends scramble to secure the furniture, tying it down with ropes and any available materials. The house continues to shake violently, and every object in the house seems to be at risk of being thrown around. Securing the furniture might help keep things in place and reduce the chaos.',
      animation: 'securing_furniture',
      image: 'furniture_secured',
      choices: [
        Choice(
            text: 'Check for any additional materials to reinforce the house',
            nextNode: 'findMaterials'),
        Choice(
            text: 'Focus on keeping everyone calm and collected',
            nextNode: 'keepCalm'),
      ],
    ),
    'reinforceHouse': StoryNode(
      text:
      'You search the house for anything that might help reinforce its structure. Finding extra ropes, sturdy furniture, and heavy objects, you and the others use these items to try to stabilize the house as much as possible. The goal is to brace the house against the intense gravitational forces pulling it toward the black hole.',
      animation: 'reinforcing_house',
      image: 'reinforcement_materials',
      choices: [
        Choice(
            text: 'Make sure all reinforcements are securely in place',
            nextNode: 'secureReinforcements'),
        Choice(
            text: 'Prepare for potential damage and aftershocks',
            nextNode: 'prepareDamage'),
      ],
    ),
    'secureReinforcements': StoryNode(
      text:
      'With the reinforcements in place, you ensure everything is tightly secured. The house continues to shake, but you hope the added weight and support will help withstand the black hole’s pull. You and the others brace yourselves for the next phase of the ordeal.',
      animation: 'securing_reinforcements',
      image: 'reinforcements_in_place',
      choices: [
        Choice(
            text: 'Check for any immediate threats or damages',
            nextNode: 'checkDamage'),
        Choice(
            text: 'Reassess the situation and adjust as needed',
            nextNode: 'reassessSituation'),
      ],
    ),
    'findMaterials': StoryNode(
      text:
      'You search frantically for additional materials that might help reinforce the house. Among the scattered items, you find some old ropes, heavy furniture, and a few sturdy boards. Using these, you create makeshift supports to brace against the black hole’s pull.',
      animation: 'finding_materials',
      image: 'searching_for_materials',
      choices: [
        Choice(
            text: 'Use the materials to create additional supports',
            nextNode: 'createSupports'),
        Choice(
            text: 'Check if the current setup is holding',
            nextNode: 'checkSetup'),
      ],
    ),
    'createSupports': StoryNode(
      text:
      'You and the others work together to create additional supports with the materials you found. The house’s shaking makes the task challenging, but you manage to set up more reinforcements. The hope is that these extra supports will help prevent further damage and keep the house stable.',
      animation: 'creating_supports',
      image: 'supports_in_place',
      choices: [
        Choice(
            text: 'Ensure everyone is safely secured',
            nextNode: 'secureEveryone'),
        Choice(
            text: 'Prepare for any possible fallout or damage',
            nextNode: 'prepareFallout'),
      ],
    ),
    'checkSetup': StoryNode(
      text:
      'You check the current setup to ensure that the reinforcements and supports are holding against the black hole’s gravitational pull. The house continues to shake, and while the reinforcements seem to be helping, the situation remains precarious.',
      animation: 'checking_setup',
      image: 'setup_check',
      choices: [
        Choice(
            text: 'Continue to monitor and adjust as needed',
            nextNode: 'monitorAdjust'),
        Choice(
            text:
            'Focus on keeping the house and everyone as stable as possible',
            nextNode: 'keepStable'),
      ],
    ),
    'monitorAdjust': StoryNode(
      text:
      'You continue to monitor the situation closely, making adjustments as needed to keep the house stable. The gravitational forces are relentless, but your efforts are helping to keep things under control. The house still shakes violently, but the reinforcements are making a difference.',
      animation: 'monitoring_adjustments',
      image: 'monitoring_situation',
      choices: [
        Choice(
            text: 'Prepare for a possible critical moment',
            nextNode: 'prepareCritical'),
        Choice(
            text: 'Ensure everyone is ready for further challenges',
            nextNode: 'prepareChallenges'),
      ],
    ),
    'prepareCritical': StoryNode(
      text:
      'You prepare for a possible critical moment, knowing that the situation could change at any second. You ensure that everyone is securely positioned and ready for whatever might come next. The black hole’s pull remains strong, and you brace yourselves for the worst.',
      animation: 'preparing_for_critical',
      image: 'preparing_critical',
      choices: [
        Choice(
            text: 'Focus on keeping everyone calm and collected',
            nextNode: 'keepCalm'),
        Choice(
            text: 'Review the house’s condition and readiness',
            nextNode: 'reviewCondition'),
      ],
    ),
    'keepCalm': StoryNode(
      text:
      'You work to keep everyone calm and collected amid the chaos. The house continues to shake, but maintaining a level head is crucial for making sound decisions. You remind everyone to stay focused and prepare for any eventuality.',
      animation: 'keeping_calm',
      image: 'calm_under_pressure',
      choices: [
        Choice(
            text: 'Prepare for the potential worst-case scenario',
            nextNode: 'worstCase'),
        Choice(
            text: 'Focus on finding any remaining safety measures',
            nextNode: 'findSafety'),
      ],
    ),
    'prepareChallenges': StoryNode(
      text:
      'You make sure everyone is prepared for further challenges. The black hole’s pull is still strong, and you anticipate more difficulties ahead. You take a deep breath and prepare for the next phase of the ordeal, knowing that teamwork and quick thinking will be key to surviving.',
      animation: 'preparing_for_challenges',
      image: 'preparing_for_next_challenges',
      choices: [
        Choice(
            text: 'Plan your next steps and survival strategies',
            nextNode: 'planSurvival'),
        Choice(
            text: 'Keep an eye out for any changes in the house’s condition',
            nextNode: 'monitorChanges'),
      ],
    ),
    'planSurvival': StoryNode(
      text:
      'You and the others plan your next steps and survival strategies. The house is under constant threat from the black hole, and you must be ready for any changes or surprises. You discuss potential tactics and prepare for any new challenges that might arise.',
      animation: 'planning_survival',
      image: 'survival_plan',
      choices: [
        Choice(
            text: 'Execute the survival plan and stay alert',
            nextNode: 'executePlan'),
        Choice(
            text: 'Make final adjustments to the house’s stability',
            nextNode: 'finalAdjustments'),
      ],
    ),
    'executePlan': StoryNode(
      text:
      'You execute the survival plan, ensuring that everyone is in place and ready for whatever comes next. The house continues to shake, but your preparations are helping to keep things under control. You stay vigilant, knowing that the black hole’s pull is relentless and unpredictable.',
      animation: 'executing_plan',
      image: 'plan_execution',
      choices: [
        Choice(
            text: 'Monitor the house for any signs of failure',
            nextNode: 'monitorFailure'),
        Choice(
            text: 'Focus on maintaining morale and calm',
            nextNode: 'maintainMorale'),
      ],
    ),
    'monitorFailure': StoryNode(
      text:
      'You monitor the house closely for any signs of failure. The shaking is relentless, but your reinforcements are holding so far. The black hole’s pull remains strong, but you’re managing to keep the house from falling apart. You prepare for any potential problems that might arise.',
      animation: 'monitoring_failure',
      image: 'monitoring_house',
      choices: [
        Choice(
            text: 'Prepare for any critical moments or damage',
            nextNode: 'prepareCritical'),
        Choice(
            text: 'Stay vigilant and continue monitoring the situation',
            nextNode: 'stayVigilant'),
      ],
    ),
    'maintainMorale': StoryNode(
      text:
      'You focus on maintaining morale and calm among the group. The situation is tense, but keeping spirits high is essential for effective problem-solving. You encourage everyone to stay focused and work together to overcome the black hole’s relentless pull.',
      animation: 'maintaining_morale',
      image: 'group_morale',
      choices: [
        Choice(
            text: 'Revisit the survival plan and adjust if needed',
            nextNode: 'revisitPlan'),
        Choice(
            text: 'Prepare for the potential impact of a critical failure',
            nextNode: 'prepareImpact'),
      ],
    ),
    'prepareImpact': StoryNode(
      text:
      'You prepare for the potential impact of a critical failure. With the house shaking and the black hole’s pull growing stronger, you anticipate that the situation could deteriorate quickly. You make sure everyone is ready for any possible outcomes and adjust your strategies accordingly.',
      animation: 'preparing_impact',
      image: 'impact_preparedness',
      choices: [
        Choice(
            text: 'Execute emergency procedures if needed',
            nextNode: 'emergencyProcedures'),
        Choice(
            text: 'Review and finalize your plans for stabilization',
            nextNode: 'finalizePlans'),
      ],
    ),
    'stayVigilant': StoryNode(
      text:
      'You stay vigilant and continue monitoring the situation closely. The house’s condition is holding up for now, but the black hole’s pull is still a significant threat. You keep a close eye on any changes and remain ready to act if anything goes wrong.',
      animation: 'staying_vigilant',
      image: 'staying_alert',
      choices: [
        Choice(
            text: 'Make any necessary adjustments to the reinforcements',
            nextNode: 'adjustReinforcements'),
        Choice(
            text: 'Prepare for the possibility of a worst-case scenario',
            nextNode: 'prepareWorstCase'),
      ],
    ),
    'adjustReinforcements': StoryNode(
      text:
      'You make any necessary adjustments to the reinforcements to ensure they remain effective. The black hole’s pull continues to challenge your efforts, but your adjustments help maintain stability. You stay focused and prepared for any new developments.',
      animation: 'adjusting_reinforcements',
      image: 'reinforcement_adjustments',
      choices: [
        Choice(
            text: 'Prepare for potential fallout or damage',
            nextNode: 'prepareDamage'),
        Choice(
            text: 'Ensure everyone is secure and ready for the next challenge',
            nextNode: 'ensureReadiness'),
      ],
    ),
    'ensureReadiness': StoryNode(
      text:
      'You ensure that everyone is secure and ready for the next challenge. The black hole’s pull is still a significant threat, and you need to be prepared for any new difficulties. You take a final look around, making sure everything is in place before moving forward.',
      animation: 'ensuring_readiness',
      image: 'final_check',
      choices: [
        Choice(
            text: 'Revisit your strategy for handling the black hole',
            nextNode: 'revisitStrategy'),
        Choice(
            text: 'Prepare for potential critical moments',
            nextNode: 'prepareCritical'),
      ],
    ),
    'revisitStrategy': StoryNode(
      text:
      'You revisit your strategy for handling the black hole, making sure that all aspects are covered. The house continues to shake, but your strategy is designed to withstand the threat. You remain focused and ready to adapt as needed.',
      animation: 'revisiting_strategy',
      image: 'strategy_review',
      choices: [
        Choice(
            text: 'Execute the strategy and monitor the results',
            nextNode: 'executeStrategy'),
        Choice(
            text: 'Prepare for any unforeseen challenges',
            nextNode: 'prepareUnforeseen'),
      ],
    ),
    'prepareUnforeseen': StoryNode(
      text:
      'You prepare for any unforeseen challenges that might arise. The black hole’s pull is unpredictable, and you want to be ready for anything. You make final adjustments and ensure everyone is prepared for any surprises.',
      animation: 'preparing_unforeseen',
      image: 'unexpected_challenges',
      choices: [
        Choice(
            text: 'Execute your final plan and stay vigilant',
            nextNode: 'executeFinalPlan'),
        Choice(
            text: 'Monitor the house closely for any changes',
            nextNode: 'monitorChanges'),
      ],
    ),
    'executeFinalPlan': StoryNode(
      text:
      'You execute your final plan, ensuring that all measures are in place and everyone is ready. The house continues to shake under the black hole’s pull, but your preparations are holding strong. You stay vigilant and prepared for any new developments.',
      animation: 'executing_final_plan',
      image: 'final_plan_execution',
      choices: [
        Choice(
            text: 'Monitor the situation and adjust if necessary',
            nextNode: 'monitorAdjust'),
        Choice(
            text: 'Focus on maintaining calm and readiness',
            nextNode: 'maintainReadiness'),
      ],
    ),
    'maintainReadiness': StoryNode(
      text:
      'You focus on maintaining calm and readiness among the group. The black hole’s pull is unrelenting, and you need to be prepared for any changes or new challenges. You ensure that everyone stays focused and ready to handle any situation that arises.',
      animation: 'maintaining_readiness',
      image: 'group_readiness',
      choices: [
        Choice(
            text: 'Prepare for the impact of the black hole’s pull',
            nextNode: 'prepareImpact'),
        Choice(
            text: 'Stay alert and monitor for any critical issues',
            nextNode: 'stayAlert'),
      ],
    ),
    'stayAlert': StoryNode(
      text:
      'You stay alert and continue monitoring the situation closely. The black hole’s pull remains a constant threat, and you need to be ready for any critical issues that might arise. Your vigilance is key to surviving this challenge.',
      animation: 'staying_alert',
      image: 'alert_state',
      choices: [
        Choice(
            text: 'Execute emergency procedures if needed',
            nextNode: 'emergencyProcedures'),
        Choice(
            text: 'Revisit and finalize your plans for stabilization',
            nextNode: 'finalizePlans'),
      ],
    ),
    'emergencyProcedures': StoryNode(
      text:
      'You execute emergency procedures, ensuring that all safety measures are in place. The black hole’s pull is intense, but your preparations are helping to keep things under control. You remain ready to act quickly if any new issues arise.',
      animation: 'executing_emergency',
      image: 'emergency_procedures',
      choices: [
        Choice(
            text: 'Review the situation and adjust plans if necessary',
            nextNode: 'reviewAdjust'),
        Choice(
            text: 'Ensure that everyone is securely positioned and ready',
            nextNode: 'securePositioned'),
      ],
    ),
    'finalizePlans': StoryNode(
      text:
      'You finalize your plans for stabilization, ensuring that all measures are in place and ready for any situation. The black hole’s pull remains a significant threat, but your thorough preparations give you hope. You stay vigilant and ready to adapt as needed.',
      animation: 'finalizing_plans',
      image: 'final_plan',
      choices: [
        Choice(
            text: 'Monitor the house for any signs of trouble',
            nextNode: 'monitorTrouble'),
        Choice(
            text: 'Prepare for the potential impact of the black hole',
            nextNode: 'prepareImpact'),
      ],
    ),
    'monitorTrouble': StoryNode(
      text:
      'You monitor the house closely for any signs of trouble. The black hole’s pull continues to challenge your efforts, but your preparations are holding up. You stay alert and ready to make any necessary adjustments to keep the house stable.',
      animation: 'monitoring_trouble',
      image: 'monitoring_house',
      choices: [
        Choice(
            text: 'Continue with the current strategy',
            nextNode: 'currentStrategy'),
        Choice(
            text: 'Prepare for any possible critical issues',
            nextNode: 'prepareCritical'),
      ],
    ),
    'currentStrategy': StoryNode(
      text:
      'You continue with the current strategy, making sure all measures are still effective against the black hole’s pull. The situation remains tense, but your preparations are helping to keep the house stable. You stay vigilant and ready for any new developments.',
      animation: 'continuing_strategy',
      image: 'strategy_continued',
      choices: [
        Choice(
            text: 'Reassess the situation and adjust as needed',
            nextNode: 'reassessSituation'),
        Choice(
            text: 'Prepare for potential fallout or damage',
            nextNode: 'prepareDamage'),
      ],
    ),
    'reassessSituation': StoryNode(
      text:
      'You reassess the situation, ensuring that all aspects are covered and all preparations are still effective. The black hole’s pull remains strong, and you adjust your strategies as needed to maintain stability and prepare for any potential issues.',
      animation: 'reassessing_situation',
      image: 'situation_assessment',
      choices: [
        Choice(
            text: 'Prepare for the potential impact of critical issues',
            nextNode: 'prepareCritical'),
        Choice(
            text: 'Monitor the house for any signs of failure',
            nextNode: 'monitorFailure'),
      ],
    ),
    'prepareDamage': StoryNode(
      text:
      'You prepare for potential damage or fallout, ensuring that all safety measures are in place. The black hole’s pull is relentless, and you anticipate that the situation might worsen. You stay focused on minimizing damage and keeping everyone safe.',
      animation: 'preparing_damage',
      image: 'damage_preparedness',
      choices: [
        Choice(
            text: 'Check for any immediate threats or issues',
            nextNode: 'checkThreats'),
        Choice(
            text: 'Ensure that the house remains stable and secure',
            nextNode: 'ensureStability'),
      ],
    ),
    'checkThreats': StoryNode(
      text:
      'You check for any immediate threats or issues that might arise due to the black hole’s pull. The house is shaking violently, but your preparations are holding up. You stay alert for any new developments and make adjustments as needed.',
      animation: 'checking_threats',
      image: 'threat_check',
      choices: [
        Choice(
            text: 'Prepare for the potential impact of critical moments',
            nextNode: 'prepareCritical'),
        Choice(
            text: 'Monitor the situation and adjust as necessary',
            nextNode: 'monitorAdjust'),
      ],
    ),
    'ensureStability': StoryNode(
      text:
      'You ensure that the house remains as stable and secure as possible. The black hole’s pull continues to challenge your efforts, but your preparations are helping to maintain stability. You stay focused on keeping everything under control.',
      animation: 'ensuring_stability',
      image: 'stability_check',
      choices: [
        Choice(
            text: 'Prepare for any unforeseen challenges',
            nextNode: 'prepareUnforeseen'),
        Choice(
            text: 'Revisit and finalize your stabilization plans',
            nextNode: 'finalizePlans'),
      ],
    ),
    'prepareCritical': StoryNode(
      text:
      'You prepare for any critical issues that might arise due to the black hole’s pull. The situation remains tense, and you anticipate that new challenges may come up. You stay ready to act quickly and decisively if needed.',
      animation: 'preparing_critical',
      image: 'critical_preparedness',
      choices: [
        Choice(
            text: 'Execute emergency procedures if needed',
            nextNode: 'emergencyProcedures'),
        Choice(
            text: 'Review and finalize your plans for stabilization',
            nextNode: 'finalizePlans'),
      ],
    ),
    'monitorAdjust': StoryNode(
      text:
      'You continue monitoring the situation and adjust your plans as necessary. The black hole’s pull is ongoing, and you remain prepared for any new challenges that might arise. Your vigilance is key to navigating this difficult situation.',
      animation: 'monitoring_adjust',
      image: 'situation_monitor',
      choices: [
        Choice(
            text: 'Execute your final plan and stay vigilant',
            nextNode: 'executeFinalPlan'),
        Choice(
            text: 'Prepare for any unforeseen challenges',
            nextNode: 'prepareUnforeseen'),
      ],
    ),
    'prepareImpact': StoryNode(
      text:
      'You prepare for the impact of the black hole’s pull, ensuring that all measures are in place to handle any potential damage. The situation remains critical, and your preparations are crucial to surviving this challenge. You stay focused and ready for any new developments.',
      animation: 'preparing_impact',
      image: 'impact_preparedness',
      choices: [
        Choice(
            text: 'Monitor the house closely for any changes',
            nextNode: 'monitorChanges'),
        Choice(
            text: 'Revisit and adjust your stabilization plans',
            nextNode: 'finalizePlans'),
      ],
    ),
    'monitorChanges': StoryNode(
      text:
      'You monitor the house closely for any changes, ensuring that your preparations are still effective against the black hole’s pull. The situation remains challenging, but your vigilance helps maintain stability. You stay ready for any new issues that might arise.',
      animation: 'monitoring_changes',
      image: 'house_changes',
      choices: [
        Choice(
            text: 'Prepare for the potential impact of critical moments',
            nextNode: 'prepareCritical'),
        Choice(
            text: 'Review and adjust your plans as needed',
            nextNode: 'revisitStrategy'),
      ],
    ),
    'prepareUnforeseen': StoryNode(
      text:
      'You prepare for any unforeseen challenges that might arise due to the black hole’s pull. The situation remains unpredictable, and your preparations are crucial to handling any surprises. You stay vigilant and ready to act quickly if needed.',
      animation: 'preparing_unforeseen',
      image: 'unforeseen_challenges',
      choices: [
        Choice(
            text: 'Execute your final plan and stay vigilant',
            nextNode: 'executeFinalPlan'),
        Choice(
            text: 'Monitor the situation closely for any changes',
            nextNode: 'monitorChanges'),
      ],
    ),
    'prepareCritical': StoryNode(
      text:
      'You prepare for the potential impact of any critical issues that might arise. The black hole’s pull remains intense, and you need to be ready for any major developments. Your preparations help you stay focused and ready to adapt as needed.',
      animation: 'preparing_critical',
      image: 'critical_preparedness',
      choices: [
        Choice(
            text: 'Execute emergency procedures if needed',
            nextNode: 'emergencyProcedures'),
        Choice(
            text: 'Finalize and adjust your plans for stabilization',
            nextNode: 'finalizePlans'),
      ],
    ),
    'monitorFailure': StoryNode(
      text:
      'You monitor the house for any signs of failure due to the black hole’s pull. The situation is critical, and you need to be ready for any major issues. Your vigilance helps you stay on top of any potential problems.',
      animation: 'monitoring_failure',
      image: 'failure_check',
      choices: [
        Choice(
            text: 'Prepare for potential damage or fallout',
            nextNode: 'prepareDamage'),
        Choice(
            text: 'Ensure that all measures are in place and effective',
            nextNode: 'ensureEffectiveness'),
      ],
    ),
    'ensureEffectiveness': StoryNode(
      text:
      'You ensure that all measures are in place and effective against the black hole’s pull. The situation remains challenging, but your preparations help to keep things under control. You stay focused and ready to make any necessary adjustments.',
      animation: 'ensuring_effectiveness',
      image: 'effectiveness_check',
      choices: [
        Choice(
            text: 'Revisit and finalize your plans for stabilization',
            nextNode: 'finalizePlans'),
        Choice(
            text: 'Prepare for any unforeseen challenges',
            nextNode: 'prepareUnforeseen'),
      ],
    ),
    'prepareCritical': StoryNode(
      text:
      'You prepare for any critical issues that might arise due to the electrical storm. The intensity of the storm is increasing, and you anticipate that new challenges may come up. You stay ready to act quickly and decisively if needed.',
      animation: 'preparing_critical',
      image: 'critical_preparedness',
      choices: [
        Choice(
            text: 'Execute emergency procedures if needed',
            nextNode: 'emergencyProcedures'),
        Choice(
            text: 'Review and finalize your plans for stabilization',
            nextNode: 'finalizePlans'),
      ],
    ),
    'prepareUnforeseen': StoryNode(
      text:
      'You prepare for any unforeseen challenges that might arise due to the electrical storm. The situation remains unpredictable, and your preparations are crucial to handling any surprises. You stay vigilant and ready to act quickly if needed.',
      animation: 'preparing_unforeseen',
      image: 'unforeseen_challenges',
      choices: [
        Choice(
            text: 'Execute your final plan and stay vigilant',
            nextNode: 'executeFinalPlan'),
        Choice(
            text: 'Monitor the situation closely for any changes',
            nextNode: 'monitorChanges'),
      ],
    ),
    'executeFinalPlan': StoryNode(
      text:
      'You execute your final plan, ensuring that all measures are in place and everyone is ready. The electrical storm’s intensity continues to challenge your efforts, but your preparations are holding strong. You stay vigilant and prepared for any new developments.',
      animation: 'executing_final_plan',
      image: 'final_plan_execution',
      choices: [
        Choice(
            text: 'Monitor the situation and adjust if necessary',
            nextNode: 'monitorAdjust'),
        Choice(
            text: 'Focus on maintaining calm and readiness',
            nextNode: 'maintainReadiness'),
      ],
    ),
    'maintainReadiness': StoryNode(
      text:
      'You focus on maintaining calm and readiness among the group. The electrical storm’s intensity is unrelenting, and you need to be prepared for any changes or new challenges. You ensure that everyone stays focused and ready to handle any situation that arises.',
      animation: 'maintaining_readiness',
      image: 'group_readiness',
      choices: [
        Choice(
            text: 'Prepare for the impact of the electrical storm',
            nextNode: 'prepareImpact'),
        Choice(
            text: 'Stay alert and monitor for any critical issues',
            nextNode: 'stayAlert'),
      ],
    ),
    'prepareImpact': StoryNode(
      text:
      'The black hole’s pull begins to intensify, and you brace yourself for the immense force. You ensure that all precautions are in place, preparing the house for the extreme gravitational forces. Every second counts, and your survival depends on how well you’ve prepared for this cosmic challenge.',
      animation: 'preparing_impact',
      image: 'blackhole_preparedness',
      choices: [
        Choice(
            text: 'Monitor the house closely for sudden gravitational shifts',
            nextNode: 'monitorChanges'),
        Choice(
            text: 'Revisit and adjust your stabilization plans',
            nextNode: 'finalizePlans'),
      ],
    ),
    'monitorChanges': StoryNode(
      text:
      'You focus on monitoring the house for any immediate effects of the black hole’s pull. Minor gravitational shifts begin to affect the structure, but your preparations are holding up for now. You need to stay alert to any sudden changes, as things could spiral out of control at any moment.',
      animation: 'monitoring_changes',
      image: 'house_gravitational_shifts',
      choices: [
        Choice(
            text:
            'Prepare for the potential impact of critical gravitational surges',
            nextNode: 'prepareCritical'),
        Choice(
            text: 'Review and adjust your strategy as needed',
            nextNode: 'revisitStrategy'),
      ],
    ),
    'prepareUnforeseen': StoryNode(
      text:
      'You brace for any unforeseen gravitational spikes from the black hole. The situation is highly unpredictable, and your readiness to handle surprise events is critical to keeping the house intact. You stay alert, knowing that any misstep could be catastrophic.',
      animation: 'preparing_unforeseen',
      image: 'unforeseen_gravitational_challenges',
      choices: [
        Choice(
            text: 'Execute your final stabilization plan and remain vigilant',
            nextNode: 'executeFinalPlan'),
        Choice(
            text:
            'Monitor the situation closely for any drastic gravitational changes',
            nextNode: 'monitorChanges'),
      ],
    ),
    'prepareCritical': StoryNode(
      text:
      'You prepare for any critical surges in gravitational force. The black hole’s pull grows more intense, and you must be ready for any major fluctuations. Your preparations are vital to adapt quickly to any sudden changes.',
      animation: 'preparing_critical',
      image: 'critical_gravity_preparedness',
      choices: [
        Choice(
            text: 'Execute emergency stabilization procedures if needed',
            nextNode: 'emergencyProcedures'),
        Choice(
            text:
            'Finalize and adjust your plans to counter the black hole’s pull',
            nextNode: 'finalizePlans'),
      ],
    ),
    'monitorFailure': StoryNode(
      text:
      'You monitor the house for any signs of failure in the stabilization measures as the black hole’s gravitational force threatens to tear the house apart. The situation is critical, and you need to be prepared for any major structural issues. Your constant vigilance is key to preventing disaster.',
      animation: 'monitoring_failure',
      image: 'failure_check_gravity',
      choices: [
        Choice(
            text:
            'Prepare for potential structural damage or gravitational collapse',
            nextNode: 'prepareDamage'),
        Choice(
            text:
            'Ensure that all stabilization measures are in place and effective',
            nextNode: 'ensureEffectiveness'),
      ],
    ),
    'ensureEffectiveness': StoryNode(
      text:
      'You ensure that all stabilization measures are holding against the black hole’s gravitational force. The pull remains strong, but your preparations help keep the house from being dragged in. You stay focused, ready to make any last-minute adjustments.',
      animation: 'ensuring_effectiveness',
      image: 'effectiveness_check_gravity',
      choices: [
        Choice(
            text:
            'Revisit and finalize your stabilization plans to maintain control',
            nextNode: 'finalizePlans'),
        Choice(
            text: 'Prepare for any unforeseen gravitational surges',
            nextNode: 'prepareUnforeseen'),
      ],
    ),
  },

// Electric Storm

  'ElectricStorm': {
    'start': StoryNode(
      text:
      ' it\'s now again max turn to press the button . Max now only require to score no.5 to complete the Game. But the Game has it,s own plans . Max pushed the button , the dial quickly swing to no.3 , and yet another card , another challenge reappears infront of the group . "',
      animation: 'CardAppearance',
      image: 'anti_gravity_maze_card.jpg',
      choices: [
        Choice(text: 'Electric Storm ', nextNode: 'ElectricStormStart'),
      ],
    ),
    'ElectricStormStart': StoryNode(
      text:
      'The card reads "Electrical Storm." The room dims, and the sound of crackling electricity fills the air. Panic begins to set in as the lights flicker wildly. You, Max, and Shaun exchange nervous glances. The house trembles as arcs of electricity surge across the walls. You’ve never faced anything like this, and you feel the pressure to make the next move.',
      animation: 'storm_build_up',
      image: 'dimly_lit_room_with_flickering_lights.jpg',
      choices: [
        Choice(
            text:
            'Stay inside and look for something to shield yourself from the electricity.',
            nextNode: 'SearchForShield'),
        Choice(
            text:
            'Rush outside and try to find a safe spot away from the house.',
            nextNode: 'RushOutside'),
      ],
    ),
    'SearchForShield': StoryNode(
      text:
      'You frantically scan the room, your mind racing to find something that could protect you. You spot a heavy wooden table, but it’s risky. You call Max and Shaun to take cover with you under the table, hoping it will block the electricity.',
      animation: 'search_room',
      image: 'protagonists_hiding_under_table.jpg',
      choices: [
        Choice(
            text: 'Stay under the table and wait for the storm to pass.',
            nextNode: 'WaitUnderTable'),
        Choice(
            text:
            'Look for something sturdier that might offer more protection.',
            nextNode: 'LookForSolidShield'),
      ],
    ),
    'RushOutside': StoryNode(
      text:
      'With no time to think, you dash towards the door. As you fling it open, a bright flash of lightning blinds you. The storm outside is even fiercer than you imagined. The air hums with static, and you can feel the electricity crackling around you.',
      animation: 'rush_outside',
      image: 'protagonists_rushing_outside_into_storm.jpg',
      choices: [
        Choice(
            text: 'Run back inside where it’s safer.',
            nextNode: 'ReturnInside'),
        Choice(
            text: 'Keep running through the storm to find shelter.',
            nextNode: 'KeepRunning'),
        Choice(
            text: 'Search the yard for something that can shield you.',
            nextNode: 'SearchYard'),
      ],
    ),
    'WaitUnderTable': StoryNode(
      text:
      'You and your friends huddle under the table. The crackling of electricity is all around you, but for now, the table seems to be holding up. The tension is unbearable as you wait for the storm to pass.',
      animation: 'waiting_tense',
      image: 'huddling_under_table.jpg',
      choices: [
        Choice(
            text: 'Wait longer and hope the storm dies down soon.',
            nextNode: 'WaitLonger'),
        Choice(
            text: 'Peek out from under the table to assess the situation.',
            nextNode: 'PeekOutFromTable'),
      ],
    ),
    'LookForSolidShield': StoryNode(
      text:
      'You spot an old wardrobe in the corner. It looks sturdier than the table, and it might offer more protection. You motion for Max and Shaun to follow you as you rush towards the wardrobe, hoping it will be enough to shield you from the electrical storm.',
      animation: 'scanning_room',
      image: 'spotting_wardrobe.jpg',
      choices: [
        Choice(
            text: 'Hide behind the wardrobe for safety.',
            nextNode: 'HideBehindWardrobe'),
        Choice(
            text: 'Abandon the idea and stay under the table.',
            nextNode: 'StickWithTable'),
      ],
    ),
    'ReturnInside': StoryNode(
      text:
      'You rush back inside, gasping for breath. The storm outside is too dangerous, and you realize the house, despite its cracks, is still a better option. Max and Shaun look at you, expecting a new plan.',
      animation: 'rushing_back_inside',
      image: 'rushing_back_into_house.jpg',
      choices: [
        Choice(
            text: 'Search for another place to hide inside.',
            nextNode: 'SearchInsideForShield'),
        Choice(
            text:
            'Tell Max and Shaun to stay close as you look for other solutions.',
            nextNode: 'StayTogetherInside'),
      ],
    ),
    'KeepRunning': StoryNode(
      text:
      'Despite the storm intensifying around you, you decide to push forward. Your heart races as bolts of electricity strike the ground near you. The air smells of ozone, and each step feels like it could be your last.',
      animation: 'running_in_storm',
      image: 'protagonist_running_through_storm.jpg',
      choices: [
        Choice(
            text: 'Find cover behind a nearby shed.',
            nextNode: 'HideBehindShed'),
        Choice(
            text: 'Keep running further away from the house.',
            nextNode: 'RunFurtherAway'),
      ],
    ),
    'SearchYard': StoryNode(
      text:
      'Frantically, you search the yard for anything that might help. You spot a metal tool shed in the corner, but it’s risky—metal can attract electricity. You weigh your options quickly.',
      animation: 'yard_search',
      image: 'yard_with_tool_shed.jpg',
      choices: [
        Choice(
            text: 'Take the risk and hide in the shed.',
            nextNode: 'HideInShed'),
        Choice(
            text: 'Look for something else to shield yourself.',
            nextNode: 'FindDifferentShield'),
      ],
    ),
    'WaitLonger': StoryNode(
      text:
      'You continue to wait under the table. The storm outside shows no sign of letting up. The flashes of light and the sounds of crackling electricity seem endless, but you’re unsure if it’s safer to move yet.',
      animation: 'waiting_longer',
      image: 'protagonists_under_table_waiting.jpg',
      choices: [
        Choice(
            text: 'Continue waiting and hope the storm passes.',
            nextNode: 'StormStartsToPass'),
        Choice(
            text: 'Peek out to see if it’s safe to move.',
            nextNode: 'PeekOutFromTable'),
      ],
    ),
    'PeekOutFromTable': StoryNode(
      text:
      'Carefully, you peek out from under the table. The storm is still raging, but you notice that some of the lightning arcs are starting to shift away from the house. You signal to Max and Shaun that it might be safer to move soon.',
      animation: 'peeking_out',
      image: 'peeking_out_from_under_table.jpg',
      choices: [
        Choice(
            text: 'Stay put and wait a little longer.', nextNode: 'WaitLonger'),
        Choice(
            text: 'Make a run for another part of the house.',
            nextNode: 'MakeRunForIt'),
      ],
    ),
    'StormStartsToPass': StoryNode(
      text:
      'After what feels like hours, the storm begins to subside. The crackling sounds fade, and the blinding flashes become less frequent. You let out a sigh of relief, knowing that the worst is almost over.',
      animation: 'storm_subsiding',
      image: 'storm_fading_away.jpg',
      choices: [
        Choice(
            text: 'Assess the damage and check on Max and Shaun.',
            nextNode: 'AssessDamage'),
        Choice(
            text: 'Step out and prepare for the next challenge.',
            nextNode: 'PrepareForNextChallenge'),
      ],
    ),
    'HideBehindWardrobe': StoryNode(
      text:
      'You and your friends quickly duck behind the wardrobe. It provides more protection than the table, but the storm is still fierce. The air is thick with static electricity, and you feel the tension in the room.',
      animation: 'hiding_behind_wardrobe',
      image: 'hiding_behind_wardrobe.jpg',
      choices: [
        Choice(
            text: 'Stay hidden until the storm passes.',
            nextNode: 'StayHiddenUntilStormPasses'),
        Choice(
            text: 'Look for a more secure place in the house.',
            nextNode: 'LookForMoreSecurePlace'),
      ],
    ),
    'MakeRunForIt': StoryNode(
      text:
      'Deciding it’s too risky to stay under the table any longer, you signal Max and Shaun to follow. You dash across the room, lightning flickering around you as you make a break for a safer spot.',
      animation: 'making_a_run',
      image: 'rushing_to_safety.jpg',
      choices: [
        Choice(
            text: 'Hide behind the wardrobe for safety.',
            nextNode: 'HideBehindWardrobe'),
        Choice(
            text: 'Find another room to take shelter in.',
            nextNode: 'SearchAnotherRoom'),
      ],
    ),
    'AssessDamage': StoryNode(
      text:
      'As the storm dies down, you step out and examine the damage. The walls are scorched with black marks, and the air smells of burnt ozone, but you and your friends are safe. Max and Shaun give you relieved smiles.',
      animation: 'surveying_damage',
      image: 'damaged_room.jpg',
      choices: [
        Choice(
            text: 'Celebrate surviving the storm.',
            nextNode: 'CelebrateSurvival'),
        Choice(
            text: 'Prepare for what’s next.', nextNode: 'NextChallengeBegins'),
      ],
    ),
    'CelebrateSurvival': StoryNode(
      text:
      'You let out a breath you didn’t realize you were holding. "We made it," Max says, still catching his breath. Shaun gives you a shaky smile, and you all share a brief moment of victory. But you know the game isn’t over yet.',
      animation: 'celebration',
      image: 'relieved_group.jpg',
      choices: [
        Choice(
            text: 'Get ready for the next challenge.',
            nextNode: 'NextChallengeBegins'),
      ],
    ),
    'StayHiddenUntilStormPasses': StoryNode(
      text:
      'You decide to stay hidden behind the wardrobe. The storm rages on, but the wardrobe provides a strong barrier. You can hear the storm’s intensity begin to wane, though the air remains charged with static electricity.',
      animation: 'staying_hidden',
      image: 'hidden_behind_wardrobe.jpg',
      choices: [
        Choice(
            text: 'Wait until the storm completely subsides before moving.',
            nextNode: 'StormEnds'),
        Choice(
            text: 'Check to see if the storm has lessened and move cautiously.',
            nextNode: 'PeekOutFromWardrobe'),
      ],
    ),
    'LookForMoreSecurePlace': StoryNode(
      text:
      'You search the house for a more secure place to hide. After a quick scan, you find a small storage room with reinforced walls. It’s a bit cramped but could offer better protection from the storm.',
      animation: 'searching_house',
      image: 'reinforced_storage_room.jpg',
      choices: [
        Choice(
            text: 'Move into the storage room for better safety.',
            nextNode: 'HideInStorageRoom'),
        Choice(
            text: 'Return to the wardrobe and stay hidden there.',
            nextNode: 'HideBehindWardrobe'),
      ],
    ),
    'SearchAnotherRoom': StoryNode(
      text:
      'You and your friends rush to another room. You find a small, windowless room with thick walls, offering some protection from the storm. It’s not ideal, but it’s safer than staying exposed.',
      animation: 'searching_room',
      image: 'small_windowless_room.jpg',
      choices: [
        Choice(
            text: 'Take shelter in the small room.',
            nextNode: 'HideInSmallRoom'),
        Choice(
            text: 'Return to the previous room and wait there.',
            nextNode: 'ReturnToPreviousRoom'),
      ],
    ),
    'HideInShed': StoryNode(
      text:
      'You take the risk and hide in the metal shed. The metal walls hum with static electricity, but you manage to find a corner away from the most intense arcs. It’s a tense wait, hoping the metal won’t attract more lightning.',
      animation: 'hiding_in_shed',
      image: 'inside_metal_shed.jpg',
      choices: [
        Choice(
            text: 'Wait inside the shed until the storm passes.',
            nextNode: 'StormEnds'),
        Choice(
            text: 'Attempt to find a safer location outside.',
            nextNode: 'SearchForSaferLocation'),
      ],
    ),
    'FindDifferentShield': StoryNode(
      text:
      'You continue searching the yard for a better shield. After a frantic search, you find a large tarp that might provide some cover. It’s not perfect, but it could offer some temporary protection.',
      animation: 'finding_tarp',
      image: 'finding_large_tarp.jpg',
      choices: [
        Choice(
            text: 'Use the tarp for cover and wait out the storm.',
            nextNode: 'TarpCover'),
        Choice(
            text: 'Look for something sturdier.',
            nextNode: 'SearchForSturdierShield'),
      ],
    ),
    'HideInStorageRoom': StoryNode(
      text:
      'You and your friends squeeze into the storage room. The reinforced walls provide better protection, and you feel a bit safer. The storm outside continues to rage, but you’re more shielded from the worst of it.',
      animation: 'in_storage_room',
      image: 'inside_storage_room.jpg',
      choices: [
        Choice(
            text: 'Stay in the storage room until the storm subsides.',
            nextNode: 'StormEnds'),
        Choice(
            text: 'Check if it’s safe to return to the main area.',
            nextNode: 'CheckMainArea'),
      ],
    ),
    'HideInSmallRoom': StoryNode(
      text:
      'The small, windowless room provides a bit of respite from the storm. The thick walls muffle the sounds of the raging storm outside, making it somewhat more bearable. You and your friends huddle together, waiting for the storm to pass.',
      animation: 'in_small_room',
      image: 'inside_small_room.jpg',
      choices: [
        Choice(
            text: 'Wait in the room until the storm is over.',
            nextNode: 'StormEnds'),
        Choice(
            text: 'Check if the storm has lessened and move cautiously.',
            nextNode: 'PeekOutFromSmallRoom'),
      ],
    ),
    'StormEnds': StoryNode(
      text:
      'The storm finally subsides. The once blinding flashes of lightning and the deafening crackling of electricity fade away. You and your friends are exhausted but relieved that the worst is over. The house shows signs of damage, but everyone is safe.',
      animation: 'storm_ends',
      image: 'storm_ends.jpg',
      choices: [
        Choice(
            text: 'Assess the damage and check on Max and Shaun.',
            nextNode: 'AssessDamage'),
        Choice(
            text: 'Step out and prepare for the next challenge.',
            nextNode: 'PrepareForNextChallenge'),
      ],
    ),
    'PeekOutFromWardrobe': StoryNode(
      text:
      'Carefully, you peek out from behind the wardrobe. The storm has lessened significantly, and the air is no longer crackling with electricity. It seems like a good time to move to a more secure place.',
      animation: 'peeking_out',
      image: 'peeking_out_from_wardrobe.jpg',
      choices: [
        Choice(
            text: 'Move to the storage room for better safety.',
            nextNode: 'HideInStorageRoom'),
        Choice(
            text: 'Return to the main area to check for other options.',
            nextNode: 'ReturnToMainArea'),
      ],
    ),
    'PeekOutFromSmallRoom': StoryNode(
      text:
      'You cautiously peek out from the small room. The storm has abated, and the worst seems to be over. You can see the damage to the house but feel it’s safe to move out and assess the situation.',
      animation: 'peeking_out_from_small_room',
      image: 'peeking_out_from_small_room.jpg',
      choices: [
        Choice(
            text: 'Exit the small room and assess the damage.',
            nextNode: 'AssessDamage'),
        Choice(
            text: 'Prepare for the next challenge.',
            nextNode: 'PrepareForNextChallenge'),
      ],
    ),
    'PrepareForNextChallenge': StoryNode(
      text:
      'With the storm behind you, it’s time to brace yourselves for the next challenge. The house may have been battered, but your journey is far from over. You gather your strength and prepare to face whatever comes next.',
      animation: 'preparing_for_next_challenge',
      image: 'preparing_for_next_challenge.jpg',
      choices: [
        Choice(
            text: 'Proceed to the next challenge.', nextNode: 'NextChallenge'),
      ],
    ),
    'SearchInsideForShield': StoryNode(
      text:
      'You and your friends search the house for a better place to hide. You find a reinforced closet with thick wooden walls, offering some protection from the storm. It’s cramped but safer than most places.',
      animation: 'searching_closet',
      image: 'reinforced_closet.jpg',
      choices: [
        Choice(
            text: 'Hide in the reinforced closet.', nextNode: 'HideInCloset'),
        Choice(
            text: 'Continue searching for a more secure location.',
            nextNode: 'SearchForMoreSecureLocation'),
      ],
    ),
    'StayTogetherInside': StoryNode(
      text:
      'You instruct Max and Shaun to stay close as you search for other solutions. You find a small, secure room in the house with minimal damage, offering some protection from the storm’s residual effects.',
      animation: 'staying_together',
      image: 'secure_room.jpg',
      choices: [
        Choice(
            text: 'Take shelter in the secure room.',
            nextNode: 'HideInSecureRoom'),
        Choice(
            text: 'Continue exploring for a safer spot.',
            nextNode: 'ContinueExploring'),
      ],
    ),
    'HideInShed': StoryNode(
      text:
      'You hide in the metal shed. The static electricity in the metal is unsettling, but you manage to stay safe. The storm outside gradually fades, leaving you relieved but still on edge.',
      animation: 'safety_in_shed',
      image: 'inside_metal_shed.jpg',
      choices: [
        Choice(
            text: 'Exit the shed and assess the damage.',
            nextNode: 'AssessDamage'),
        Choice(
            text: 'Stay in the shed a little longer to ensure safety.',
            nextNode: 'StayInShed'),
      ],
    ),
    'SearchForSaferLocation': StoryNode(
      text:
      'You continue to search the yard, hoping to find a safer location. The storm is fierce, and finding cover is challenging. You realize that the best option might be to return to the house and regroup.',
      animation: 'searching_yard',
      image: 'yard_in_storm.jpg',
      choices: [
        Choice(
            text: 'Return to the house for safety.', nextNode: 'ReturnToHouse'),
        Choice(
            text: 'Look for shelter in a nearby structure.',
            nextNode: 'FindNearbyShelter'),
      ],
    ),
    'FindDifferentShield': StoryNode(
      text:
      'You continue searching for better protection. Finally, you find an old, metal cabinet that could provide some cover. It’s not ideal, but it might offer some temporary relief from the storm.',
      animation: 'finding_metal_cabinet',
      image: 'metal_cabinet.jpg',
      choices: [
        Choice(
            text: 'Use the metal cabinet for cover.',
            nextNode: 'UseMetalCabinet'),
        Choice(
            text: 'Search for something more effective.',
            nextNode: 'SearchForEffectiveShield'),
      ],
    ),
    'UseMetalCabinet': StoryNode(
      text:
      'You take cover behind the metal cabinet. The storm’s intensity gradually decreases, and the cabinet provides some shield against the remaining electrical activity. You and your friends wait it out, hoping the worst is over.',
      animation: 'hiding_behind_metal_cabinet',
      image: 'behind_metal_cabinet.jpg',
      choices: [
        Choice(
            text: 'Wait until the storm is fully over.', nextNode: 'StormEnds'),
        Choice(
            text: 'Assess the situation and decide on the next step.',
            nextNode: 'AssessSituation'),
      ],
    ),
    'ContinueExploring': StoryNode(
      text:
      'You decide to continue exploring the house for a safer place. After some time, you find a sturdy, reinforced basement that seems to offer good protection from the storm.',
      animation: 'exploring_basement',
      image: 'reinforced_basement.jpg',
      choices: [
        Choice(
            text: 'Take shelter in the basement.', nextNode: 'HideInBasement'),
        Choice(
            text: 'Continue looking for another safe spot.',
            nextNode: 'LookForOtherSafeSpots'),
      ],
    ),
    'HideInSecureRoom': StoryNode(
      text:
      'You and your friends take shelter in the secure room. It offers some protection from the storm’s residual effects. The storm outside continues to rage, but you’re relatively safe inside.',
      animation: 'inside_secure_room',
      image: 'inside_secure_room.jpg',
      choices: [
        Choice(text: 'Wait until the storm is over.', nextNode: 'StormEnds'),
        Choice(
            text: 'Prepare for the next challenge.',
            nextNode: 'PrepareForNextChallenge'),
      ],
    ),
    'NextChallengeBegins': StoryNode(
      text:
      'With the storm behind you, you turn your attention to the next challenge. The house may be damaged, but your journey continues. You and your friends prepare yourselves for whatever comes next.',
      animation: 'preparing_for_next_challenge',
      image: 'next_challenge_awaits.jpg',
      choices: [
        Choice(
            text: 'Proceed to the next challenge.', nextNode: 'NextChallenge'),
      ],
    ),
    'AssessSituation': StoryNode(
      text:
      'You assess the situation and find that the storm’s intensity has diminished. It seems safe to move on, but you need to be cautious. The storm has caused damage, and you need to decide on your next move carefully.',
      animation: 'assessing_situation',
      image: 'damage_assessment.jpg',
      choices: [
        Choice(
            text: 'Prepare for the next challenge.',
            nextNode: 'PrepareForNextChallenge'),
        Choice(
            text: 'Search for any remaining safe spots in the house.',
            nextNode: 'SearchForSafeSpots'),
      ],
    ),
    'HideInBasement': StoryNode(
      text:
      'You and your friends find refuge in the basement. The reinforced structure offers strong protection, and the storm’s intensity gradually fades. You are safe for now, but the journey isn’t over yet.',
      animation: 'inside_basement',
      image: 'inside_reinforced_basement.jpg',
      choices: [
        Choice(
            text: 'Wait until the storm is completely over.',
            nextNode: 'StormEnds'),
        Choice(
            text: 'Prepare for the next challenge.',
            nextNode: 'PrepareForNextChallenge'),
      ],
    ),
    'LookForOtherSafeSpots': StoryNode(
      text:
      'You continue searching the house for a better spot. After a thorough search, you find a small storage area that’s relatively safe from the storm. It’s not perfect, but it’s better than being exposed.',
      animation: 'searching_storage_area',
      image: 'small_storage_area.jpg',
      choices: [
        Choice(
            text: 'Hide in the storage area.', nextNode: 'HideInStorageArea'),
        Choice(
            text: 'Return to a previously explored location.',
            nextNode: 'ReturnToPreviousLocation'),
      ],
    ),
    'HideInStorageArea': StoryNode(
      text:
      'You and your friends take shelter in the small storage area. It offers some protection from the storm’s residual effects. You remain on alert as you wait for the storm to fully pass.',
      animation: 'inside_storage_area',
      image: 'inside_storage_area.jpg',
      choices: [
        Choice(text: 'Wait until the storm is over.', nextNode: 'StormEnds'),
        Choice(
            text: 'Prepare for the next challenge.',
            nextNode: 'PrepareForNextChallenge'),
      ],
    ),
  },

// Frozen Space

  'FrozenSpace': {
    'start': StoryNode(
      text:
      ' it\'s now Your turn to press the button . You now require to score no.7 to end the Game. But the Game has it,s own plans . You pushed the button , the dial quickly swing to no.5 , and yet another card , another challenge reappears infront of the group . Are You ready to face another Challenge and conquer the Space ? "',
      animation: 'CardAppearance',
      image: 'anti_gravity_maze_card.jpg',
      choices: [
        Choice(text: 'Frozen Space Drift ', nextNode: 'FrozenSpaceDrift'),
      ],
    ),

// Frozen Space Drift challenge
    'FrozenSpaceDrift': StoryNode(
      text:
      'The house drifts silently through the cold void of space. An eerie blue light emanates from outside as the house encounters a mysterious cosmic phenomenon—a frozen space drift. The temperature inside plummets, and the walls begin to frost over.\n\nMax, Alex, and Shaun shiver as they struggle to stay warm. “We need to find a way to stabilize the temperature and figure out what’s causing this,” Max says, his voice trembling. The house creaks ominously as if it’s trying to resist the icy grip of space.',
      animation: 'frozen_space_drift',
      image: 'frozen_space_drift.png',
      choices: [
        Choice(
            text: 'Inspect the house for damage',
            nextNode: 'FrozenSpaceDrift_InspectDamage'),
        Choice(
            text: 'Search for a heat source',
            nextNode: 'FrozenSpaceDrift_SearchHeatSource'),
        Choice(
            text: 'Analyze the cosmic phenomenon',
            nextNode: 'FrozenSpaceDrift_AnalyzePhenomenon'),
      ],
    ),

// Inspecting the house for damage
    'FrozenSpaceDrift_InspectDamage': StoryNode(
      text:
      'You examine the house’s interior, noticing that the frost is causing visible damage. The pipes are freezing, and some of the electronics are malfunctioning. “The cold is affecting everything,” Shaun observes.\n\nYou find a panel that’s been damaged by the cold. It seems to be connected to the house’s temperature control system. Repairing this could help stabilize the environment, but you need to be quick before the damage worsens.',
      animation: 'inspect_damage',
      image: 'inspect_damage.png',
      choices: [
        Choice(
            text: 'Attempt to repair the temperature control system',
            nextNode: 'FrozenSpaceDrift_RepairSystem'),
        Choice(
            text: 'Search for additional tools to aid in repair',
            nextNode: 'FrozenSpaceDrift_FindTools'),
      ],
    ),

// Repairing the temperature control system
    'FrozenSpaceDrift_RepairSystem': StoryNode(
      text:
      'You work on the damaged panel, using your skills to repair the temperature control system. As you work, the temperature inside begins to stabilize, but the house’s systems are still unstable. The cold has caused a series of cascading failures that are difficult to fix.\n\nSuddenly, an alert flashes on the panel—an external temperature fluctuation is affecting the house. You need to address this before it becomes a bigger problem.',
      animation: 'repair_system',
      image: 'repair_system.png',
      choices: [
        Choice(
            text: 'Stabilize the external temperature',
            nextNode: 'FrozenSpaceDrift_StabilizeTemperature'),
        Choice(
            text: 'Investigate the source of the fluctuation',
            nextNode: 'FrozenSpaceDrift_InvestigateFluctuation'),
      ],
    ),

// Searching for additional tools
    'FrozenSpaceDrift_FindTools': StoryNode(
      text:
      'You search the house for tools that might help with the repair. In the storage room, you find an old toolbox with some useful equipment, but the cold has made it hard to handle.\n\nAs you gather the tools, you notice that the temperature is dropping further, and the house is becoming more unstable. You need to act quickly to prevent further damage.',
      animation: 'find_tools',
      image: 'find_tools.png',
      choices: [
        Choice(
            text: 'Use the tools to repair the temperature control system',
            nextNode: 'FrozenSpaceDrift_RepairSystem'),
        Choice(
            text: 'Try to find a temporary heat source',
            nextNode: 'FrozenSpaceDrift_FindHeatSource'),
      ],
    ),

// Searching for a heat source
    'FrozenSpaceDrift_FindHeatSource': StoryNode(
      text:
      'You search the house for a temporary heat source. In the utility room, you find an old space heater that seems to be functioning. You set it up, but it’s not powerful enough to counteract the extreme cold.\n\nWhile it helps a bit, you realize that you need a more permanent solution to stabilize the temperature.',
      animation: 'find_heat_source',
      image: 'find_heat_source.png',
      choices: [
        Choice(
            text:
            'Use the heater while repairing the temperature control system',
            nextNode: 'FrozenSpaceDrift_RepairSystem'),
        Choice(
            text:
            'Investigate the cosmic phenomenon for a more permanent solution',
            nextNode: 'FrozenSpaceDrift_AnalyzePhenomenon'),
      ],
    ),

// Analyzing the cosmic phenomenon
    'FrozenSpaceDrift_AnalyzePhenomenon': StoryNode(
      text:
      'You study the cosmic phenomenon outside the house. Through the viewport, you see a swirling blue vortex emitting intense cold. It appears to be a natural space phenomenon affecting the house.\n\nThe analysis reveals that the vortex is causing severe temperature drops. You need to find a way to shield the house from this phenomenon.',
      animation: 'analyze_phenomenon',
      image: 'analyze_phenomenon.png',
      choices: [
        Choice(
            text: 'Create a makeshift shield for the house',
            nextNode: 'FrozenSpaceDrift_CreateShield'),
        Choice(
            text: 'Attempt to adjust the house’s external insulation',
            nextNode: 'FrozenSpaceDrift_AdjustInsulation'),
      ],
    ),

// Creating a makeshift shield
    'FrozenSpaceDrift_CreateShield': StoryNode(
      text:
      'You work together to create a makeshift shield using materials from around the house. The shield is designed to deflect the cold from the vortex. It’s a temporary measure but might buy you some time.\n\nThe temperature inside begins to stabilize a bit, but the shield won’t hold forever. You need to find a permanent solution soon.',
      animation: 'create_shield',
      image: 'create_shield.png',
      choices: [
        Choice(
            text: 'Continue with the repair and analysis',
            nextNode: 'FrozenSpaceDrift_RepairSystem'),
        Choice(
            text: 'Investigate other potential solutions',
            nextNode: 'FrozenSpaceDrift_InvestigateSolutions'),
      ],
    ),

// Adjusting the house’s external insulation
    'FrozenSpaceDrift_AdjustInsulation': StoryNode(
      text:
      'You attempt to adjust the house’s external insulation using whatever materials you can find. It’s a complex task, and the cold makes it even harder. The insulation improves slightly, but it’s still not enough to fully counteract the vortex’s effects.\n\nYou need to keep working to find a better solution.',
      animation: 'adjust_insulation',
      image: 'adjust_insulation.png',
      choices: [
        Choice(
            text: 'Continue with the repair and analysis',
            nextNode: 'FrozenSpaceDrift_RepairSystem'),
        Choice(
            text: 'Search for additional help or solutions',
            nextNode: 'FrozenSpaceDrift_InvestigateSolutions'),
      ],
    ),

// Investigating other potential solutions
    'FrozenSpaceDrift_InvestigateSolutions': StoryNode(
      text:
      'You and your friends brainstorm other potential solutions. After some searching, you find a set of old manuals and instructions on space phenomenon management. They provide some clues about advanced techniques to handle extreme cold.',
      animation: 'investigate_solutions',
      image: 'investigate_solutions.png',
      choices: [
        Choice(
            text: 'Apply advanced techniques from the manuals',
            nextNode: 'FrozenSpaceDrift_ApplyTechniques'),
        Choice(
            text: 'Search for more tools and resources',
            nextNode: 'FrozenSpaceDrift_FindMoreTools'),
      ],
    ),

// Applying advanced techniques
    'FrozenSpaceDrift_ApplyTechniques': StoryNode(
      text:
      'You apply the advanced techniques from the manuals. The house’s temperature begins to stabilize as you implement these methods. The vortex outside seems to lose some of its intensity, and the cold becomes more manageable.\n\nIt’s not completely resolved, but it’s a significant improvement. You need to monitor the situation closely and be ready for any sudden changes.',
      animation: 'apply_techniques',
      image: 'apply_techniques.png',
      choices: [
        Choice(
            text: 'Prepare for potential further challenges',
            nextNode: 'FrozenSpaceDrift_PrepareForChallenges'),
        Choice(
            text: 'Check for any additional anomalies',
            nextNode: 'FrozenSpaceDrift_CheckAnomalies'),
      ],
    ),

// Finding more tools
    'FrozenSpaceDrift_FindMoreTools': StoryNode(
      text:
      'You search for additional tools that might help manage the cold. After an extensive search, you find some useful items, including a thermal blanket and a portable heat generator. These could provide some relief, but they’re only temporary solutions.',
      animation: 'find_more_tools',
      image: 'find_more_tools.png',
      choices: [
        Choice(
            text: 'Use the tools to improve the house’s condition',
            nextNode: 'FrozenSpaceDrift_ImproveCondition'),
        Choice(
            text: 'Continue to focus on the advanced techniques',
            nextNode: 'FrozenSpaceDrift_ApplyTechniques'),
      ],
    ),

    'FrozenSpaceDrift_ImproveCondition': StoryNode(
      text:
      'You use the thermal blanket and portable heat generator to improve the house’s condition. The temperature stabilizes further, and the immediate threat from the cold is reduced. However, the house remains vulnerable to the external vortex.\n\nYou need to stay vigilant and prepare for any upcoming challenges.',
      animation: 'improve_condition',
      image: 'improve_condition.png',
      choices: [
        Choice(
            text: 'Prepare for potential further challenges',
            nextNode: 'FrozenSpaceDrift_PrepareForChallenges'),
        Choice(
            text: 'Conduct a thorough inspection for any new issues',
            nextNode: 'FrozenSpaceDrift_CheckAnomalies'),
      ],
    ),

// Preparing for potential further challenges
    'FrozenSpaceDrift_PrepareForChallenges': StoryNode(
      text:
      'With the immediate cold issue under control, you and your friends prepare for potential further challenges. You set up monitoring equipment to keep an eye on the house’s temperature and the external vortex.\n\nAs you finalize the preparations, you feel a sense of relief but remain on high alert, knowing that the situation could change at any moment.',
      animation: 'prepare_for_challenges',
      image: 'prepare_for_challenges.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Continue exploring for additional threats',
            nextNode: 'FrozenSpaceDrift_ExploreThreats'),
      ],
    ),

// Checking for additional anomalies
    'FrozenSpaceDrift_CheckAnomalies': StoryNode(
      text:
      'You conduct a thorough check for any additional anomalies in the house. After inspecting various systems, you discover a minor leak in the insulation that could worsen if not addressed. The leak could cause further temperature fluctuations.',
      animation: 'check_anomalies',
      image: 'check_anomalies.png',
      choices: [
        Choice(
            text: 'Seal the insulation leak',
            nextNode: 'FrozenSpaceDrift_SealLeak'),
        Choice(
            text: 'Monitor the leak and address it later',
            nextNode: 'FrozenSpaceDrift_MonitorLeak'),
      ],
    ),

// Sealing the insulation leak
    'FrozenSpaceDrift_SealLeak': StoryNode(
      text:
      'You work quickly to seal the insulation leak. With the leak patched up, the house’s internal temperature becomes more stable, and the immediate risk of further cold damage is reduced. However, the external vortex remains a concern.',
      animation: 'seal_leak',
      image: 'seal_leak.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Continue exploring for additional threats',
            nextNode: 'FrozenSpaceDrift_ExploreThreats'),
      ],
    ),

// Monitoring the leak and addressing it later
    'FrozenSpaceDrift_MonitorLeak': StoryNode(
      text:
      'You decide to monitor the leak for now while keeping an eye on the house’s other systems. The temperature remains stable, but you know you’ll need to address the leak more thoroughly later. The external vortex continues to pose a threat.',
      animation: 'monitor_leak',
      image: 'monitor_leak.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Continue exploring for additional threats',
            nextNode: 'FrozenSpaceDrift_ExploreThreats'),
      ],
    ),

// Resting and regaining strength
    'FrozenSpaceDrift_Rest': StoryNode(
      text:
      'You and your friends take some time to rest and regain your strength. The house is still cold, but the immediate crisis is under control. Resting gives you a chance to recuperate and prepare for any future challenges.',
      animation: 'rest',
      image: 'rest.png',
      choices: [
        Choice(
            text: 'Resume your investigation into the vortex',
            nextNode: 'FrozenSpaceDrift_InvestigateVortex'),
        Choice(
            text: 'Look for other areas of the house that need attention',
            nextNode: 'FrozenSpaceDrift_CheckHouse'),
      ],
    ),

// Exploring additional threats
    'FrozenSpaceDrift_ExploreThreats': StoryNode(
      text:
      'You decide to explore the house for any additional threats. As you investigate, you discover a small crack in one of the walls that could potentially lead to more severe issues. The cold might worsen if not addressed.',
      animation: 'explore_threats',
      image: 'explore_threats.png',
      choices: [
        Choice(
            text: 'Repair the crack in the wall',
            nextNode: 'FrozenSpaceDrift_RepairCrack'),
        Choice(
            text: 'Monitor the crack for now',
            nextNode: 'FrozenSpaceDrift_MonitorCrack'),
      ],
    ),

// Investigating the vortex
    'FrozenSpaceDrift_InvestigateVortex': StoryNode(
      text:
      'You return to the viewport to investigate the vortex more closely. The phenomenon seems to be gradually shifting, indicating that it might be changing in intensity or direction. You need to adapt your strategies accordingly.',
      animation: 'investigate_vortex',
      image: 'investigate_vortex.png',
      choices: [
        Choice(
            text: 'Adjust the house’s shields based on the new information',
            nextNode: 'FrozenSpaceDrift_AdjustShields'),
        Choice(
            text: 'Consult the manuals for additional guidance',
            nextNode: 'FrozenSpaceDrift_ConsultManuals'),
      ],
    ),

// Adjusting the shields
    'FrozenSpaceDrift_AdjustShields': StoryNode(
      text:
      'Based on your observations, you adjust the house’s shields to better protect against the shifting vortex. The shields provide improved protection, but the situation remains dynamic. Continuous monitoring is essential.',
      animation: 'adjust_shields',
      image: 'adjust_shields.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Search for any additional vulnerabilities',
            nextNode: 'FrozenSpaceDrift_SearchVulnerabilities'),
      ],
    ),

// Consulting the manuals
    'FrozenSpaceDrift_ConsultManuals': StoryNode(
      text:
      'You consult the manuals for further guidance on dealing with shifting cosmic phenomena. The manuals suggest a series of adjustments and enhancements that could help stabilize the house’s environment more effectively.',
      animation: 'consult_manuals',
      image: 'consult_manuals.png',
      choices: [
        Choice(
            text: 'Implement the suggested adjustments',
            nextNode: 'FrozenSpaceDrift_ImplementAdjustments'),
        Choice(
            text: 'Prepare for potential worst-case scenarios',
            nextNode: 'FrozenSpaceDrift_PrepareWorstCase'),
      ],
    ),

// Implementing the suggested adjustments
    'FrozenSpaceDrift_ImplementAdjustments': StoryNode(
      text:
      'You implement the adjustments suggested by the manuals. These changes help stabilize the house’s environment and reduce the impact of the vortex. The situation improves, but you remain cautious of any sudden changes.',
      animation: 'implement_adjustments',
      image: 'implement_adjustments.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Continue monitoring and adjusting as needed',
            nextNode: 'FrozenSpaceDrift_MonitorAdjust'),
      ],
    ),

// Searching for vulnerabilities
    'FrozenSpaceDrift_SearchVulnerabilities': StoryNode(
      text:
      'You search the house for any additional vulnerabilities that could be exploited by the cold. After a thorough inspection, you identify a few weak spots that need reinforcement to prevent future issues.',
      animation: 'search_vulnerabilities',
      image: 'search_vulnerabilities.png',
      choices: [
        Choice(
            text: 'Reinforce the weak spots',
            nextNode: 'FrozenSpaceDrift_ReinforceSpots'),
        Choice(
            text: 'Continue monitoring the current situation',
            nextNode: 'FrozenSpaceDrift_MonitorCurrent'),
      ],
    ),

// Reinforcing the weak spots
    'FrozenSpaceDrift_ReinforceSpots': StoryNode(
      text:
      'You reinforce the weak spots to strengthen the house’s defenses against the cold. The improvements provide better stability, but the external vortex still poses a threat. You need to stay vigilant.',
      animation: 'reinforce_spots',
      image: 'reinforce_spots.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Prepare for any further challenges',
            nextNode: 'FrozenSpaceDrift_PrepareForChallenges'),
      ],
    ),

// Monitoring current situation
    'FrozenSpaceDrift_MonitorCurrent': StoryNode(
      text:
      'You continue monitoring the house’s condition and the external vortex. The immediate danger from the cold is under control, but you remain on high alert for any changes in the situation.',
      animation: 'monitor_current',
      image: 'monitor_current.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Look for any additional problems',
            nextNode: 'FrozenSpaceDrift_LookProblems'),
      ],
    ),

// Looking for additional problems
    'FrozenSpaceDrift_LookProblems': StoryNode(
      text:
      'You search for any additional problems that might have arisen. After a thorough check, you find that the house is in relatively stable condition, though there are still areas that require monitoring and maintenance.',
      animation: 'look_problems',
      image: 'look_problems.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Prepare for possible changes in the vortex',
            nextNode: 'FrozenSpaceDrift_PrepareVortexChanges'),
      ],
    ),

// Preparing for possible changes in the vortex
    'FrozenSpaceDrift_PrepareVortexChanges': StoryNode(
      text:
      'You prepare for possible changes in the vortex’s behavior. You set up additional monitoring equipment and adjust the house’s systems to be ready for any sudden fluctuations. The house remains stable for now, but vigilance is key.',
      animation: 'prepare_vortex_changes',
      image: 'prepare_vortex_changes.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Continue exploring for any hidden threats',
            nextNode: 'FrozenSpaceDrift_ExploreHiddenThreats'),
      ],
    ),

// Exploring hidden threats
    'FrozenSpaceDrift_ExploreHiddenThreats': StoryNode(
      text:
      'You conduct a final exploration for any hidden threats. During your search, you find a small, unexplored compartment in the house. It’s filled with old supplies and a few surprises that could be useful for future challenges.',
      animation: 'explore_hidden_threats',
      image: 'explore_hidden_threats.png',
      choices: [
        Choice(
            text: 'Investigate the supplies further',
            nextNode: 'FrozenSpaceDrift_InvestigateSupplies'),
        Choice(
            text: 'Secure the compartment and focus on current problems',
            nextNode: 'FrozenSpaceDrift_SecureCompartment'),
      ],
    ),

// Investigating the supplies
    'FrozenSpaceDrift_InvestigateSupplies': StoryNode(
      text:
      'You investigate the supplies found in the compartment. Among them, you discover some advanced tools and materials that could be helpful for ongoing repairs and future challenges. The discovery is a relief, providing a much-needed boost.',
      animation: 'investigate_supplies',
      image: 'investigate_supplies.png',
      choices: [
        Choice(
            text: 'Integrate the new tools into the current system',
            nextNode: 'FrozenSpaceDrift_IntegrateTools'),
        Choice(
            text: 'Store the tools for future use',
            nextNode: 'FrozenSpaceDrift_StoreTools'),
      ],
    ),

// Securing the compartment
    'FrozenSpaceDrift_SecureCompartment': StoryNode(
      text:
      'You secure the compartment and focus on addressing the current problems. The house’s condition remains stable, and you’re prepared for any future issues that may arise.',
      animation: 'secure_compartment',
      image: 'secure_compartment.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Review the house’s status one last time',
            nextNode: 'FrozenSpaceDrift_ReviewStatus'),
      ],
    ),

// Integrating the new tools
    'FrozenSpaceDrift_IntegrateTools': StoryNode(
      text:
      'You integrate the new tools into the house’s systems. The improvements enhance the stability and functionality of the house, making it better equipped to handle the ongoing challenges from the vortex.',
      animation: 'integrate_tools',
      image: 'integrate_tools.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Prepare for any unexpected changes',
            nextNode: 'FrozenSpaceDrift_PrepareUnexpectedChanges'),
      ],
    ),

// Storing the tools
    'FrozenSpaceDrift_StoreTools': StoryNode(
      text:
      'You store the tools for future use. The house remains in a stable condition, and you’re ready for any upcoming challenges that may arise from the cosmic phenomenon.',
      animation: 'store_tools',
      image: 'store_tools.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Prepare for any unexpected changes',
            nextNode: 'FrozenSpaceDrift_PrepareUnexpectedChanges'),
      ],
    ),

// Reviewing the house’s status
    'FrozenSpaceDrift_ReviewStatus': StoryNode(
      text:
      'You conduct a final review of the house’s status. The immediate issues from the cold have been addressed, and the house is in a stable condition. However, the external vortex remains a potential threat that requires ongoing vigilance.',
      animation: 'review_status',
      image: 'review_status.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Look for any final adjustments needed',
            nextNode: 'FrozenSpaceDrift_FinalAdjustments'),
      ],
    ),

// Preparing for unexpected changes
    'FrozenSpaceDrift_PrepareUnexpectedChanges': StoryNode(
      text:
      'You prepare for any unexpected changes in the vortex. The house’s systems are as robust as they can be, and you’re ready to adapt to any fluctuations. The situation remains under control for now, but constant vigilance is essential.',
      animation: 'prepare_unexpected_changes',
      image: 'prepare_unexpected_changes.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Monitor the house and the vortex continuously',
            nextNode: 'FrozenSpaceDrift_MonitorContinuously'),
      ],
    ),

// Monitoring continuously
    'FrozenSpaceDrift_MonitorContinuously': StoryNode(
      text:
      'You set up continuous monitoring for the house and the vortex. The situation remains stable, but you know that conditions in space can change rapidly. Being prepared and alert will help you manage any future challenges effectively.',
      animation: 'monitor_continuously',
      image: 'monitor_continuously.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Plan for future challenges',
            nextNode: 'FrozenSpaceDrift_PlanFutureChallenges'),
      ],
    ),

// Planning for future challenges
    'FrozenSpaceDrift_PlanFutureChallenges': StoryNode(
      text:
      'With the house’s immediate issues managed and monitoring in place, you and your friends begin planning for future challenges. Your preparations have made the house more resilient, and you feel more confident in facing any further adversities.',
      animation: 'plan_future_challenges',
      image: 'plan_future_challenges.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Prepare detailed strategies for potential emergencies',
            nextNode: 'FrozenSpaceDrift_PrepareStrategies'),
      ],
    ),

// Preparing detailed strategies
    'FrozenSpaceDrift_PrepareStrategies': StoryNode(
      text:
      'You prepare detailed strategies for potential emergencies. These strategies will help you respond quickly and effectively to any future issues that might arise. The house’s condition is stable, and you feel ready for whatever comes next.',
      animation: 'prepare_strategies',
      image: 'prepare_strategies.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Review and finalize your emergency plans',
            nextNode: 'FrozenSpaceDrift_FinalizePlans'),
      ],
    ),

// Finalizing emergency plans
    'FrozenSpaceDrift_FinalizePlans': StoryNode(
      text:
      'You review and finalize your emergency plans. The house is well-prepared for future challenges, and you and your friends feel more confident in handling any unexpected situations. The immediate danger has been averted, but vigilance will continue to be key.',
      animation: 'finalize_plans',
      image: 'finalize_plans.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Continue to monitor and adapt as needed',
            nextNode: 'FrozenSpaceDrift_MonitorAdapt'),
      ],
    ),

// Monitoring and adapting
    'FrozenSpaceDrift_MonitorAdapt': StoryNode(
      text:
      'You continue to monitor and adapt as needed. The house is in a stable condition, and you’re well-prepared for any future challenges. The frozen space drift has been managed effectively, but staying alert and adaptable remains crucial.',
      animation: 'monitor_adapt',
      image: 'monitor_adapt.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Prepare for any remaining threats',
            nextNode: 'FrozenSpaceDrift_PrepareRemainingThreats'),
      ],
    ),

// Preparing for remaining threats
    'FrozenSpaceDrift_PrepareRemainingThreats': StoryNode(
      text:
      'You prepare for any remaining threats, ensuring that all systems are in place to handle unexpected issues. The house’s environment is stable, and your preparations have made you ready for any further challenges that may arise.',
      animation: 'prepare_remaining_threats',
      image: 'prepare_remaining_threats.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Review your strategies one last time',
            nextNode: 'FrozenSpaceDrift_ReviewStrategies'),
      ],
    ),

// Reviewing strategies
    'FrozenSpaceDrift_ReviewStrategies': StoryNode(
      text:
      'You review your strategies one last time, ensuring that everything is in place for any potential emergencies. With the house’s condition stabilized and your plans solidified, you and your friends are prepared to face any future challenges in the cold expanse of space.',
      animation: 'review_strategies',
      image: 'review_strategies.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Continue to stay vigilant',
            nextNode: 'FrozenSpaceDrift_StayVigilant'),
      ],
    ),

// Staying vigilant
    'FrozenSpaceDrift_StayVigilant': StoryNode(
      text:
      'You and your friends stay vigilant, monitoring the house and the external vortex. The immediate threat from the frozen space drift has been managed, and you’re well-prepared for any new challenges. Your continued vigilance ensures that you’re ready for anything that comes your way.',
      animation: 'stay_vigilant',
      image: 'stay_vigilant.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Look for any new threats or challenges',
            nextNode: 'FrozenSpaceDrift_LookNewThreats'),
      ],
    ),

// Looking for new threats
    'FrozenSpaceDrift_LookNewThreats': StoryNode(
      text:
      'You take a final look for any new threats or challenges that might have emerged. The house’s condition remains stable, and no new immediate threats are detected. You feel confident in your ability to handle any future issues that may arise.',
      animation: 'look_new_threats',
      image: 'look_new_threats.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Prepare for potential future challenges',
            nextNode: 'FrozenSpaceDrift_PrepareFutureChallenges'),
      ],
    ),

// Preparing for future challenges
    'FrozenSpaceDrift_PrepareFutureChallenges': StoryNode(
      text:
      'You and your friends prepare for any future challenges that may arise. With the house’s systems stabilized and your strategies in place, you feel ready to face whatever comes next in the cold expanse of space ? ',
      animation: 'prepare_future_challenges',
      image: 'prepare_future_challenges.png',
      choices: [
        Choice(
            text: 'Rest and regain your strength',
            nextNode: 'FrozenSpaceDrift_Rest'),
        Choice(
            text: 'Continue monitoring and adapting as needed',
            nextNode: 'FrozenSpaceDrift_MonitorAdapt'),
      ],
    ),
  },

// Ending

  'Ending': {
    'start': StoryNode(
      text:
      ' it\'s now Max turn to press the button . Max now require to score no.4 to end the Game. But again the Game makes it,s decision for itself . Max tries to push the button but he failed. this time the there was no movement in the dial . the trio is left starnded in the broken house in the wild space. "',
      animation: 'CardAppearance',
      image: 'anti_gravity_maze_card.jpg',
      choices: [
        Choice(
            text: 'Try to figure out What\'s wrong ',
            nextNode: 'figuringproblem'),
      ],
    ),

    'figuringproblem': StoryNode(
      text:
      ' Max tried to fix the game and pushed the button harder and harder . Yet there was nothing that seems to work . Just when all hope of fixing the Game was lost. You tried to press the button and finish it once and for all . This time Somehow the Game Worked . The dial rolls down to no.1 "',
      animation: 'CardAppearance',
      image: 'anti_gravity_maze_card.jpg',
      choices: [
        Choice(text: 'let\'s end this journey ', nextNode: 'Goldencard'),
      ],
    ),

    'Goldencard': StoryNode(
      text:
      ' Somehow the Game has started working and all the lost hopes reappeared . And this time the trio has decided to finish the game as quickly as possible , and finish it once and for all . "',
      animation: 'CardAppearance',
      image: 'anti_gravity_maze_card.jpg',
      choices: [
        Choice(
            text: 'Draw the Golden Card ', nextNode: 'GoldCard_ShootingStar'),
      ],
    ),

// Gold card challenge
    'GoldCard_ShootingStar': StoryNode(
      text:
      'You draw the gold card, and a shooting star appears next to the house, its brilliance lighting up the darkened room. The trio stands in awe, momentarily mesmerized by the star’s beauty. “Make a wish!” Shaun exclaims with excitement.\n\nWithout thinking, you all make a wish to dismantle the robot you had previously defeated, hoping it will be a safe way to end the threat. Little did you know, the robot, now fully repaired and more formidable than before, is right behind you, its eyes glowing with a menacing light.',
      animation: 'shooting_star',
      image: 'shooting_star.png',
      choices: [
        Choice(
            text: 'Prepare for the robot’s attack',
            nextNode: 'GoldCard_RobotAttack'),
        Choice(
            text: 'Try to escape the house', nextNode: 'GoldCard_EscapeHouse'),
        Choice(text: 'Search for a weapon', nextNode: 'GoldCard_SearchWeapon'),
      ],
    ),

// Robot attack after wish
    'GoldCard_RobotAttack': StoryNode(
      text:
      'The robot, now fully operational, moves swiftly towards you, its heavy metal footsteps echoing through the house. “We made a terrible mistake!” Max shouts as the robot’s weapons power up.\n\nDesperately, you try to find a way to stop the robot, but its advanced systems overpower your efforts. The room fills with tension as the robot closes in, leaving you no choice but to brace for impact.',
      animation: 'robot_attack',
      image: 'robot_advanced.png',
      choices: [
        Choice(
            text: 'Fight the robot with whatever you have',
            nextNode: 'GoldCard_FightRobot'),
        Choice(text: 'Hide and seek a plan', nextNode: 'GoldCard_HideAndPlan'),
        Choice(
            text: 'Attempt to use the house’s systems',
            nextNode: 'GoldCard_UseSystems'),
      ],
    ),

// Fighting the robot
    'GoldCard_FightRobot': StoryNode(
      text:
      'With nowhere to run, you and your friends take a stand and fight the robot with whatever makeshift weapons you can find. The battle is fierce, and the robot’s advanced systems make it a tough opponent.\n\nJust as you think you’re about to be overwhelmed, the house shakes violently, signaling that the next challenge is about to begin. You’re forced to retreat, realizing that the real danger is yet to come.',
      animation: 'robot_battle',
      image: 'robot_fight.png',
      choices: [
        Choice(
            text: 'Find Max for the next challenge',
            nextNode: 'Max_CosmicWhirlpool'),
        Choice(
            text: 'Search for a way to finish the game',
            nextNode: 'GoldCard_SearchFinish'),
      ],
    ),

// Hiding and planning
    'GoldCard_HideAndPlan': StoryNode(
      text:
      'You and your friends quickly hide, trying to devise a plan to deal with the robot. The house trembles as the robot searches for you. You overhear the robot’s mechanical voice as it scans for any signs of movement.\n\nAs the tremors intensify, you realize that the next challenge is approaching rapidly. You need to act quickly if you want to survive.',
      animation: 'robot_search',
      image: 'hidden_robot.png',
      choices: [
        Choice(
            text: 'Look for a way to defeat the robot',
            nextNode: 'GoldCard_LookForDefeat'),
        Choice(
            text: 'Prepare for the next challenge',
            nextNode: 'Max_CosmicWhirlpool'),
        Choice(
            text: 'Investigate the house for useful items',
            nextNode: 'GoldCard_InvestigateHouse'),
      ],
    ),

// Looking for defeat
    'GoldCard_LookForDefeat': StoryNode(
      text:
      'You frantically search for a way to defeat the robot. Your efforts are interrupted by a sudden jolt, as the house begins to shake uncontrollably. The robot’s pursuit intensifies, but it’s clear that something else is happening—something much bigger and more dangerous.',
      animation: 'robot_hunt',
      image: 'robot_investigate.png',
      choices: [
        Choice(
            text: 'Help Max with the next challenge',
            nextNode: 'Max_CosmicWhirlpool'),
        Choice(
            text: 'Find a way to finish the game',
            nextNode: 'GoldCard_FinishGame'),
        Choice(
            text: 'Continue searching for a solution',
            nextNode: 'GoldCard_SearchSolution'),
      ],
    ),

// Investigating the house
    'GoldCard_InvestigateHouse': StoryNode(
      text:
      'As you investigate the house, you find hidden compartments and old tools. You come across a makeshift weapon and some useful items that might help you in the upcoming challenges. However, the house is still shaking, and time is running out.\n\nYou gather the items and prepare for what’s next.',
      animation: 'house_investigation',
      image: 'investigate_house.png',
      choices: [
        Choice(
            text: 'Prepare for the next challenge',
            nextNode: 'Max_CosmicWhirlpool'),
        Choice(
            text: 'Use the items to fight the robot',
            nextNode: 'GoldCard_FightRobot'),
      ],
    ),

// Searching for a solution
    'GoldCard_SearchSolution': StoryNode(
      text:
      'You continue to search for a solution to stop the robot, but the house’s instability makes it difficult. The robot’s presence grows more threatening, and you realize that the house is about to face the next challenge. You need to act quickly.',
      animation: 'searching_solution',
      image: 'search_solution.png',
      choices: [
        Choice(
            text: 'Prepare for the next challenge',
            nextNode: 'Max_CosmicWhirlpool'),
        Choice(
            text: 'Find Max to strategize', nextNode: 'GoldCard_StrategizeMax'),
      ],
    ),

// Strategizing with Max
    'GoldCard_StrategizeMax': StoryNode(
      text:
      'You find Max and discuss your options. The robot is still a threat, and the house’s instability is getting worse. You need to come up with a plan to face both the robot and the upcoming challenge.\n\nMax suggests focusing on finishing the game quickly to end the threats once and for all.',
      animation: 'strategize_with_max',
      image: 'strategize_max.png',
      choices: [
        Choice(
            text: 'Help Max with the next challenge',
            nextNode: 'Max_CosmicWhirlpool'),
        Choice(
            text: 'Search for any remaining solutions',
            nextNode: 'GoldCard_SearchSolution'),
      ],
    ),

// Max's turn and Cosmic Whirlpool challenge
    'Max_CosmicWhirlpool': StoryNode(
      text:
      'The Cosmic Whirlpool card is drawn, and the house starts to tremble violently as it gets sucked into a swirling vortex of cosmic energy. The walls groan and the air is filled with a high-pitched whine as everything gets pulled towards the center of the whirlpool. You realize that the only hope of survival is to finish the game. It’s now Shaun’s turn, and he has to play the game to save everyone.',
      animation: 'cosmic_whirlpool',
      image: 'whirlpool.png',
      choices: [
        Choice(text: 'Watch Shaun play the game', nextNode: 'Shaun_PlayGame'),
        Choice(
            text: 'Try to hold on and stabilize the house',
            nextNode: 'Max_HoldOn'),
        Choice(
            text: 'Search for any remaining solutions',
            nextNode: 'Max_SearchSolutions'),
      ],
    ),

// Searching for solutions (during whirlpool)
    'Max_SearchSolutions': StoryNode(
      text:
      'In the midst of the chaos, you search for any remaining solutions or items that could help stabilize the house or stop the whirlpool. The situation is dire, and every second counts. You find some old notes and a malfunctioning device that might be useful, but it’s unclear if it will work in time.',
      animation: 'searching_during_whirlpool',
      image: 'search_solutions.png',
      choices: [
        Choice(
            text: 'Help Shaun with the next challenge',
            nextNode: 'Shaun_PlayGame'),
        Choice(
            text: 'Try to fix the malfunctioning device',
            nextNode: 'Max_FixDevice'),
      ],
    ),

// Fixing the malfunctioning device
    'Max_FixDevice': StoryNode(
      text:
      'You attempt to fix the malfunctioning device, but it’s a complicated process. The whirlpool’s pull is relentless, and it becomes increasingly difficult to concentrate. Just as you finish, the device emits a burst of light, but its effect on the situation is uncertain.',
      animation: 'device_fixing',
      image: 'fix_device.png',
      choices: [
        Choice(
            text: 'Help Shaun with the next challenge',
            nextNode: 'Shaun_PlayGame'),
        Choice(
            text: 'Use the device to try and stabilize the house',
            nextNode: 'Max_UseDevice'),
      ],
    ),

// Using the device
    'Max_UseDevice': StoryNode(
      text:
      'You use the repaired device in an attempt to stabilize the house. The device emits a powerful pulse, but it’s unclear if it’s enough to counteract the whirlpool’s pull. The house shakes violently, and you brace yourself for what’s next.',
      animation: 'device_use',
      image: 'device_use.png',
      choices: [
        Choice(
            text: 'Help Shaun with the next challenge',
            nextNode: 'Shaun_PlayGame'),
        Choice(
            text: 'Attempt to stabilize the house manually',
            nextNode: 'Max_StabilizeManually'),
      ],
    ),

// Stabilizing manually
    'Max_StabilizeManually': StoryNode(
      text:
      'You try to manually stabilize the house by securing loose items and reinforcing weak points. It’s a desperate attempt, and the strain is overwhelming. The house continues to shake, but there’s a glimmer of hope that your efforts might make a difference.',
      animation: 'manual_stabilization',
      image: 'manual_stabilization.png',
      choices: [
        Choice(
            text: 'Help Shaun with the next challenge',
            nextNode: 'Shaun_PlayGame'),
        Choice(
            text: 'Continue stabilizing manually',
            nextNode: 'Max_ContinueStabilizing'),
      ],
    ),

// Shaun playing the game
    'Shaun_PlayGame': StoryNode(
      text:
      'Shaun takes his turn and draws the next card, revealing an unexpected challenge. The house begins to stabilize as the cosmic whirlpool’s power wanes. Shaun’s choices become crucial in determining the final outcome of the game.\n\nShaun’s next move could either save everyone or bring about the final catastrophe.',
      animation: 'shaun_playing',
      image: 'shaun_playing.png',
      choices: [
        Choice(
            text: 'Watch Shaun’s move and hope for the best',
            nextNode: 'Shaun_FinalMove'),
        Choice(text: 'Try to assist Shaun', nextNode: 'Shaun_Assist'),
      ],
    ),

// Shaun’s final move
    'Shaun_FinalMove': StoryNode(
      text:
      'Shaun makes his move, and the house begins to return to normal. The cosmic whirlpool’s pull fades away, and the house stabilizes. You and your friends are safe, at least for now. The final challenge has been overcome, and you can finally take a breath of relief.',
      animation: 'final_move',
      image: 'final_move.png',
      choices: [
        Choice(text: 'Celebrate the victory', nextNode: 'CelebrateVictory'),
        Choice(text: 'Reflect on the adventure', nextNode: 'ReflectAdventure'),
      ],
    ),

// Celebrating victory
    'CelebrateVictory': StoryNode(
      text:
      'You and your friends celebrate your victory, relieved to have survived the cosmic whirlpool and the robot attack. The house returns to its original state, and you realize that the adventure has come to a close. You’ve learned valuable lessons and grown closer as a team.',
      animation: 'celebrate',
      image: 'celebrate.png',
      choices: [
        Choice(text: 'End the game', nextNode: 'GameEnd'),
        Choice(text: 'Start a new adventure', nextNode: 'NewAdventure'),
      ],
    ),

// Reflecting on the adventure
    'ReflectAdventure': StoryNode(
      text:
      'You reflect on the adventure, pondering the challenges you faced and the lessons learned. The experience has changed you and your friends, and you feel a sense of accomplishment. The house remains a reminder of your incredible journey.',
      animation: 'reflect',
      image: 'reflect.png',
      choices: [
        Choice(text: 'End the game', nextNode: 'GameEnd'),
        Choice(text: 'Share your story with others', nextNode: 'ShareStory'),
      ],
    ),

// Game end
    'GameEnd': StoryNode(
      text:
      'The game comes to an end, and you look back on the journey with a sense of pride and achievement. The house is quiet now, a testament to the challenges you’ve overcome. Until the next adventure, you can rest easy knowing you faced the unknown and came out victorious.',
      animation: 'game_end',
      image: 'game_end.png',
      choices: [
        Choice(text: 'Play again', nextNode: 'StartNewGame'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Starting new game
    'StartNewGame': StoryNode(
      text:
      'You decide to play again, eager for another adventure. The house resets, and the game begins anew, full of fresh challenges and mysteries. What will the next adventure bring? Only time will tell.',
      animation: 'new_game',
      image: 'new_game.png',
      choices: [
        Choice(text: 'Start new adventure', nextNode: 'NewAdventure'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Exiting game
    'ExitGame': StoryNode(
      text:
      'You choose to exit the game, feeling satisfied with the journey you’ve had. The house fades away, leaving you with memories of the adventure and a sense of accomplishment. Until next time!',
      animation: 'exit',
      image: 'exit.png',
      choices: [
        Choice(text: 'Play again', nextNode: 'StartNewGame'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Starting new adventure
    'NewAdventure': StoryNode(
      text:
      'A new adventure awaits! The house transforms into a new setting, ready to offer fresh challenges and stories. You and your friends are prepared for whatever comes next. Let the new journey begin!',
      animation: 'new_adventure',
      image: 'new_adventure.png',
      choices: [
        Choice(text: 'Begin the new adventure', nextNode: 'NewAdventureStart'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Starting new adventure (beginning)
    'NewAdventureStart': StoryNode(
      text:
      'The adventure begins anew with new challenges, mysteries, and excitement. The house is full of possibilities, and you can’t wait to discover what lies ahead. The journey is just beginning.',
      animation: 'adventure_start',
      image: 'adventure_start.png',
      choices: [
        Choice(
            text: 'Explore the new adventure', nextNode: 'ExploreNewAdventure'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Exploring new adventure
    'ExploreNewAdventure': StoryNode(
      text:
      'You delve into the new adventure, discovering new secrets and challenges. The journey is filled with excitement and wonder as you and your friends navigate through the unknown. What new challenges will you face? Only time will tell.',
      animation: 'explore_adventure',
      image: 'explore_adventure.png',
      choices: [
        Choice(text: 'Continue exploring', nextNode: 'ContinueExploring'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Continuing exploring
    'ContinueExploring': StoryNode(
      text:
      'You continue exploring the new adventure, uncovering hidden secrets and encountering new challenges. Each choice you make shapes the outcome of your journey. What will you discover next?',
      animation: 'continue_exploring',
      image: 'continue_exploring.png',
      choices: [
        Choice(text: 'Face the next challenge', nextNode: 'NextChallenge'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Facing the next challenge
    'NextChallenge': StoryNode(
      text:
      'You prepare to face the next challenge, ready for whatever comes your way. The adventure continues with new twists and turns, and you and your friends are ready for the journey ahead.',
      animation: 'face_challenge',
      image: 'face_challenge.png',
      choices: [
        Choice(text: 'Begin the challenge', nextNode: 'ChallengeStart'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Challenge start
    'ChallengeStart': StoryNode(
      text:
      'The challenge begins, and you and your friends are thrust into a new set of trials and adventures. The house is full of surprises, and every decision you make impacts the outcome. Embrace the adventure and see where it leads!',
      animation: 'challenge_start',
      image: 'challenge_start.png',
      choices: [
        Choice(text: 'Continue the adventure', nextNode: 'ContinueAdventure'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Continue adventure
    'ContinueAdventure': StoryNode(
      text:
      'The adventure continues, full of excitement and unpredictability. Each choice and challenge shapes your journey, and you and your friends are ready to face whatever comes next. Enjoy the ride!',
      animation: 'continue_adventure',
      image: 'continue_adventure.png',
      choices: [
        Choice(text: 'Keep exploring', nextNode: 'ExploreFurther'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Explore further
    'ExploreFurther': StoryNode(
      text:
      'You decide to explore further, delving deeper into the mysteries and challenges that await. The adventure is far from over, and there’s still much to discover. What new twists and turns lie ahead?',
      animation: 'explore_further',
      image: 'explore_further.png',
      choices: [
        Choice(text: 'Face the next twist', nextNode: 'TwistNext'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Next twist
    'TwistNext': StoryNode(
      text:
      'A new twist in the adventure presents itself, adding more complexity to the challenges ahead. You and your friends must adapt and strategize to overcome this new obstacle. The journey continues with unexpected surprises.',
      animation: 'next_twist',
      image: 'next_twist.png',
      choices: [
        Choice(text: 'Tackle the twist', nextNode: 'TackleTwist'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Tackle twist
    'TackleTwist': StoryNode(
      text:
      'You tackle the new twist with determination, using your wits and resources to overcome the challenge. Each twist brings you closer to the end of the adventure, and your actions will determine the final outcome.',
      animation: 'tackle_twist',
      image: 'tackle_twist.png',
      choices: [
        Choice(text: 'Proceed to the next stage', nextNode: 'NextStage'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Next stage
    'NextStage': StoryNode(
      text:
      'The adventure moves to the next stage, and you and your friends are ready to face new challenges and uncover more mysteries. Each stage brings new opportunities and obstacles, shaping the final outcome of your journey.',
      animation: 'next_stage',
      image: 'next_stage.png',
      choices: [
        Choice(text: 'Advance in the adventure', nextNode: 'AdvanceAdventure'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Advance adventure
    'AdvanceAdventure': StoryNode(
      text:
      'You advance in the adventure, embracing new challenges and discoveries. The journey is dynamic, with each choice influencing the outcome. What new surprises await you in this evolving adventure?',
      animation: 'advance_adventure',
      image: 'advance_adventure.png',
      choices: [
        Choice(text: 'Explore further', nextNode: 'ExploreDeeper'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Explore deeper
    'ExploreDeeper': StoryNode(
      text:
      'You explore deeper into the adventure, uncovering hidden secrets and facing greater challenges. The journey continues to evolve, with each decision playing a crucial role in shaping the final outcome.',
      animation: 'explore_deeper',
      image: 'explore_deeper.png',
      choices: [
        Choice(text: 'Continue the journey', nextNode: 'ContinueJourney'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),

// Continue journey
    'ContinueJourney': StoryNode(
      text:
      'You continue the journey, navigating through new twists and turns. The adventure is far from over, and each choice you make leads to different outcomes. Enjoy the ongoing adventure and see where it leads!',
      animation: 'continue_journey',
      image: 'continue_journey.png',
      choices: [
        Choice(text: 'Face the next challenge', nextNode: 'NextChallenge'),
        Choice(text: 'Exit', nextNode: 'ExitGame'),
      ],
    ),
  },
};
