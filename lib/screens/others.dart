import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Others extends StatelessWidget {
  static const String id = '/others';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Hier könnte man ein Kontaktformular einbauen oder so.'),
        ),
      ),
    );
  }
}
