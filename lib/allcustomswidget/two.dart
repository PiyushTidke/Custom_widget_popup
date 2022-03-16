import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  final String text;
  final double textsize;
  final int textcolor;
  final int color;

  const Two({
    required this.text,
    required this.textsize,
    required this.textcolor,
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
              fontSize: textsize,
              color: Color(textcolor),
            ),
          ),
          color: Color(color),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("YouClick"),
                  content: Text("Two"),
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
