import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(
    {required String tittle, required BuildContext context, bool? showIcon}) {
  return AppBar(
    backgroundColor: appBarBg,
    leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back_ios)),
    title: Text(
      tittle,
      style: TextStyle(color: Colors.white),
    ),
    actions: [
      showIcon == true
          ? IconButton(onPressed: () {}, icon: Icon(Icons.search))
          : SizedBox(),
    ],
  );
}
