import 'package:flutter/material.dart';

class SecondaryText extends StatelessWidget {
  const SecondaryText({super.key, required this.txt});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(txt, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),));
  }
}