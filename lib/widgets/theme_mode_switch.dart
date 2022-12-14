import 'package:flutter/material.dart';

class Themeswitch extends StatefulWidget {
  const Themeswitch({super.key});

  @override
  State<Themeswitch> createState() => _ThemeswitchState();
}

class _ThemeswitchState extends State<Themeswitch> {
  final items = ['Light mode', 'Dark mode'];
  String? value = 'Light mode';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.5),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            value: value,
            onChanged: (value) => setState(() {
              this.value = value;
            }),
            items: items.map(buildMenuItem).toList(),
          ),
        ),
      ),
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
  value: item,
  child: Text(
    item,
    style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
  ));