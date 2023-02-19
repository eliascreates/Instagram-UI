import 'dart:math';

import 'package:flutter/material.dart';
import '../models/home_posts.dart';

class Post extends StatelessWidget {
  final PostItem userPost;

  const Post({super.key, required this.userPost});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Profile and menu row
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: Colors.grey),
                            color: Colors.transparent),
                        child: ClipOval(
                          child: Image(
                            width: 30,
                            height: 30,
                            image: AssetImage(userPost.profilePhoto),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        userPost.username,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Icon(Icons.more_vert_rounded),
                ],
              ),
            ],
          ),
        ),
        //Post Photo
        const SizedBox(height: 10),
        Image(
          image: AssetImage(userPost.postPhoto),
          fit: BoxFit.cover,
          width: 360,
          height: 360,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Size69dBox(width: 15),
                  const Icon(Icons.favorite_outline_rounded, size: 28),
                  const SizedBox(width: 15),
                  const Icon(Icons.mode_comment_outlined, size: 28),
                  const SizedBox(width: 15),
                  Image.asset('assets/icons/send.png',
                      width: 25, fit: BoxFit.cover),
                  const SizedBox(width: 36),
                  const Icon(Icons.more_horiz_outlined,
                      size: 28, color: Colors.grey),
                ],
              ),
              const Icon(Icons.bookmark_border_outlined, size: 28),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Comment Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                    text: 'Liked by ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: PostItem
                        .posts[Random().nextInt(PostItem.posts.length)]
                        .username,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  const TextSpan(
                    text: ' and ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: '${userPost.numLikes} others,',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ]),
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: userPost.username,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  const TextSpan(text: ' '),
                  TextSpan(
                    text: userPost.postDescr,
                    style: const TextStyle(color: Colors.black),
                  ),
                ]),
              ),
              const SizedBox(height: 5),
              Text(
                "View all ${userPost.numComments} comments",
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 5),
              Text(
                userPost.datePosted,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          ),
        ),
      ],
    );
  }
}
