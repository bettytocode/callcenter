import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:kundenanfragen/reusable/button.dart';
import 'package:kundenanfragen/screens/contact_screen.dart';

class OnOffScreen extends StatelessWidget {
  static const String id = '/onoff';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'War das MacBook an bzw. in Benutzung, als die Tat geschah?',
                style: TextStyle(
                    //color: Colors.white,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Button(
                    textlabel: "Ja",
                    color: Colors.lightBlueAccent,
                    aktion: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactUs(),
                        ),
                      );
                    },
                  ),
                  Button(
                    textlabel: "Nein",
                    color: Colors.lightBlueAccent,
                    aktion: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactUs(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
