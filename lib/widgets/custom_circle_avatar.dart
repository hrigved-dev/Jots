import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 53.0,
      backgroundColor: Colors.black,
      child: CircleAvatar(
        radius: 50.0, 
        backgroundColor: Colors.white, 
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          child: Image.asset("assets/images/img.png", fit: BoxFit.cover,)),
          ),
      );
  }
}