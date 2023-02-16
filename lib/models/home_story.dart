import 'dart:core';

class Story {
  String username;
  String userProfile;
  int numStories;

  bool get hasStories {
    return numStories > 0 ? true : false;
  }

  Story(
      {required this.username,
      required this.userProfile,
      required this.numStories});
}