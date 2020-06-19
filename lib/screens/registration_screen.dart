import 'package:flash_chat/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Hero(
                tag: 'logo',
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              decoration: kInputTextDecoration.copyWith(hintText: 'Enter your email',),
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                //Do something with the user input.
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              decoration: kInputTextDecoration.copyWith(hintText: 'Enter your password',),
              onChanged: (value) {
                //Do something with the user input.
              },
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Register',
              buttonColor: Colors.blueAccent,
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
