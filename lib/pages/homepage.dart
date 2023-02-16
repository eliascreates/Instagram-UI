import 'package:flutter/material.dart';
import '../components/story_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Instagram'),
            Row(
              children: const [
                Icon(Icons.favorite_outline_rounded),
                SizedBox(width: 20),
                Icon(Icons.send),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          StoryList(),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const [
                Post(),
                Post(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({super.key});

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
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "beetroot",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Icon(Icons.more_vert_rounded),
                ],
              ),
            ],
          ),
        ),
        //Photo
        const SizedBox(height: 10),
        Container(
          height: 360,
          color: Colors.grey,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  // Size69dBox(width: 15),
                  Icon(Icons.favorite_outline_rounded, size: 28),
                  SizedBox(width: 15),
                  Icon(Icons.mode_comment_outlined, size: 28),
                  SizedBox(width: 15),
                  Icon(Icons.send, size: 28),
                  SizedBox(width: 36),
                  Icon(Icons.more_horiz_outlined, size: 28, color: Colors.grey),
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
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            text: const TextSpan(children: [
              TextSpan(
                text: 'beetroot',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              TextSpan(text: ' '),
              TextSpan(
                text: 'this is another post',
                style: TextStyle(color: Colors.black),
              ),
            ]),
          ),
        )
      ],
    );
  }
}
