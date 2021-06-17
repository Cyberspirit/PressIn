import 'package:flutter/material.dart';
import 'package:pressin/onboardscreens/button.dart';
import 'package:pressin/screens/email_signup_form.dart';
import 'package:pressin/screens/login_form.dart';
import 'package:pressin/screens/signup_form_sheet.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xaffF0F3F4),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('asset/images/pressin_logo@2x.png'),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Create a New Account',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'productsans',
                            fontWeight: FontWeight.bold,
                            color: Color(0xaff5F5B7A)),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PressinButton(
                      background: Color(0xaff87BCBF),
                      text: 'Form Sign up',
                      fontSize: 16,
                      radius: 50,
                      padding: EdgeInsets.all(20),
                      onPressed: () {
                        showSignUpFormSheet(context);
                      },
                    ),
                    PressinButton(
                      background: Color(0xaffD97D54),
                      text: 'Email Sign up',
                      fontSize: 16,
                      icon: Icons.email,
                      elevation: 20,
                      radius: 50,
                      padding: EdgeInsets.all(20),
                      onPressed: () {
                        showEmailSignUpSheet(context);
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Already Registered?',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'avenir',
                              color: Color(0xaff5F5B7A))),
                      SizedBox(
                        height: 5,
                      ),
                      PressinButton(
                          background: Color(0xaff5F5B7A),
                          text: 'Log IN',
                          fontSize: 16,
                          radius: 50,
                          padding: EdgeInsets.all(20),
                          onPressed: () {
                            showLoginFormSheet(context);
                          }),
                    ],
                  ),
                  PressinButton(
                    background: Colors.white,
                    text: 'Continue as Guest',
                    textColor: Color(0xaff5F5B7A),
                    fontSize: 16,
                    radius: 50,
                    padding: EdgeInsets.all(20),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/appmain');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
