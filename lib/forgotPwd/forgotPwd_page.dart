import 'package:flutter/material.dart';

class ForgotPwdPage extends StatefulWidget {
  static String tag = 'forgotPwd-page';
  @override
  _ForgotPwdPage createState() => new _ForgotPwdPage();
}

class _ForgotPwdPage extends State<ForgotPwdPage> {
  @override
  Widget build(BuildContext context) {

    final logo = new Hero(
      tag: 'hero',
      child: new CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: new Image.asset('assets/images/piggy-bank.png'),
      ),
    );

    final email = new TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: new InputDecoration(
        hintText: 'Email',
        contentPadding: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: new OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      ),
    );

    final password = new TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration:  new InputDecoration(
        hintText: 'Password',
        contentPadding: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: new OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      ),
    );

    final saveButton = new Padding(
      padding: new EdgeInsets.symmetric(vertical: 16.0),
      child: new Material(
        borderRadius: BorderRadius.circular(32.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: new MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){},
          color: Colors.lightBlueAccent,
          child: new Text('Save',style: new TextStyle(color: Colors.white),),
        ),
      ),
    );


    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new Center(
          child: new ListView(
            shrinkWrap: true,
            padding: new EdgeInsets.only(left: 24.0,right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              email,
              SizedBox(height: 8.0,),
              password,
              SizedBox(height: 24.0,),
              saveButton
            ],
          ),
        ),
      ),
    );
  }
}