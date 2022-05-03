// Material Flutter
import 'package:flutter/material.dart';
// Cupertino Experience IOS
import 'package:flutter/cupertino.dart';

// WIDGET MAIN
Widget textButtonWidget({
  required String name,
  required TextStyle style,
  required VoidCallback onPressed,
}) {
  return CupertinoButton(
    child: Text(name, style: style),
    onPressed: onPressed,
    padding: EdgeInsets.zero,
    minSize: 0.0,
  );
}
