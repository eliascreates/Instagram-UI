import 'dart:core';

class PostItem {
  String username;
  String profilePhoto;
  String postDescr;
  String postPhoto;
  int numLikes;
  int numComments;
  String datePosted;

  static List<PostItem> posts = [
    PostItem(
        username: "beetroot",
        profilePhoto: "lucy",
        postDescr:
            "Why did the programmer quit his job? Because he didn't get arrays 😅",
        postPhoto: "outside",
        numLikes: 5,
        numComments: 3,
        datePosted: "February 16"),
    PostItem(
        username: "liltext",
        profilePhoto: "liltex",
        postDescr:
            "Real programmers count from 0. So Yes, I only ate 3 slices of pizza 🥰🍕 ",
        postPhoto: "code",
        numLikes: 208,
        numComments: 22,
        datePosted: "February 12"),
    PostItem(
        username: "jagotty",
        profilePhoto: "jagotty",
        postDescr: "Johnny came and took my baby 😭",
        postPhoto: "johnnysbaby",
        numLikes: 14,
        numComments: 200,
        datePosted: "February 14"),
    PostItem(
        username: "thatbody",
        profilePhoto: "lambady",
        postDescr: "Hearing aide, where are you? Over ear!",
        postPhoto: "thisgotty",
        numLikes: 60,
        numComments: 44,
        datePosted: "February 16"),
    PostItem(
        username: "thisgotty",
        profilePhoto: "lambady",
        postDescr: "The bugs keep bugging me even when I sleep 🛌🛏️👩‍💻",
        postPhoto: "thisgotty",
        numLikes: 18,
        numComments: 94,
        datePosted: "February 16"),
    PostItem(
        username: "lambady",
        profilePhoto: "lambady",
        postDescr: "Marriage is hard",
        postPhoto: "thisgotty",
        numLikes: 800,
        numComments: 400,
        datePosted: "February 16")
  ];

  PostItem(
      {required this.username,
      required this.profilePhoto,
      required this.postDescr,
      required this.postPhoto,
      required this.numLikes,
      required this.numComments,
      required this.datePosted});
}
