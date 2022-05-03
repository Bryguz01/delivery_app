// Materia Flutter
import 'package:flutter/material.dart';
// Styles
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/card_vertical_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/swiper_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

// WIDGET MAIN
Widget newPlacesWidget(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      sizedBoxWidget(height: 8.h),
      textWidget(text: 'Descubre nuevos lugares', textStyle: styleTitles),
      sizedBoxWidget(height: 8.h),
      _swiper(context),
    ],
  );
}

// WIDGETS PRIVATE
Widget _swiper(BuildContext context) {
  return swiperWidget(
    context,
    height: 276.h,
    widget: cardVerticalWidget(
      context,
      imageString:
          'https://www.plazafontabella.com/wp-content/uploads/Imagen-3-20.png',
      imageHeight: 230.h,
      title: ' Frisco Grill',
      subTitle: ' Av. Reforma, Cdad. de Guatemala',
    ),
  );
}
