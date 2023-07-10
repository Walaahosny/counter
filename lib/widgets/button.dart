import 'package:flutter/material.dart';
class BUTTON extends StatelessWidget {
  const BUTTON({super.key, required this.text, required this.onPressed});
final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return           ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange, minimumSize: Size(160, 60)),
        onPressed:onPressed,
        child: Text(
         text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.black),
        ))
    ;
  }
}
