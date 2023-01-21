import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracom/widgets/AppText.dart';
import 'package:tracom/widgets/ReUsableButton.dart';
import 'package:tracom/widgets/ReUsableFloatingActionButton.dart';
import 'package:tracom/widgets/ShappedAppLargeText.dart';

class WelcomePageTourist extends StatefulWidget {
  const WelcomePageTourist({Key? key}) : super(key: key);

  @override
  State<WelcomePageTourist> createState() => _WelcomePageTouristState();
}

class _WelcomePageTouristState extends State<WelcomePageTourist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(50, 87, 39, 0),
              width: 301,
              height: 335,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/home1.png"), fit: BoxFit.cover))),
          Container(
            margin: EdgeInsets.only(top: 42),
            child: ShappedAppLargeText(
              text: "Hello Turkey!",
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 286,
            height: 103,
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
                    text: 'How about a student to accompany you on your trip? ',
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ReUsableButton(
              color: Color(0xff3F7DFD),
              text: Container(
                child: AppText(text: "Get Started", color: Colors.white, size: 20),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: "Are you student?",
                size: 20,
              ),
              AppText(
                text: " Get Started!",
                color: Color(0xff57C3FF),
                size: 20,
              )
            ],
          )
        ],
      ),
      floatingActionButton: ReUsableFloatingActionButton(
          backgroundColor: Color(0xff3F7DFD), onPressed: () {}),
    );
  }
}
