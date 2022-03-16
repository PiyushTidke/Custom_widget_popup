import 'package:flutter/material.dart';

class Ten extends StatelessWidget {
  final String text;
  final double textSize;
  final int textColor;
  final int color;

  const Ten(
      {required this.text,
      required this.textSize,
      required this.textColor,
      required this.color});

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
        width: 100,
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
          color: Color(color),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("YouClick"),
                  content: Text("Ten"),
                   actions: [
                    okButton,
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
