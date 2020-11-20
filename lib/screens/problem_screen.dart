import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:kundenanfragen/screens/fluessigkeit.dart';
import 'package:kundenanfragen/screens/macbook_out.dart';
import 'package:kundenanfragen/screens/dropdown.dart';
import 'package:kundenanfragen/screens/others.dart';

class ProblemScreen extends StatefulWidget {
  static const String id = '/problem';

  @override
  _ProblemScreenState createState() => _ProblemScreenState();
}

class _ProblemScreenState extends State<ProblemScreen> {
  String _selectedProblem = null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Was ist passiert?'),
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
                value: _selectedProblem,
                items: _dropDownItem(),
                hint: Text('Wähle dein Problem aus'),
                onChanged: (value) {
                  setState(() {
                    _selectedProblem = value;
                  });
                  switch (value) {
                    case 'Flüssigkeit verschüttet':
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Fluessigkeit()),
                      );
                      break;
                    case 'MacBook geht nicht mehr an':
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OutScreen()),
                      );
                      break;
                    case 'Macbook ist runtergefallen':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DropdownScreen()),
                      );
                      break;
                    case 'Sonstiges':
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Others()),
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
    List<String> problem_values = [
      "Flüssigkeit verschüttet",
      "MacBook geht nicht mehr an",
      "Macbook ist runtergefallen",
      "Sonstiges"
    ];
    return problem_values
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
