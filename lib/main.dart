import 'package:flutter/material.dart';
import 'package:my_music_player/global_widgets/musicplayer_page.dart';
import 'package:my_music_player/presentation/bottom_nav/bottom_nav.dart';
import 'package:my_music_player/presentation/home_page/view/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: CustomBottompage(),
      // home: MusicPlayer(),
    );
  }
}
