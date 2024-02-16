import 'package:chat_app/Screens/SettingsSubPage/account_settings.dart';
import 'package:chat_app/Screens/SettingsSubPage/chats_settings.dart';
import 'package:chat_app/Screens/SettingsSubPage/privacy_settings.dart';
import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:chat_app/Screens/SettingsSubPage/edit_profile_screen.dart';
import 'package:chat_app/Screens/widgets/custom_app_bar.dart';
import 'package:chat_app/Screens/widgets/settingsItemWidget.dart';
import 'package:flutter/material.dart';
import 'Utils/profile_info.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar:
          customAppBar(tittle: 'Settings', context: context, showIcon: true),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EditProfile(),
                  ));
                },
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(profilePicture),
                  radius: 30,
                ),
                title: const Text(
                  profileName,
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  profileDiscription,
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                ),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.qr_code)),
              ),
              Divider(
                color: Colors.white.withOpacity(0.3),
              ),

              //====== Items++====================
              // customSettingsItem(tittle: 'Buisness tools', subTittle: "profile, catalog, messaging tools", leadingIcon: Icons.add_business_outlined),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const  AccountSettingsScreen(),));
                },
                child: customSettingsItem(
                    tittle: 'Accounts',
                    subTittle: "Security, notifications, change number",
                    leadingIcon: Icons.person),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PrivacySettingsScreen(),));
                },
                child: customSettingsItem(
                    tittle: 'Privacy',
                    subTittle: "Block contacts disappering messages",
                    leadingIcon: Icons.lock),
              ),
              customSettingsItem(
                  tittle: 'Avatar',
                  subTittle: "Create, edit, profile photo",
                  leadingIcon: Icons.person_pin),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ChatSettings(),
                    ));
                  },
                  child: customSettingsItem(
                      tittle: 'Chats',
                      subTittle: "theme, wallpapers, chat history",
                      leadingIcon: Icons.message)),
              customSettingsItem(
                  tittle: 'Notifications',
                  subTittle: "Messages, group & call tones",
                  leadingIcon: Icons.notifications_active),
              customSettingsItem(
                  tittle: 'Storage and data',
                  subTittle: "Network usage, auto download",
                  leadingIcon: Icons.data_usage),
              InkWell(
                  onTap: () {},
                  child: customSettingsItem(
                      tittle: 'App language',
                      subTittle: "English(phone language)",
                      leadingIcon: Icons.language)),
              customSettingsItem(
                  tittle: 'Help',
                  subTittle: "Help center, contact us, privacy policy",
                  leadingIcon: Icons.help),
              customSettingsItem(
                  tittle: 'Invite a contact',
                  subTittle: '',
                  leadingIcon: Icons.group),

              //============last column=================
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'from',
                    style: TextStyle(color: Colors.white.withOpacity(0.5)),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle_outline),
                      Text(
                        'Meta',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
