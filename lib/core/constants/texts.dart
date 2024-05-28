import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextstyle {
  static TextStyle headings = GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15));

  static TextStyle appbartext = GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 23));
  static TextStyle whitetext = GoogleFonts.poppins(
      textStyle: TextStyle(color: Colors.white, fontSize: 16));

  static TextStyle blacktext = GoogleFonts.poppins(
      textStyle: TextStyle(color: Colors.black, fontSize: 16));
}
