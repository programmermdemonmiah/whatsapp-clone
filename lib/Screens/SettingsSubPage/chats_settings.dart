import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:flutter/material.dart';

class ChatSettings extends StatefulWidget {
  const ChatSettings({super.key});

  @override
  State<ChatSettings> createState() => _ChatSettingsState();
}

class _ChatSettingsState extends State<ChatSettings> {
  List<String> themeList = ['Dark theme', 'Light theme', 'System theme'];

  String selectedtheme = 'System theme';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedtheme == 'Dark theme'? background : Colors.white,
      appBar: AppBar(
        title: const Text(
          'Chats',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Display',
                  style: TextStyle(color: selectedtheme == 'Dark theme'? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.5)),
                ),
              ),
              ListTile(
                onTap: () {
                  _showThemeSelectionDialog(context);
                },
                leading: Icon(Icons.settings_display, color: selectedtheme == 'Dark theme'? Colors.white : Colors.black, size: 30),
                title: Text(
                  'Theme',
                  style: TextStyle(color: selectedtheme == 'Dark theme'? Colors.white: Colors.black),
                ),
                subtitle: Text(
                  selectedtheme,
                  style: TextStyle(color: selectedtheme == 'Dark theme'? Colors.white.withOpacity(0.5): Colors.black.withOpacity(0.5)),
                ),
              ),
              Divider(
                color: Colors.white.withOpacity(0.2),
                thickness: .2,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text('Chat settings', style: TextStyle(color: selectedtheme == 'Dark theme'?Colors.white.withOpacity(0.5): Colors.black.withOpacity(0.5)),),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showThemeSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select Theme'),
          content: DropdownButton(
            value: selectedtheme,
            items: themeList.map((item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedtheme = value as String;
                Navigator.of(context).pop(); // Close the dialog
              });
            },
          ),
        );
      },
    );
  }
}
