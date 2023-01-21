import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracom/widgets/AppText.dart';
import 'package:tracom/widgets/ReUsableButton.dart';
import 'package:tracom/widgets/ReUsableFloatingActionButton.dart';
import 'package:tracom/widgets/ShappedAppLargeText.dart';

class WelcomePageStudent extends StatefulWidget {
  const WelcomePageStudent({Key? key}) : super(key: key);

  @override
  State<WelcomePageStudent> createState() => _WelcomePageStudentState();
}

class _WelcomePageStudentState extends State<WelcomePageStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(59, 49, 60, 0),
              width: 271,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("img/welcome_student.png"),fit: BoxFit.cover)
              )

          ),
          Container(
            margin: EdgeInsets.only(top: 44),
            child: ShappedAppLargeText(text: "Hello Turkey!",color: Colors.black,),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 286,
            height: 135,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.dmSans(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  height: 1,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text:
                    'Ülkemize gelen turistlere bir gün boyunca eşlik ederek hem yabancı dilini geliştirmek hem de yeni tecrübeler mi edinmek istiyorsun? ',
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 35),
            child: ReUsableButton(color: Color(0xff3F7DFD),text: Container(
                child: AppText(
                    text: "Get Started",
                    color: Colors.white,
                    size: 20)) ),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(text: "Are you tourist?",size: 20,),
              AppText(text: " Get Started!",color: Color(0xff57C3FF),size: 20,)

            ],
          )
        ],
      ),
      floatingActionButton: ReUsableFloatingActionButton(backgroundColor: Color(0xff3F7DFD), onPressed: (){}),
    );
  }
}
