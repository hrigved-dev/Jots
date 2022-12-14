import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  const EditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const Text("Edit",
      style: TextStyle(
        color: Colors.blueAccent,
        fontWeight: FontWeight.w600 
        ),
      ),
    );
  }
}