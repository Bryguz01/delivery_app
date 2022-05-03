// Material Flutter
import 'package:flutter/material.dart';
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Design Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

// WIDGET MAIN
AppBar appBarSearchWidget(
    {required VoidCallback onTap, required VoidCallback onTapFilter}) {
  return AppBar(
    backgroundColor: white,
    elevation: 0.0,
    centerTitle: true,
    automaticallyImplyLeading: false,
    actions: [
      _action(onTapFilter: onTapFilter),
      sizedBoxWidget(width: 2.w),
    ],
    title: _barSearch(onTap),
  );
}

// WIDGETS PRIVATE
Widget _barSearch(VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 9.h),
      decoration: BoxDecoration(
        color: greyFilling,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          sizedBoxWidget(width: 10.w),
          Icon(Icons.search, color: greyHintText),
          sizedBoxWidget(width: 6.w),
          textWidget(text: 'Buscar', textStyle: styleAppBarSearchHint),
        ],
      ),
    ),
  );
}

IconButton _action({required VoidCallback onTapFilter}) {
  return IconButton(
    icon: Icon(Icons.filter_list, color: greyHintText),
    onPressed: onTapFilter,
  );
}
