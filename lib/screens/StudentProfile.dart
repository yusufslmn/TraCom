import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height / 844;
    final double deviceWidth = MediaQuery.of(context).size.width / 390;
    var username = "Rümeysa Çelik";
    var userinfo = "Student 20 ";
    var aboutMe = "Thank you for your hard work on this project. We look forward to working with you again in the future.";

    return Scaffold(
      bottomNavigationBar: BottomIcons(deviceWidth: deviceWidth, deviceHeight: deviceHeight),
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        leading: Padding(
          padding: ProjectEdgeAppBar(deviceWidth),
          child: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: ProjectEdgeAppBar(deviceWidth),
            child: Icon(
              Icons.linear_scale,
              color: Colors.black,
            ),
          ),
        ],
        toolbarHeight: deviceHeight * 50,
        backgroundColor: ProjectColors.AppBar,
        elevation: 0.0,
      ),
      backgroundColor: ProjectColors.ScaffoldBackground,
      body: Container(
        width: deviceWidth * 390,
        height: deviceHeight * 844,
        child: Column(
          children: [
            StackTop(deviceWidth: deviceWidth, deviceHeight: deviceHeight),
            Text(username, style: ProjectTextStyle.UserNameTextStyle(deviceHeight)),
            Text(
              userinfo,
              style: ProjectTextStyle.UserInfoTextStyle(deviceWidth, deviceHeight),
            ),
            AboutMe(deviceWidth: deviceWidth, deviceHeight: deviceHeight),
            AboutMeDetails(deviceWidth: deviceWidth, deviceHeight: deviceHeight, aboutMe: aboutMe),
            TextBaslikLanguage(deviceWidth: deviceWidth, deviceHeight: deviceHeight),
            LanguageDetails(deviceWidth: deviceWidth, deviceHeight: deviceHeight),
            Comments(deviceWidth: deviceWidth, deviceHeight: deviceHeight),
          ],
        ),
      ),
    );
  }
}

class StackTop extends StatelessWidget {
  const StackTop({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: ProjectColors.AppBar,
            borderRadius: BorderRadius.only(
              bottomLeft: RadiusProject(deviceWidth, deviceHeight),
              bottomRight: RadiusProject(
                deviceWidth,
                deviceHeight,
              ),
            ),
          ),
          height: deviceHeight * 100,
          width: deviceWidth * 390,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: deviceHeight * 40,
            right: deviceWidth * 145,
            left: deviceWidth * 145,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(
                strokeAlign: StrokeAlign.outside,
                color: ProjectColors.ScaffoldBackground,
                width: deviceWidth * 3,
              ),
            ),
            height: deviceHeight * 99,
            width: deviceWidth * 100,
          ),
        )
      ],
    );
  }
}

class Comments extends StatelessWidget {
  const Comments({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: deviceWidth * 24,
        right: deviceWidth * 24,
        top: deviceHeight * 15,
      ),
      width: deviceWidth * 342,
      height: deviceHeight * 104.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          deviceHeight * 18,
        ),
      ),
      child: Column(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              height: deviceHeight * 30,
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: deviceHeight * 10, top: deviceHeight * 10),
                      height: deviceHeight * 20,
                      width: deviceHeight * 24,
                      child: Image.asset(
                        'images/logo.png',
                        fit: BoxFit.fill,
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: deviceHeight * 10.0, left: deviceHeight * 4),
                    child: Text(
                      'Comments',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: deviceHeight * 16, color: Color.fromARGB(255, 144, 152, 163)),
                    ),
                  )
                ],
              )),
          Container(
            height: 68,
            child: SingleChildScrollView(
                child: Column(
              children: [
                CommentsContainer(deviceHeight: deviceHeight),
                CommentsContainer(deviceHeight: deviceHeight),
                CommentsContainer(deviceHeight: deviceHeight),
                CommentsContainer(deviceHeight: deviceHeight),
              ],
            )),
          ),
        ],
      ),
    );
  }
}

class CommentsContainer extends StatelessWidget {
  const CommentsContainer({
    Key? key,
    required this.deviceHeight,
  }) : super(key: key);

  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(deviceHeight * 8),
        color: Color.fromARGB(255, 1, 180, 180),
      ),
      margin: EdgeInsets.all(deviceHeight * 6),
      height: deviceHeight * 62,
    );
  }
}

