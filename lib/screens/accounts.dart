import 'package:flutter/material.dart';
import 'package:jots/widgets/colored_tap_button.dart';
import 'package:jots/widgets/main_text.dart';
import 'package:jots/widgets/top_text.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            TopText(txt: "Name"),
            MainText(txt: "Quentin"),
            ColoredButton(txt: "Change name", btncolor: Colors.blue,),
            Divider(),
            TopText(txt: "Email"),
            MainText(txt: "quentin@jots.ai"),
            Divider(),
            TopText(txt: "Password"),
            ColoredButton(txt: "Change password", btncolor: Colors.blue,),
            Divider(),
            TopText(txt: "Account"),
            ColoredButton(txt: "Delete account", btncolor: Colors.red,),
          ],
        ),
      ),
    );
  }
}