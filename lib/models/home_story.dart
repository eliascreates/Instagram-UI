import 'dart:core';

class Story {
  String username;
  String userProfile;
  int numStories;

  static List<Story> stories = [
    Story(
        username: "Your story",
        userProfile: "assets/profiles/beet_profile.jpg",
        numStories: 0),
    Story(
        username: "lambady",
        userProfile: "assets/profiles/icon_profile.jpg",
        numStories: 0),
    Story(
        username: "thatbody",
        userProfile: "assets/profiles/luffi_profile.jfif",
        numStories: 0),
    Story(
        username: "thisgotty",
        userProfile: "assets/profiles/tom_profile.jfif",
        numStories: 0),
    Story(
        username: "jagotty",
        userProfile: "assets/profiles/cat_profile.jpg",
        numStories: 0),
    Story(
        username: "liltex",
        userProfile: "assets/profiles/her_profile.jpg",
        numStories: 0)
  ];

  bool get hasStories {
    return numStories > 0 ? true : false;
  }

  Story(
      {required this.username,
      required this.userProfile,
      required this.numStories});
}
