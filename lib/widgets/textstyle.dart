import 'package:flutter/material.dart';
class textstyle extends StatelessWidget {
  const textstyle({super.key, required this.text,  this.size=32});
final String text;
final double size;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: size,
          color: Colors.black),
    );
  }
}
