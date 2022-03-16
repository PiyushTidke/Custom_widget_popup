import 'dart:ui';

import 'package:flutter/material.dart';

class One extends StatelessWidget {
  final String text;
  final double textSize;
  final int textColor;
  final int color;

  const One({
    required this.text,
    required this.textSize,
    required this.textColor,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    Widget okButton = TextButton(
      child: Text(
        "OK",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    return Container(
      margin: EdgeInsets.all(20),
      child: Container(
        width: 70,
        height: 77,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              color: Color(textColor),
            ),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                // ignore: prefer_const_constructors
                return AlertDialog(
                  title: Text("YouClick"),
                  content: Text("First"),
                  actions: [
                    okButton,
                  ],
                );
              },
            );
          },
          color: Color(color),
        ),
      ),
    );
  }
}
