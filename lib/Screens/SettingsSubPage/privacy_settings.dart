import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:chat_app/Screens/widgets/custom_app_bar.dart';
import 'package:chat_app/Screens/widgets/settingsItemWidget.dart';
import 'package:flutter/material.dart';

class PrivacySettingsScreen extends StatefulWidget {
  const PrivacySettingsScreen({super.key});

  @override
  State<PrivacySettingsScreen> createState() => _PrivacySettingsScreenState();
}

class _PrivacySettingsScreenState extends State<PrivacySettingsScreen> {
  bool switchOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: customAppBar(tittle: 'Privacy', context: context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                'Who can see my personal info',
                style: TextStyle(color: Colors.white.withOpacity(0.5)),
              ),
            ),
            customSettingsItem(
              tittle: 'Last seen',
              subTittle: 'Everyone',
            ),
            customSettingsItem(
                tittle: 'Profile photo', subTittle: 'everyone'),
            customSettingsItem(tittle: 'About', subTittle: 'Everyone'),
            customSettingsItem(
                tittle: 'Status', subTittle: 'My contacts'),
            Row(
              children: [
                Expanded(
                    child: customSettingsItem(
                        tittle: 'Read receipts',
                        subTittle:
                            "If turn off, you won't send or receive Read receipts. Read receipts are always sent for group chats")),
                Switch(
                  activeColor: primary,
                  value: switchOn,
                  onChanged: (value) {
                    setState(() {
                      switchOn = value;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
