import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
    @override
      State<StatefulWidget> createState() {
        // TODO: implement createState
        return LoginScreenState();
      }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }
  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
       labelText: 'Email Address',
       hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Minimum 8 characters'
      ),
      obscureText: false, // switch to true for dots in pw field
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {},
      color: Colors.blue,
      child: Text('Submit'),
    );
  }
}