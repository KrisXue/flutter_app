import 'package:flutter/material.dart';

import './home/home_page.dart';
import './login/login_page.dart';
import './forgotPwd/forgotPwd_page.dart';
import './camera/camera_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String,WidgetBuilder>{
    LoginPage.tag:(context)=>LoginPage(),
    HomePage.tag:(context)=>HomePage(),
    ForgotPwdPage.tag:(context)=>ForgotPwdPage(),
    CameraPage.tag:(context)=>CameraPage(),
  };
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: new LoginPage(),
      routes: routes,
    );
  }
}