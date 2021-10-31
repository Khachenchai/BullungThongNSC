import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  const Authen({ Key? key }) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: 50,
          color: Colors.blue,
        ),
      ),
    );
  }
}