import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tracom/widgets/AppText.dart';
import 'package:tracom/widgets/AppText2.dart';
import 'package:tracom/widgets/ReUsableButton.dart';
import 'package:tracom/widgets/ReUsableTextFormField.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(9, 44, 10, 0),
                width: 371,
                height: 204,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/register.png"),
                        fit: BoxFit.cover))),
            Container(
              margin: EdgeInsets.only(top: 25, right: 164),
              child: AppText2(text: "Register", size: 36,fontWeight: FontWeight.w500,),
            ),
            Form(
              child: Column(
                children: [
                  Container(
                    width: 343,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(33, 8, 14, 0),
                    child: ReUsableTextFormField(
                      hintText: "First Name",
                    ),
                  ),
                  Container(
                    width: 343,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(33, 8, 14, 0),
                    child: ReUsableTextFormField(
                      hintText: "Last Name",
                    ),
                  ),
                  Container(
                    width: 343,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(33, 8, 14, 0),
                    child: ReUsableTextFormField(
                      hintText: "Email",
                    ),
                  ),
                  Container(
                    width: 343,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(33, 8, 14, 0),
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
                    width: 343,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(33, 8, 14, 0),
                    child: ReUsableTextFormField(
                      hintText: "Confirm Password",
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
                    margin: EdgeInsets.only(left: 33, top: 32, right: 33,bottom: 95),
                    child: ReUsableButton(
                        color: Color(0xff4B93FF),
                        text: Container(
                            child: AppText(
                                text: "Register",
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
