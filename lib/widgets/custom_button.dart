import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text, this.btncolor, this.btnicon ,this.fontcolor, this.iconcolor});
  final void Function()? onPressed;
  final String text;
  final Color? btncolor;
  final Color? fontcolor;
  final IconData? btnicon;
  final Color? iconcolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: btncolor,
        ),
        height: 35,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(btnicon, color: iconcolor,),
              Text(
              text,
              style: TextStyle(
                  color: fontcolor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            ]
          ),
        ),
      ),
    );
  }
}