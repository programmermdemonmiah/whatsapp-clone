import 'package:chat_app/Screens/FirstScreen/loginScreen.dart';
import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StratUpScreen extends StatelessWidget {
  const StratUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 50,),
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/emon.jpg'),
                      radius: 120,
                    ),
                    const SizedBox(height: 25,),
                    const Text('Welcome to WhatsApp', style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w700),),
                    const SizedBox(height: 15,),
                    RichText(
                       textAlign: TextAlign.center,
                      text: TextSpan(
                      style: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)),
                      children: [
                        const TextSpan(text: 'Read our '),
                        TextSpan(text: 'Privacy Policy. ',style: const TextStyle(color: primary), recognizer: TapGestureRecognizer()
                          ..onTap = (){
                            print('Privacy Policy.');}
                        ),
                        const TextSpan(text:" Tap 'Agree and continue' to accept the "),
                        TextSpan(text: 'Terms of Service.', style: const TextStyle(color: primary), recognizer: TapGestureRecognizer()..onTap = (){print('Terms of Service');})
                      ]
                    ),
                    ),
                    // DropdownButton(items: , onChanged: onChanged)
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 400,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Text('Agree and continue', style: TextStyle(color: Colors.white, fontSize: 17),),
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}
