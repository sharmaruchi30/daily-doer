import 'package:flutter/material.dart';

class AppColors {
  static const Color blackColor = Color(0xff11151C);
  static const Color greyColor = Color(0xffE4E4E4);

  static const LinearGradient mainGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 28, 21, 84),
      Color.fromARGB(255, 50, 41, 122),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 100],
  );
  static const LinearGradient cardGradient =
      LinearGradient(colors: [Color(0xff08203E), Color(0xff557C93)]);
}
