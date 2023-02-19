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
        profilePhoto: "assets/profiles/beet_profile.jpg",
        postDescr:
            "Why did the programmer quit his job? Because he didn't get arrays 😅",
        postPhoto: "assets/posts/quit_post.jpg",
        numLikes: 5,
        numComments: 3,
        datePosted: "February 16"),
    PostItem(
        username: "liltext",
        profilePhoto: "assets/profiles/her_profile.jpg",
        postDescr:
            "Real programmers count from 0. So Yes, I only ate 3 slices of pizza 🥰🍕 ",
        postPhoto: "assets/posts/pizza_post.jpg",
        numLikes: 208,
        numComments: 22,
        datePosted: "February 10"),
    PostItem(
        username: "jagotty",
        profilePhoto: "assets/profiles/cat_profile.jpg",
        postDescr: "Johnny came and took my baby 😭",
        postPhoto: "assets/posts/baby_post.jpg",
        numLikes: 14,
        numComments: 200,
        datePosted: "February 14"),
    PostItem(
        username: "thatbody",
        profilePhoto: "assets/profiles/luffi_profile.jfif",
        postDescr: "Hearing aide, where are you? Over ear!",
        postPhoto: "assets/posts/bug_post.jpg",
        numLikes: 60,
        numComments: 44,
        datePosted: "16 hours ago"),
    PostItem(
        username: "thisgotty",
        profilePhoto: "assets/profiles/tom_profile.jfif",
        postDescr: "The bugs keep bugging me even when I sleep 🛌🛏️👩‍💻",
        postPhoto: "assets/posts/sleepcode_post.jpg",
        numLikes: 18,
        numComments: 94,
        datePosted: "February 16"),
    PostItem(
        username: "lambady",
        profilePhoto: "assets/profiles/icon_profile.jpg",
        postDescr: "Marriage is hard",
        postPhoto: "assets/posts/hard_post.png",
        numLikes: 800,
        numComments: 400,
        datePosted: "January 16")
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
