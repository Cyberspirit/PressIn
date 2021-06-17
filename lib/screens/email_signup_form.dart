import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:pressin/onboardscreens/button.dart';

Future<Widget> showEmailSignUpSheet(BuildContext context) {
  return showModalBottomSheet(
      elevation: 10,
      backgroundColor: Color(0xaffFFA37A),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      context: context,
      builder: (context) => Container(
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Center(
                        child: Text("Sign in with your social account",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'productsans',
                                fontWeight: FontWeight.bold,
                                color: Colors.white))),
                  ),
                  Center(
                    child: Container(
                      color: Color(0xaffD97D54),
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                        child: Column(
                          children: [
                            ListTile(
                              title: PressinButton(
                                background: Color(0xaffFFA37A),
                                text: 'signin with Google',
                                fontSize: 14,
                                icon: AntDesign.google,
                                radius: 50,
                                elevation: 1,
                                padding: EdgeInsets.all(20),
                                onPressed: () {
                                  showEmailSignUpSheet(context);
                                },
                              ),
                            ),
                            ListTile(
                              title: PressinButton(
                                background: Color(0xaffFFA37A),
                                text: 'signin with twitter',
                                fontSize: 14,
                                icon: AntDesign.twitter,
                                radius: 50,
                                elevation: 1,
                                padding: EdgeInsets.all(20),
                                onPressed: () {
                                  showEmailSignUpSheet(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ));
}
