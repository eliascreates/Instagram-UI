import 'package:flutter/material.dart';
import 'package:instagramui/models/home_posts.dart';
import '../components/story_list.dart';
import '../components/user_post.dart';

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
          const StoryList(),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemCount: PostItem.posts.length,
                itemBuilder: (BuildContext context, index) {
                  return Post(userPost: PostItem.posts[index]);
                }),
          ),
        ],
      ),
    );
  }
}
