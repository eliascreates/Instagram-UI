import 'dart:core';

class Story {
  String username;
  String userProfile;
  int numStories;

  static List<Story> stories = [
    Story(username: "beetroot", userProfile: "Photo", numStories: 0),
    Story(username: "lambady", userProfile: "Photo", numStories: 0),
    Story(username: "thatbody", userProfile: "Photo", numStories: 0),
    Story(username: "thisgotty", userProfile: "Photo", numStories: 0),
    Story(username: "jagotty", userProfile: "Photo", numStories: 0),
    Story(username: "liltex", userProfile: "Photo", numStories: 0)
  ];

  bool get hasStories {
    return numStories > 0 ? true : false;
  }

  Story(
      {required this.username,
      required this.userProfile,
      required this.numStories});
}
