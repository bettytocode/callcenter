import 'package:kundenanfragen/reusable/constants.dart';
import 'package:kundenanfragen/screens/problem_screen.dart';
import 'package:flutter/material.dart';

import 'screens/overview_screen.dart';
import 'screens/problem_screen.dart';
import 'screens/fluessigkeit.dart';
import 'screens/macbook_out.dart';
import 'screens/dropdown.dart';
import 'screens/onoff_screen.dart';
import 'screens/contact_screen.dart';

void main() {
  runApp(Kundenanfragen());
}

class Kundenanfragen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kundenanfragen',
      theme: ownTheme,
      initialRoute: OverviewScreen.id,
      routes: {
        OverviewScreen.id: (context) => OverviewScreen(),
        ProblemScreen.id: (context) => ProblemScreen(),
        Fluessigkeit.id: (context) => Fluessigkeit(),
        OutScreen.id: (context) => OutScreen(),
        OnOffScreen.id: (context) => OnOffScreen(),
        DropdownScreen.id: (context) => DropdownScreen(),
        ContactUs.id: (context) => ContactUs(),
      },
    );
  }
}
