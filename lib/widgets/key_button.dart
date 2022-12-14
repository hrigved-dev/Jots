import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class KeyButton extends StatelessWidget {
  const KeyButton({super.key, required this.txt});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.25),
        spreadRadius: 2,
        blurRadius: 3,
        offset: const Offset(0, 3), // changes position of shadow
      ),
    ],
      ),
      child: Center(
        child: Text(txt,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}