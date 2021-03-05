import 'package:flutter/material.dart';

class Tab1Page extends StatelessWidget {
  const Tab1Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
        alignment: Alignment.center,
        height: 300,
        width: 300,
        child: Text(
          "Option 1 Page",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        color: Colors.amber,
      )),
    );
  }
}