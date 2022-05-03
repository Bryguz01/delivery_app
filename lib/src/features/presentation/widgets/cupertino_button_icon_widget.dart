// Cupertino - Experience IOS
import 'package:flutter/cupertino.dart';
// Materia - Flutter
import 'package:flutter/material.dart';
// Styles - Colors
import 'package:delivery_app/src/styles/colors.dart';
// ScreenUtil - Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Illustrations - SVG
import 'package:flutter_svg/svg.dart';

class CupertinoButtonIconWidget extends StatelessWidget {
  final String name;
  final Color color, colorName;
  final VoidCallback onPressed;

  const CupertinoButtonIconWidget({
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
      onPressed: () {},
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(2.sp),
            height: 16.sp,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              'assets/icons/facebook_icon.svg',
              color: facebook,
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Text(
            name,
            style: TextStyle(
              color: colorName,
              fontFamily: 'OpenSans Regular',
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
