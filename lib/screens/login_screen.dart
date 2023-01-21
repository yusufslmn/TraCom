import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracom/widgets/AppText.dart';
import 'package:tracom/widgets/AppText2.dart';
import 'package:tracom/widgets/ReUsableButton.dart';
import 'package:tracom/widgets/ReUsableTextFormField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(106, 76, 99, 0),
                width: 185,
                height: 327,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/login.png"),
                        fit: BoxFit.cover))),
            Container(
              margin: EdgeInsets.only(top: 19, right: 194),
              child: AppText2(text: "Login", size: 36),
            ),
            Form(
              child: Column(
                children: [
                  Container(
                    width: 343,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(24, 19, 23, 0),
                    child: ReUsableTextFormField(
                      hintText: "Email",
                    ),
                  ),
                  Container(
                    width: 343,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(24, 19, 23, 0),
                    child: ReUsableTextFormField(
                      hintText: "Password",
                      obsecure: true,
                      suffix: Container(
                          margin:
                              EdgeInsets.only(top: 20, right: 21, bottom: 20),
                          child: AppText(
                            text: "Show",
                            color: Color(0xff57C3FF),
                            size: 11,
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 12, right: 255),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: AppText(
                        text: "Forgot Password?",
                        size: 12,
                        color: Color(0xff57C3FF),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24, top: 19, right: 23),
                    child: ReUsableButton(
                        color: Color(0xff4B93FF),
                        text: Container(
                            child: AppText(
                                text: "Log in",
                                color: Colors.white,
                                size: 20))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
