// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_music_player/core/constants/color_constants.dart';
import 'package:my_music_player/core/constants/texts.dart';
import 'package:my_music_player/global_widgets/musicplayer_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainwhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // backgroundColor: const Color.fromARGB(255, 215, 115, 232),
        // title: Text(
        //   "My Music",
        //   style: MyTextstyle.appbartext,
        // ),
        actions: [
          Icon(
            Icons.person,
            color: MyColors.mainpurple,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // first row
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(10),
                  height: 75,
                  decoration: BoxDecoration(
                    // color: MyColors.mainpurple,
                    color: Color.fromARGB(255, 210, 113, 227),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.playlist_add,
                        color: Colors.white,
                      ),
                      Text(
                        "Playlists",
                        style: MyTextstyle.whitetext,
                      )
                    ],
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(10),
                  height: 75,
                  decoration: BoxDecoration(
                    // color: MyColors.mainpurple,
                    color: Color.fromARGB(255, 210, 113, 227),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.schedule,
                        color: Colors.white,
                      ),
                      Text(
                        "Recents",
                        style: MyTextstyle.whitetext,
                      ),
                    ],
                  ),
                )),
              ],
            ),

            // end of 1 row

            SizedBox(
              height: 15,
            ),
            Text(
              "Songs",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),

            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MusicPlayer(),
                            ));
                      },
                      child: Container(
                        // height: 35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  // color: Colors.purpleAccent,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://i.pinimg.com/564x/fe/02/9a/fe029a63115cb4199c3fc1f32d6a6e27.jpg"),
                                          fit: BoxFit.cover)),
                                  height: 30,
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("ember-island")
                              ],
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    );
                  },

                  // ---------------

                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 20),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
