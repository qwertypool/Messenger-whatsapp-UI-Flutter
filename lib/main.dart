import 'package:chat_page/lightDarkTheme.dart';
import 'package:chat_page/welcomePage.dart';
import 'package:flutter/material.dart';
import 'dart:async';
// import 'package:chat_page/ChatHomeScreen/profile.dart';
// import 'dart:io';
//import 'package:camera/camera.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();
  // Obtain a list of the available cameras on the device.
  //cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  //final firstCamera = cameras.first;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Page UI',
      debugShowCheckedModeBanner: true,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: WelcomePage(),
    );
  }
}
