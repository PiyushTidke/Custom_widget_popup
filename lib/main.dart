// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:customwidget/allcustomswidget/eight.dart';
import 'package:customwidget/allcustomswidget/five.dart';
import 'package:customwidget/allcustomswidget/four.dart';
import 'package:customwidget/allcustomswidget/nine.dart';
import 'package:customwidget/allcustomswidget/one.dart';
import 'package:customwidget/allcustomswidget/seven.dart';
import 'package:customwidget/allcustomswidget/ten.dart';
import 'package:customwidget/allcustomswidget/three.dart';
import 'package:customwidget/allcustomswidget/two.dart';
import 'package:flutter/material.dart';

import 'allcustomswidget/six.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Custom widget app'),
            backgroundColor: Colors.greenAccent,
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Expanded(
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: One(
                            text: "First",
                            textSize: 20,
                            textColor: 0XFF000000,
                            color: 0XFFFF0000,
                          ),
                        ),
                        Expanded(
                          child: Two(
                              text: 'Two',
                              textsize: 20,
                              textcolor: 0XFF000000,
                              color: 0XFFAED6F1),
                        ),
                        Expanded(
                          child: Three(
                            text: 'Three',
                            textSize: 20.0,
                            textColor: 0XFF000000,
                            color: 0XFFFFA500,
                          ),
                        ),
                      ]),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Four(
                          text: 'Four',
                          textSize: 20.0,
                          textColor: 0XFF000000,
                          color: 0XFFFFA500,
                        ),
                      ),
                      Expanded(
                        child: Five(
                            text: "Five",
                            textSize: 20,
                            textColor: 0XFF000000,
                            color: 0XFFDE3163),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Six(
                          text: 'Six',
                          textSize: 20.0,
                          textColor: 0XFF000000,
                          color: 0XFFAEB6BF,
                        ),
                      ),
                      Expanded(
                        child: Seven(
                            text: "Seven",
                            textSize: 20,
                            textColor: 0XFF000000,
                            color: 0XFF34495E),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Eight(
                      text: "Eight",
                      textSize: 20,
                      textColor: 0XFF000000,
                      color: 0XFF52BE80),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Nine(
                            text: "Nine",
                            textSize: 20,
                            textColor: 0XFF000000,
                            color: 0XFFF9E79F),
                      ),
                      Expanded(
                        child: Ten(
                            text: "Ten",
                            textSize: 20,
                            textColor: 0XFF000000,
                            color: 0XFF784212),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
