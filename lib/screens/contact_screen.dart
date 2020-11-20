import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:kundenanfragen/reusable/back_button.dart';

class ContactUs extends StatelessWidget {
  static const String id = '/contact';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  'Alles klar, jetzt heißt es Ruhe bewahren, tief einatmen und die Kreditkarte bereithalten!'),
              Text(
                  'Fülle folgendes Kontaktformular aus, um dein Macbook zu retten: ... '),
            ],
          ),
        ),
      ),
    );
  }
}
