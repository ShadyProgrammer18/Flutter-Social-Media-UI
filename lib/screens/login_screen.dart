import 'package:flutter/material.dart';
import 'package:flutter_social_media_ui/screens/home_screen.dart';
import 'package:flutter_social_media_ui/screens/signup_screen.dart';
import 'package:flutter_social_media_ui/widgets/curve_clipper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
           child: Column(
             children: <Widget>[
             ClipPath(
               clipper: CurveClipper(),
                   child: Image(
                 height: MediaQuery.of(context).size.height / 2.5,
                 image: AssetImage('assets/images/login_background.jpg'),
                 fit: BoxFit.cover,
               ),
             ),
             Text(
               'FRENZY',
               style: TextStyle(
                 color: Theme.of(context).primaryColor,
                 fontSize: 34.0,
                 fontWeight: FontWeight.bold,
                 letterSpacing: 10.0,
               ),
             ),
              SizedBox(height: 10.0),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0), 
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
              SizedBox(height: 10.0),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
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
              SizedBox(height: 40.0),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomeScreen(),
                    ),
                  ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  alignment: Alignment.center,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor, 
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    'Login',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600, 
                    letterSpacing: 1.5,
                  ),
                  ),
                ),
              ),
              Padding(
               padding:  EdgeInsets.symmetric(horizontal: 70.0, vertical: 20.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Don't have an Account?",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                          fontSize: 15.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                     context,
                    MaterialPageRoute(
                      builder: (_) => SignupScreen(),
                      ),
                    ),
                      child: Text(
                        " Sign Up",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
           ],
           ),
        ),
        ),
    );
  }
} 