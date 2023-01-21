import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {

  String text;
  double size;
  Color color;
  FontWeight fontWeight;
  double? height;


  AppText({required this.text, this.size=22,  this.color=Colors.black,this.fontWeight=FontWeight.w500,this.height});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.dmSans(fontSize: size,color: color),);
  }
}
