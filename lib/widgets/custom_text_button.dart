import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.onTap, required this.text});
  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onTap, child: Text(text, style: const TextStyle(color: Colors.black, decoration: TextDecoration.underline)));
  }
}