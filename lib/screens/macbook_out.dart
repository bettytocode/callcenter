import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:kundenanfragen/reusable/button.dart';
import 'package:kundenanfragen/screens/contact_screen.dart';

class OutScreen extends StatelessWidget {
  static const String id = '/macbook_out';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Platz für weitere Fragen',
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
