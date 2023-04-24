import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextStyle kTitleStyle = GoogleFonts.ubuntu(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.5,
  color: Colors.white,
);

final TextStyle kNormalStyle = GoogleFonts.ubuntu(
  fontSize: 15,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

// building indicators
List<Widget> buildIndicators() {
  List<Widget> list = [];

  for (var i = 0; i < 4; i++) {
    list.add(
      i == 1 ? indicator(true) : indicator(false),
    );
  }

  return list;
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
    duration: const Duration(
      milliseconds: 150,
    ),
  );
}
