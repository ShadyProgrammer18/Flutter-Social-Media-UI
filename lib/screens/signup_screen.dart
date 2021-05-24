import 'package:flutter/material.dart';
import 'package:flutter_social_media_ui/screens/home_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Create an Account",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0), 
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Username',
                    prefixIcon: Icon(
                      Icons.account_box,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
               SizedBox(height: 30.0),
                  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0), 
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Email Address',
                    prefixIcon: Icon(
                      Icons.mail,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
                  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0), 
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30.0,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 30.0),
                  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0), 
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Confirm Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30.0,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
               SizedBox(height: 40.0),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomeScreen(),
                    ),
                  ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.center,
                  height: 40.0,
                  decoration: BoxDecoration( 
                    color: Theme.of(context).primaryColor, 
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    'Sign Up',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600, 
                    letterSpacing: 1.5,
                  ),
                  ),
                ),
              ),
                ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}