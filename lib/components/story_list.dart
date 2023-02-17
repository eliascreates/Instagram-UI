import 'package:flutter/material.dart';
import '../models/home_story.dart';

class StoryList extends StatelessWidget {
  // final List<Story> stories = [
  //   Story(username: "beetroot", userProfile: "Photo", numStories: 0),
  //   Story(username: "lambady", userProfile: "Photo", numStories: 0),
  //   Story(username: "thatbody", userProfile: "Photo", numStories: 0),
  //   Story(username: "thisgotty", userProfile: "Photo", numStories: 0),
  //   Story(username: "jagotty", userProfile: "Photo", numStories: 0),
  //   Story(username: "liltex", userProfile: "Photo", numStories: 0)
  // ];
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
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 189, 189, 189),
                border: Border.all(width: 1, color: Colors.grey),
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
