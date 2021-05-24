import 'package:flutter/material.dart';
import 'package:flutter_social_media_ui/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Social UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        backgroundColor: Colors.white,
      ),
      home:LoginScreen(),
    );
  }
}

