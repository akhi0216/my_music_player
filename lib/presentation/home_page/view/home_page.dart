// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_music_player/core/constants/color_constants.dart';
import 'package:my_music_player/core/constants/texts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainwhite,
      appBar: AppBar(
        leading: Icon(
          Icons.person,
          color: Colors.brown,
          size: 45,
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.brown,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Popular Artists",
                  style: MyTextstyle.headings,
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              height: 250,
              width: double.infinity,
              child: CarouselSlider(
                  items: [
                    Image.network(
                      "https://i.pinimg.com/564x/5f/a9/89/5fa9890d28231e4fef9241bf91f94dcc.jpg",
                      fit: BoxFit.cover,
                      width: 1500,
                    ),
                    Image.network(
                      "https://i.pinimg.com/564x/cf/03/2d/cf032d71fdad8d21bbc8b47cdd2bc28d.jpg",
                      fit: BoxFit.cover,
                      width: 1500,
                    ),
                    Image.network(
                      "https://i.pinimg.com/564x/e7/79/fb/e779fbb97d1bc1af295769e16c8d30d9.jpg",
                      fit: BoxFit.cover,
                      width: 1500,
                    ),
                    Image.network(
                      "https://i.pinimg.com/564x/bf/f9/a5/bff9a5629be2631f6c5810ddb86e40bc.jpg",
                      fit: BoxFit.cover,
                      width: 1500,
                    )
                  ],
                  options: CarouselOptions(
                      autoPlayAnimationDuration: Duration(
                        seconds: 1,
                      ),
                      autoPlayCurve: Curves.ease,
                      autoPlay: true,
                      height: 250,
                      viewportFraction: 1,
                      enlargeCenterPage: true)),
            ),
          ],
        ),
      ),
    );
  }
}
