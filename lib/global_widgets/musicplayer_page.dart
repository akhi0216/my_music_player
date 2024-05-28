// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_music_player/presentation/bottom_nav/bottom_nav.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/564x/d2/30/f7/d230f74523daccfd4b203ac8b496bb41.jpg"),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CustomBottompage(),
                            ));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 111,
              ),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Ember Island",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                    size: 36,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              LinearProgressIndicator(
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.shuffle,
                    color: Colors.white,
                    size: 36,
                  ),
                  Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: 36,
                  ),
                  Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 36,
                  ),
                  Icon(
                    Icons.skip_next,
                    color: Colors.white,
                    size: 36,
                  ),
                  Icon(
                    Icons.playlist_add,
                    color: Colors.white,
                    size: 36,
                  )
                ],
              )
            ],
          ),
        ),
      ),

      // gradient: LinearGradient(colors: [
      //   Colors.purple,
      //   Colors.blue,
      //   const Color.fromARGB(255, 0, 75, 136),
      //   Colors.deepPurple,
      //   Colors.purple,
      // ], begin: Alignment.bottomLeft),
    );
  }
}
