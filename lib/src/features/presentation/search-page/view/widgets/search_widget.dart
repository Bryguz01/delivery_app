// Material Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
// Widget Generals
import 'package:delivery_app/src/features/presentation/widgets/search_bar_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';

// WIDGET MAIN
Widget searchWidget(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      sizedBoxWidget(height: 2.h),
      searchBarWidget(context, title: '¿Que quieres comer?'),
    ],
  );
}
