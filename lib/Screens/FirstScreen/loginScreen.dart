import 'package:chat_app/Screens/FirstScreen/codeScreen.dart';
import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

   final _numberKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Form(
                key: _numberKey,
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    const Text(

                      'Enter your phone number',
                      style: TextStyle(
                          color: primary, fontWeight: FontWeight.bold, fontSize: 17),textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      textAlign: TextAlign.center,
                        text: TextSpan(
                            style: const TextStyle(color: Colors.black, fontSize: 15),
                            children: [
                              const TextSpan(
                                  text: "WhatsApp will need to verify your account. "),
                              TextSpan(
                                  text: "What's my number?",
                                  style: const TextStyle(color: primary),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print("What's my number");
                                    })
                            ])),
                    const SizedBox(height: 25,),
                    InternationalPhoneNumberInput(
                      validator: (number) {
                        if(number!.isEmpty){
                          return 'Enter Phone number';
                        }
                        return null;
                      },
                      cursorColor: primary,
                      scrollPadding: const EdgeInsets.all(8),
                      textAlign: TextAlign.left,
                      onInputChanged: (PhoneNumber number) {},
                      selectorConfig: const SelectorConfig(
                         selectorType: PhoneInputSelectorType.DIALOG,
                        showFlags: true,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  if(_numberKey.currentState!.validate()){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ValidCodeScreen(),));
                  }
                  return;
                },
                child: Container(
                  height: 50,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: const Text('Next', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
