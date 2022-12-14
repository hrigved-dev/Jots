import 'package:flutter/material.dart';
import 'package:jots/screens/dialog_page.dart';
import 'package:jots/widgets/custom_text_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextButton(onTap: () { 
              showDialog(context: context, 
              builder: (context) => const DialogPage(isAccountSelected: true, isSettingsSelected: false,));
               }, text: "Go to Account"),
            const SizedBox(height: 5,),
           CustomTextButton(onTap: () { 
              showDialog(context: context, 
              builder: (context) => const DialogPage(isAccountSelected: false, isSettingsSelected: true,)); 
              }, text: "Go to Settings"),
            const SizedBox(height: 40),
            // const Text("Bonus: <user email>"),

          ],
        ),
      ),
    );
  }
}