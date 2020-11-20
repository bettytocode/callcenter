import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String textlabel;
  final Color color;
  final Function aktion;

  Button({this.textlabel, this.color, this.aktion});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: aktion,
          minWidth: 150.0,
          // height: 40.0,
          child: Text(
            textlabel,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
