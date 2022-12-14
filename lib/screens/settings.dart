import 'package:flutter/material.dart';
import 'package:jots/widgets/custom_pill.dart';
import 'package:jots/widgets/key_button.dart';
import 'package:jots/widgets/secondary_text.dart';
import 'package:jots/widgets/theme_mode_switch.dart';
import 'package:jots/widgets/top_text.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopText(txt: "Theme"),
            const SizedBox(height: 18,),
            const Themeswitch(),
            const SizedBox(height: 25,),
            const Divider(),
            const SizedBox(height: 25,),
            const TopText(txt: "Hotkeys"),
            const SizedBox(height: 18,),
            Row(
              children: const [
                SecondaryText(txt: "Open App"),
                SizedBox(width: 25,),
                 KeyButton(txt: '⌘',),
                SizedBox(width: 4,),
                 KeyButton(txt: 'J',),
                SizedBox(width: 25,),
                 CustomPill(),
              ],
            ),
            const SizedBox(height: 25,),
            const Divider(),
            const SizedBox(height: 18,),
            const TopText(txt: "Other"),
            const SizedBox(height: 18,),
            const SecondaryText(txt: "Request Permissions"),
          ],
        ),
      ),
    );
  }
}