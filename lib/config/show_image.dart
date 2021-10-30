import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  final String? path;
  final double height;
  final double width;
  const ShowImage({ Key? key, required this.path, required this.height, required this.width }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(path!, width: width, height: height);
  }
}