import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:flutter/material.dart';


Widget customEditProfileItem(
    {required String label,
    required String tittle,
    String ? subTittle,
    required IconData leadingIcon,
    IconData ? trailingIcon}) {
    return ListTile(
        title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(label,
                    style: TextStyle(color: Colors.white.withOpacity(0.5)),),
                Text(
                    tittle,
                    style: const TextStyle(color: Colors.white),
                ),
            ],
        ),
        subtitle: Text(
            subTittle!.toString(),
            style: TextStyle(color: Colors.white.withOpacity(0.5)),
        ),
        leading: Icon(leadingIcon, color: Colors.white,),
        trailing: Icon(trailingIcon, color: primary,),
    );
}
