import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText2 extends StatelessWidget {
  String text;
  double size;
  Color color;
  FontWeight fontWeight;



  AppText2({required this.text, required this.size, this.color=Colors.black,this.fontWeight=FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return Text(text, style:GoogleFonts.dmSans(
      fontSize: size,
      color: color,
      fontWeight:fontWeight,
    ) ,);
  }
}