import 'package:flutter/material.dart';
import 'package:instaui00/Screen/bottomnavigation_bar.dart';
import 'package:instaui00/model/items_model.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key, required this.user});
  final UserDetail user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const MyBottomNavigationBar(),
        backgroundColor: const Color.fromARGB(255, 239, 243, 247),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //for back button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              //For image
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      user.username,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(user.image),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
