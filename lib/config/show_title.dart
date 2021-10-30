import 'package:flutter/material.dart';

class ShowTitle extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  const ShowTitle({ Key? key, required this.text, required this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text!, style: style);
  }
}