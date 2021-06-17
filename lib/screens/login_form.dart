import 'package:flutter/material.dart';

import 'package:pressin/onboardscreens/button.dart';

Future<Widget> showLoginFormSheet(BuildContext context) {
  return showModalBottomSheet(
      elevation: 10,
      backgroundColor: Color(0xaffACA8C7),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      context: context,
      builder: (context) => Container(
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                        child: Text("Log in to your Pressin Account",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'productsans',
                                fontWeight: FontWeight.bold,
                                color: Colors.white))),
                  ),
                  Center(
                    child: Container(
                      color: Color(0xaff8581A0),
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                        child: Column(
                          children: [
                            ListTile(
                              title: TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.supervised_user_circle,
                                      color: Colors.white30,
                                    ),
                                    border: OutlineInputBorder(
                                      // width: 0.0 produces a thin "hairline" border
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      borderSide: BorderSide.none,
                                      //borderSide: const BorderSide(),
                                    ),
                                    hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "productsans"),
                                    filled: true,
                                    fillColor: Colors.white24,
                                    hintText: 'Your Username'),
                              ),
                            ),
                            ListTile(
                              title: TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.vpn_key,
                                      color: Colors.white30,
                                    ),
                                    border: OutlineInputBorder(
                                      // width: 0.0 produces a thin "hairline" border
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      borderSide: BorderSide.none,
                                      //borderSide: const BorderSide(),
                                    ),
                                    hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "productsans"),
                                    filled: true,
                                    fillColor: Colors.white24,
                                    hintText: 'Password'),
                              ),
                            ),
                            ListTile(
                                title: Center(
                              child: PressinButton(
                                onPressed: () {},
                                text: "Sign In",
                                background: Color(0xaffACA8C7),
                                radius: 30,
                                fontSize: 15,
                                elevation: 1,
                                width: 200,
                              ),
                            ))
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
