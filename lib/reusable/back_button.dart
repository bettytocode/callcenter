import 'package:flutter/material.dart';

class ButtonBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.lightBlueAccent,
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        'Go back!',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
