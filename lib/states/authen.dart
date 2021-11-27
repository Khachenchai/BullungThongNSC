import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  const Authen({ Key? key }) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  // final emailControler

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField()
          ],
        ),
      ),
    );
  }
}