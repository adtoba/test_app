import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/helpers/navigator.dart';
import 'package:test_app/helpers/palette.dart';
import 'package:test_app/helpers/styles.dart';
import 'package:test_app/screens/homepage.dart';
import 'package:test_app/widgets/logo_builder.dart';
import 'package:test_app/widgets/theme_button.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: kBackgroundColor),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SvgPicture.asset(
                            'assets/images/register.svg',
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text('Register as a user', style: kWelcomeBackStyle),
                      Text(
                        'Sign up to continue',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: IconButton(
                        icon: Icon(Icons.keyboard_backspace),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: registerForm(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget registerForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
            decoration:
                InputDecoration(labelText: 'Name', alignLabelWithHint: true)),
        SizedBox(height: 20),
        TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                labelText: 'Phone number', alignLabelWithHint: true)),
        SizedBox(height: 20),
        TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration:
                InputDecoration(labelText: 'Email', alignLabelWithHint: true)),
        SizedBox(height: 20),
        TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Password', alignLabelWithHint: true)),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Sign up',
                style: TextStyle(color: Colors.black, fontSize: 20)),
            ThemeButton(onPressed: () => navigate(context, HomeTab()))
          ],
        ),
        SizedBox(height: 20),
        Text('Or login using social media'),
        SizedBox(height: 10),
        Row(
          children: [
            LogoBuilder(
              color: Colors.blue,
              text: 'f',
            ),
            SizedBox(
              width: 10,
            ),
            LogoBuilder(
              color: Colors.red,
              text: 'G+',
            )
          ],
        ),
      ],
    );
  }
}
