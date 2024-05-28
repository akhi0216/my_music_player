// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_music_player/presentation/fav_screen/fav_screen.dart';
// import 'package:my_music_player/presentation/home_screen/home_screen.dart';
import 'package:my_music_player/presentation/home_screen/views/home_screen.dart';

class CustomBottompage extends StatefulWidget {
  const CustomBottompage({super.key});

  @override
  State<CustomBottompage> createState() => _BootomNavPageState();
}

class _BootomNavPageState extends State<CustomBottompage> {
  int page = 0;
  int selectedindex = 0;
  List pages = [HomeScreen(), FavScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        // buttonBackgroundColor: Colors.purple,
        color: Colors.purple,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(
            Icons.headphones,
            size: 26,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            size: 26,
            color: Colors.white,
          ),
        ],
        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: selectedindex,
      //     selectedItemColor: Colors.purple,
      //     selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      //     unselectedLabelStyle: TextStyle(
      //       color: Colors.purple,
      //     ),
      //     selectedFontSize: 20,
      //     unselectedItemColor: Colors.grey,
      //     unselectedFontSize: 15,
      //     onTap: (value) {
      //       selectedindex = value;
      //       setState(() {});
      //     },
      //     type: BottomNavigationBarType.fixed,
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.headphones,
      //             // color: Colors.purple,
      //           ),
      //           label: 'My Music'),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.favorite_outline_rounded,
      //             // color: Colors.purple,
      //           ),
      //           label: 'My Music'),
      //     ]),
      body: Center(
        child: pages[selectedindex],
      ),
    );
  }
}
