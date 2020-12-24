import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/helpers/navigator.dart';
import 'package:test_app/helpers/palette.dart';
import 'package:test_app/helpers/styles.dart';
import 'package:test_app/screens/homepage.dart';
import 'package:test_app/screens/register.dart';
import 'package:test_app/widgets/logo_builder.dart';
import 'package:test_app/widgets/theme_button.dart';

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
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SvgPicture.asset(
                            'assets/images/sign_in.svg',
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text('Welcome Back', style: kWelcomeBackStyle),
                      Text(
                        'Sign in to continue',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: IconButton(
                        icon: Icon(Icons.keyboard_backspace), onPressed: () {}),
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
                          child: loginForm(),
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

  Widget loginForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            Text('Sign in',
                style: TextStyle(color: Colors.black, fontSize: 20)),
            ThemeButton(
              onPressed: () => navigate(context, HomeTab()),
            )
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
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => navigate(context, RegisterPage()),
              child: Text('Sign up',
                  style: TextStyle(
                      decoration: TextDecoration.underline, fontSize: 16)),
            ),
            Text('Forgot your Password?',
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 16)),
          ],
        ),
      ],
    );
  }
}
