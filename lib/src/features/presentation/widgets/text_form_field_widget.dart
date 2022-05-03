// Materia - Flutter
import 'package:flutter/material.dart';
// ScreenUtil - Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Styles - Colors
import 'package:delivery_app/src/styles/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String name;

  const TextFormFieldWidget({required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        color: greyFilling,
      ),
      child: TextFormField(
        style: TextStyle(
          fontSize: 14.sp,
          fontFamily: 'OpenSans Regular',
          color: greyTitles,
        ),
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          isCollapsed: true,
          border: InputBorder.none,
          hintText: name,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontFamily: 'OpenSans Regular',
            color: greyHintText,
          ),
        ),
      ),
    );
  }
}
