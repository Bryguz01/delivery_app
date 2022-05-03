// Material Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil

// WIDGET MAIN
Widget listTileWidget(
    {required String title,
    required Color colorTitle,
    required String fontFamilyTitle,
    required Widget trailing,
    required VoidCallback onTap}) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0.0),
    onTap: onTap,
    title: _title(
      title: title,
      colorTitle: colorTitle,
      fontFamilyTitle: fontFamilyTitle,
    ),
    trailing: trailing,
  );
}

// WIDGETS PRIVATE
Widget _title(
    {required String title,
    required String fontFamilyTitle,
    required Color colorTitle}) {
  return Text(
    title,
    style: TextStyle(
      color: colorTitle,
      fontFamily: fontFamilyTitle,
      fontSize: 13.5.sp,
    ),
  );
}
