//Screen 1 -

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:kundenanfragen/reusable/button.dart';
import 'package:kundenanfragen/screens/contact_screen.dart';
import 'package:kundenanfragen/screens/problem_screen.dart';

class OverviewScreen extends StatelessWidget {
  static const String id = '/';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                textlabel: 'Finde dein Problem',
                color: Colors.lightBlueAccent,
                aktion: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProblemScreen(),
                    ),
                  );
                },
              ),
              Button(
                textlabel: 'Kontakt',
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
        ),
      ),
    );
  }
}

// Buttons machen mit Kontakt - Problem melden
