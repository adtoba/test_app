import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/helpers/palette.dart';
import 'package:test_app/helpers/styles.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: kBackgroundColor),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/images/login.svg',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Welcome back', style: kWelcomeBackStyle)
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: SingleChildScrollView(child: loginForm()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget loginForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
            decoration:
                InputDecoration(labelText: 'Email', alignLabelWithHint: true)),
        SizedBox(height: 10),
        TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Password', alignLabelWithHint: true)),
        Align(
          alignment: Alignment.centerRight,
          child: FlatButton(
            textColor: Colors.grey,
            child: Text('Forgot your password?',
                style: TextStyle(decoration: TextDecoration.underline)),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Material(
            color: Colors.deepPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: Text('LOGIN', style: TextStyle(color: Colors.white)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Center(
          child: FlatButton(
            textColor: Colors.grey,
            child: Text('CREATE ACCOUNT',
                style: TextStyle(decoration: TextDecoration.underline)),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
