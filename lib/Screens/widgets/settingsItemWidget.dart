import 'package:flutter/material.dart';

Widget customSettingsItem(
    {required String tittle,
     required String subTittle,
    IconData ? leadingIcon,
    }) {
  return ListTile(
    title: Text(
      tittle,
      style: const TextStyle(color: Colors.white),
    ),
    subtitle: Text(
      subTittle,
      style: TextStyle(color: Colors.white.withOpacity(0.5)),
    ),
    leading: Icon(
      leadingIcon,
      color: Colors.white,
    ),
  );
}
