import 'package:flutter/material.dart';
import 'package:tracom/screens/login_screen.dart';
import 'package:tracom/screens/register_screen.dart';
import 'package:tracom/screens/student_register_screen.dart';
import 'package:tracom/screens/student_register_screen2.dart';
import 'package:tracom/screens/welcome_page.dart';
import 'package:tracom/screens/welcome_page_student.dart';
import 'package:tracom/screens/welcome_page_tourist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StudentRegisterScreen2(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
    );
  }
}
