// Material Flutter
import 'package:flutter/material.dart';
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Desing Responsive
import 'package:delivery_app/src/utils/responsive_util.dart'; // Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil

// WIDGET MAIN
Widget searchBarWidget(BuildContext context, {required String title}) {
  return Container(
    width: ResponsiveUtil.of(context).ip(50.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      color: greyFilling,
    ),
    child: TextFormField(
      style: styleAppBarSearchText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.h),
        isCollapsed: true,
        border: InputBorder.none,
        hintText: title,
        hintStyle: styleAppBarSearchHint,
        prefixIcon: Icon(Icons.search, color: greyHintText),
      ),
    ),
  );
}
