// Material Flutter
import 'package:flutter/material.dart';
// Cupertino Experience IOS
import 'package:flutter/cupertino.dart';

Widget backButtonWidget(BuildContext context,
    {Color color = Colors.black, required VoidCallback onPressed}) {
  return CupertinoNavigationBarBackButton(
    color: color,
    onPressed: onPressed,
  );
}
