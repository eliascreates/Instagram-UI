import 'package:flutter/material.dart';
import '../models/home_story.dart';

class StoryList extends StatelessWidget {
  const StoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: SizedBox(
            height: 90,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Story.stories.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return StoryItem(userStory: Story.stories[index]);
                }),
          ),
        )
      ],
    );
  }
}

class StoryItem extends StatelessWidget {
  final Story userStory;

  const StoryItem({super.key, required this.userStory});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: ClipOval(
              child: Image(
                image: AssetImage(userStory.userProfile),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            userStory.username,
            style: const TextStyle(
              fontSize: 8,
            ),
          )
        ],
      ),
    );
  }
}
