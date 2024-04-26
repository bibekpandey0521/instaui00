import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 30,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: "love",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: "person",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/insta.jpg",
            width: 25,
            height: 25,
          ),
          label: "",
        ),
      ],
    );
  }
}
