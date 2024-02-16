import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({super.key, required BuildContext context});
String search = "Search";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: TextField(
          minLines: 1,
          maxLines: 2,
          decoration: InputDecoration(
            hintText: 'Search',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.white, width: 2),
            )
          ),
        ),
        actions: [
          Center(
            child: InkWell(onTap: () {

            }, child: const Text('Search', style: TextStyle(color: Colors.white, fontSize: 17),)),
          ),
          const SizedBox(width: 10,)
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
