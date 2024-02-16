import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:chat_app/Screens/widgets/settingsItemWidget.dart';
import 'package:flutter/material.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: appBarBg,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Account', style: TextStyle(color: Colors.white),),
      ), 
      body: Container(
        padding: const EdgeInsets.all(8),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            customSettingsItem(tittle: 'Security notifications',subTittle: ' ', leadingIcon: Icons.security),
            customSettingsItem(tittle: "Two-step verification",subTittle: '', leadingIcon: Icons.more_horiz_outlined),
            customSettingsItem(tittle: 'Change number',subTittle: '', leadingIcon: Icons.phonelink_lock_rounded),
            customSettingsItem(tittle: 'Request access info',subTittle: '', leadingIcon: Icons.request_page),
            customSettingsItem(tittle: 'Delete',subTittle: '', leadingIcon: Icons.delete)
          ],
        ),
      ),
    );
  }
}
