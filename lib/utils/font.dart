import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Font {
  // final double fsize;
  // final FontWeight fontWeight;

  // Font({
  //   this.fsize = 12,
  //   this.fontWeight = FontWeight.normal,
  // });

  static TextStyle myCustomFont(
      {double fsize = 14,
      FontWeight fontWeight = FontWeight.normal,
      Color color = Colors.black}) {
    return GoogleFonts.poppins(
        color: color, fontSize: fsize, fontWeight: fontWeight);
  }
}
