import 'package:flutter/material.dart';
import '../components/grid_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: const [
                Text("beetroot.app",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Icon(Icons.expand_more),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.add_box_outlined, size: 28),
                SizedBox(width: 10),
                Icon(Icons.menu, size: 28),
              ],
            )
          ]),
        ),
        body: DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Column(
            children: [
              Column(
                children: const [
                  ProfileCard(),
                  SizedBox(height: 40),
                  TabBar(indicatorColor: Colors.pinkAccent, tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on_sharp),
                    ),
                    Tab(
                      icon: Icon(Icons.portrait_outlined, color: Colors.grey),
                    ),
                  ]),
                  SizedBox(
                    height: 240,
                    child: TabBarView(children: [
                      GridImageView(color: Colors.amber, total: 12),
                      GridImageView(color: Colors.deepPurpleAccent, total: 18),
                    ]),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Profile Pic
              Container(
                width: 80,
                height: 80,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              //Profile Stats | Posts | Followers | Followings
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: const [
                      Text("34",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text("Posts"),
                    ]),
                    Column(children: const [
                      Text("17",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text("Followers"),
                    ]),
                    Column(children: const [
                      Text("20",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text("Following"),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 5),
              const Text("Elias Creates",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              const Text("iOS Developer"),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(7)),
                      child: const Text(
                        "Edit Profile",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    alignment: Alignment.center,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(7)),
                    child: const Icon(Icons.person_add_outlined),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        const SizedBox(height: 100, child: StoryHighlights()),
      ],
    );
  }
}

class StoryHighlights extends StatelessWidget {
  const StoryHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          String name = "highlight ${index + 1}";
          Widget some = Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pinkAccent,
            ),
          );
          double size = 70;
          double between = 10;
          if (index == 9) {
            name = "New";
            some = const Icon(Icons.add, size: 30);
            size = 65;
            between = 15;
          }

          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Container(
                  width: size,
                  height: size,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: some,
                ),
                SizedBox(height: between),
                Text(
                  name,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
          );
        });
  }
}
