// Material Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
import 'package:delivery_app/src/utils/responsive_util.dart'; // Responsive
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/card_horizontal_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_button_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

// WIDGET MAIN
Widget popularThisWeekWidget(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      sizedBoxWidget(height: 12.h),
      _titleaAndShowAll(context),
      sizedBoxWidget(height: 8.h),
      _card(context),
      sizedBoxWidget(height: 10.h),
      _card(context),
      sizedBoxWidget(height: 10.h),
      _card(context),
    ],
  );
}

// WIDGETS PRIVATE
Widget _card(BuildContext context) {
  return cardHorizontalWidget(
    context,
    imageString:
        'https://media-cdn.tripadvisor.com/media/photo-s/09/69/16/0f/los-100-montaditos.jpg',
    imageHeight: 70.h,
    title: ' 100 Montaditos',
    subTitle: ' Guatemala City · In Majadas Once',
  );
}

Widget _titleaAndShowAll(BuildContext context) {
  return Container(
    width: ResponsiveUtil.of(context).ip(50.0),
    child: Row(
      children: [
        textWidget(text: 'Populares esta semana', textStyle: styleSubTitle),
        Expanded(child: sizedBoxWidget()),
        _showAll(),
      ],
    ),
  );
}

Widget _showAll() {
  return Row(
    children: [
      textButtonWidget(
        name: 'Ver todos',
        style: styleButtonTextPrimary,
        onPressed: () {},
      ),
      Icon(Icons.arrow_forward_outlined, color: primary, size: 15.sp)
    ],
  );
}
