import 'package:flutter/material.dart';
import 'package:jots/screens/accounts.dart';
import 'package:jots/screens/settings.dart';
import 'package:jots/widgets/custom_button.dart';
import 'package:jots/widgets/custom_circle_avatar.dart';
import 'package:jots/widgets/edit_button.dart';
import 'package:jots/widgets/logout_button.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key, required this.isAccountSelected, required this.isSettingsSelected});
  final bool isAccountSelected;
  final bool isSettingsSelected;

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  late bool _isAccountSelected = widget.isAccountSelected;
  late bool _isSettingsSelected = widget.isSettingsSelected;
  Widget child = const AccountsPage();

  @override
  void initState() {
    super.initState();
    // print("Account val: ${_isAccountSelected}");
    // print("Settings val: ${_isSettingsSelected}");
    if(_isAccountSelected == true) {
      showAccountsPage();
    }
    else {
      showSettingsPage();
    }
  }


  Widget showAccountsPage() {
    child = const AccountsPage();
    // print("Accounts button");
    _isAccountSelected = true;
    _isSettingsSelected = false;
    return child;
  }

  Widget showSettingsPage() {
    child = const SettingsPage();
    // print("Settings button");
    _isAccountSelected = false;
    _isSettingsSelected = true;
    return child;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: const BoxDecoration(
        color: Colors.white,
        ),
        height: 800,
        width: 800,
        child: Row(
          children: [
            Container(
              height: 800,
              width: 250,
              color: const Color.fromARGB(31, 159, 157, 157),
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    const CustomCircleAvatar(),
                    const SizedBox(height: 10,),
                    const EditButton(),
                    const SizedBox(height: 60,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        height: 100,
                        child: Column(
                          children: [
                            CustomButton(
                            text: "Accounts",
                            btncolor: _isAccountSelected ? Colors.black : Colors.transparent,
                            btnicon: Icons.manage_accounts, 
                            fontcolor: _isAccountSelected ? Colors.white : Colors.black,
                            iconcolor: _isAccountSelected ? Colors.white : Colors.black,
                            onPressed: () {
                              setState(() {
                                showAccountsPage();
                              });
                            },),
                            const SizedBox(height: 20,),
                            CustomButton(text: "Settings",
                            btncolor: _isSettingsSelected ? Colors.black : Colors.transparent,
                            btnicon: Icons.settings,
                            fontcolor: _isSettingsSelected ? Colors.white : Colors.black,
                            iconcolor: _isSettingsSelected ? Colors.white : Colors.black,
                            onPressed: () {
                              setState(() {
                                showSettingsPage();
                              });
                            },),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    const LogoutButton(),
                  ],
                ),
              ),
            ),
            Expanded(child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: child,
            ))  
          ],
        ),
      ),
    );
  }
}

