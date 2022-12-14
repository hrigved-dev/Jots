import 'package:flutter/material.dart';

class TopText extends StatelessWidget {
  const TopText({super.key, required this.txt});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(txt, 
              style: const TextStyle(
              color: Colors.black87,
              fontSize: 18,
            ),);
  }
}