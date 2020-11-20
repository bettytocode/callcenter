import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:kundenanfragen/screens/contact_screen.dart';
import 'package:kundenanfragen/screens/onoff_screen.dart';

class Fluessigkeit extends StatefulWidget {
  static const String id = '/fluessigkeit';

  @override
  _FluessigkeitState createState() => _FluessigkeitState();
}

class _FluessigkeitState extends State<Fluessigkeit> {
  String _selectedProblem1 = null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Welche Flüssigkeit genau?'),
              SizedBox(
                height: 50,
              ),
              DropdownButton(
                //dropdownColor: Colors.blue,
                elevation: 16,
                iconSize: 24,
                style: TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.blueAccent,
                ),
                value: _selectedProblem1,
                items: _dropDownItem(),
                hint: Text('Wähle deine Flüssigkeit aus'),
                onChanged: (value) {
                  setState(() {
                    _selectedProblem1 = value;
                  });
                  switch (value) {
                    case 'Heißgetränk wie Tee oder Kaffee':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnOffScreen(),
                        ),
                      );
                      break;
                    case 'Wasser (still || prickelnd)':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnOffScreen(),
                        ),
                      );
                      break;
                    case 'zuckerhaltiges Softdrink':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnOffScreen(),
                        ),
                      );
                      break;
                    case 'Sonstiges':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnOffScreen(),
                        ),
                      );
                      break;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> problem1_values = [
      "Heißgetränk wie Tee oder Kaffee",
      "Wasser (still || prickelnd)",
      "zuckerhaltiges Softdrink",
      "Sonstiges"
    ];
    return problem1_values
        .map(
          (value) => DropdownMenuItem(
            value: value,
            child: Text(
              value,
            ),
          ),
        )
        .toList();
  }
}
