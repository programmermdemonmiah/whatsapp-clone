import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:chat_app/Screens/FirstScreen/stratup_screen.dart';
import 'package:chat_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: appBarBg,
          )
      ),
      home: const StratUpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
