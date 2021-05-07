import 'package:chat_page/lightDarkTheme.dart';
import 'package:chat_page/welcomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Page UI',
      debugShowCheckedModeBanner: false,
       theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: WelcomePage(),
    );
  }
}

