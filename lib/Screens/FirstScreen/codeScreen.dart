import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:chat_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class ValidCodeScreen extends StatelessWidget {
   ValidCodeScreen({super.key});
   int code = 111111;
  final _codeKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            child: Column(
        children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Enter your Code',
              style: TextStyle(color: Colors.black, letterSpacing: 10, fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Form(
              key: _codeKey,
              child: SizedBox(
                width: 150,
                child: TextFormField(
                  cursorColor: primary,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  validator: (value) {if(value!.isEmpty){
                    return 'Enter your valid code';
                    }else if(value == code.toString()){

                  }else{
                    return "Your code is wrong";
                    }
                  },
                  decoration: const InputDecoration(
                      alignLabelWithHint: true,
                    hoverColor: primary,
                  ),
                ),
              ),
            ),
           const SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: primary),
                onPressed: () {
                  if(_codeKey.currentState!.validate()){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen(),));
                  }else{
                    return;
                  }
            }, child: const Text('Submit'))
        ],
      ),
          )),
    );
  }
}