class LanguageDetails extends StatelessWidget {
  const LanguageDetails({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: deviceWidth * 24,
        right: deviceWidth * 24,
        top: deviceHeight * 10,
      ),
      width: deviceWidth * 342,
      height: deviceHeight * 196,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(deviceHeight * 18),
      ),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              LanguageContainer(deviceHeight: deviceHeight),
              LanguageContainer(deviceHeight: deviceHeight),
              LanguageContainer(deviceHeight: deviceHeight),
              LanguageContainer(deviceHeight: deviceHeight),
              LanguageContainer(deviceHeight: deviceHeight),
              LanguageContainer(deviceHeight: deviceHeight),
            ],
          )),
    );
  }
}

class TextBaslikLanguage extends StatelessWidget {
  const TextBaslikLanguage({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: deviceWidth * 27,
        right: deviceWidth * 27,
        top: deviceHeight * 17,
      ),
      child: SizedBox(
        width: deviceWidth * 349,
        height: deviceHeight * 15,
        child: Text(
          "Yabancı Diller",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            letterSpacing: deviceWidth * 0.2,
            fontSize: deviceHeight * 15,
            color: Color.fromARGB(255, 144, 152, 163),
            fontStyle: FontStyle.normal,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}

class AboutMeDetails extends StatelessWidget {
  const AboutMeDetails({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.aboutMe,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;
  final String aboutMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: deviceWidth * 27,
        right: deviceWidth * 27,
        top: deviceHeight * 10,
      ),
      child: SizedBox(
        width: deviceWidth * 349,
        height: deviceHeight * 75,
        child: Text(
          aboutMe,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            letterSpacing: deviceWidth * 0.2,
            fontSize: deviceHeight * 18,
            color: Color.fromARGB(255, 66, 66, 66),
            fontStyle: FontStyle.normal,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: deviceWidth * 27, right: deviceWidth * 27, top: deviceHeight * 20),
      child: SizedBox(
        width: deviceWidth * 349,
        height: deviceHeight * 22,
        child: Text(
          "About Me",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: deviceHeight * 16, color: Color.fromARGB(255, 144, 152, 163), fontStyle: FontStyle.normal),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}

class LanguageContainer extends StatelessWidget {
  const LanguageContainer({
    Key? key,
    required this.deviceHeight,
  }) : super(key: key);

  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(deviceHeight * 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(deviceHeight * 8),
          color: Color.fromARGB(255, 200, 40, 40),
        ),
        height: deviceHeight * 50,
        child: ListTile(),
      ),
    );
  }
}

class BottomIcons extends StatelessWidget {
  const BottomIcons({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: BottomEdge(deviceWidth, deviceHeight),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            deviceHeight * 16,
          ),
        ),
        height: deviceHeight * 72,
        width: deviceWidth * 359,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home_filled,
                color: Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.location_on_sharp,
                color: Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mail,
                color: Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectTextStyle {
  static TextStyle UserNameTextStyle(double deviceHeight) => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: deviceHeight * 20,
        fontStyle: FontStyle.normal,
        color: Color.fromARGB(255, 0, 0, 0),
      );
  static TextStyle UserInfoTextStyle(double deviceWidth, double deviceHeight) {
    return TextStyle(
      letterSpacing: deviceWidth * 0.2,
      fontSize: deviceHeight * 18,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      color: Color.fromARGB(255, 97, 97, 97),
    );
  }
}

EdgeInsets BottomEdge(double deviceWidth, double deviceHeight) => EdgeInsets.only(
      left: deviceWidth * 14.0,
      right: deviceWidth * 14,
      top: deviceHeight * 10,
      bottom: deviceHeight * 14,
    );
Radius RadiusProject(double deviceWidth, double deviceHeight) => Radius.elliptical(
      deviceWidth * 390,
      deviceHeight * 60,
    );

EdgeInsets ProjectEdgeAppBar(double deviceWidth) => EdgeInsets.only(
      right: deviceWidth * 25.0,
      left: deviceWidth * 25.0,
    );

class ProjectColors {
  static Color AppBar = const Color.fromARGB(255, 223, 241, 255);
  static Color ScaffoldBackground = Color.fromARGB(255, 241, 243, 246);
}
