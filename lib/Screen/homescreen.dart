import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instaui00/Screen/bottomnavigation_bar.dart';
import 'package:instaui00/Screen/posts_screen.dart';
import 'package:instaui00/Screen/story_screen.dart';
import 'package:instaui00/model/items_model.dart';

class HomeSceen extends StatefulWidget {
  const HomeSceen({super.key});

  @override
  State<HomeSceen> createState() => _HomeSceenState();
}

class _HomeSceenState extends State<HomeSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 243, 247),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              instagram(),
              //For instagram stories
              storiesText(),
              const SizedBox(
                height: 15,
              ),
              const Story(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(color: Colors.grey, height: 1),
              ),
              // For Posts
              const Posts(),
            
            ],
          ),
        ),
      ),
      //For bottomNavigation Bar
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}


Row storiesText() {
  return const Row(
    children: [
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Spacer(),
      Icon(
        Icons.play_arrow,
        size: 20,
      ),
      SizedBox(width: 5),
      Text(
        "Watch all",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Row instagram() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Icon(
        Icons.photo_camera_outlined,
        size: 30,
        color: Colors.black54,
      ),
      Image.asset(
        "assets/images/instagram.png",
        width: 150,
      ),
      Image.asset("assets/images/send1.png", width: 30),
    ],
  );
}
