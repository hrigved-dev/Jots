import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  const ColoredButton({super.key, required this.txt, required this.btncolor});
  final Color? btncolor;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Text(txt, style: TextStyle(color: btncolor),));
  }
}