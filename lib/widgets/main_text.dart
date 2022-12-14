import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({super.key, required this.txt});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(txt, style: const TextStyle(fontWeight: FontWeight.bold),);
  }
}