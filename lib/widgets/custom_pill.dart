import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomPill extends StatelessWidget {
  const CustomPill({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.5),
        borderRadius: BorderRadius.circular(16)
      ),
      child: const Center(
        child: Text("Record New Shortcut", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
      ),
    );
  }
}