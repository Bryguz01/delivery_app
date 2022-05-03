// Cupertino - Experience IOS
import 'package:flutter/cupertino.dart';
// Materia - Flutter
import 'package:flutter/material.dart';
// ScreenUtil - Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CupertinoButtonWidget extends StatelessWidget {
  final String name;
  final Color color, colorName;
  final VoidCallback onPressed;

  const CupertinoButtonWidget({
    required this.name,
    required this.colorName,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0.0,
      borderRadius: BorderRadius.all(Radius.circular(18.r)),
      padding: EdgeInsets.symmetric(vertical: 10.h),
      onPressed: onPressed,
      color: color,
      child: Text(
        name,
        style: TextStyle(
          color: colorName,
          fontFamily: 'OpenSans Regular',
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
