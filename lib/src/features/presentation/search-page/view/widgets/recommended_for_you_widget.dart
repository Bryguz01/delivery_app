// Materia Flutter
import 'package:flutter/material.dart';
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Desing Responsive
import 'package:delivery_app/src/utils/responsive_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/card_horizontal_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_button_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

// WIDGET MAIN
Widget recommendedForYouWidget(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      sizedBoxWidget(height: 14.h),
      _titleaAndShowAll(context),
      sizedBoxWidget(height: 10.h),
      _card(context),
      sizedBoxWidget(height: 8.h),
      _card(context),
      sizedBoxWidget(height: 8.h),
      _card(context),
      sizedBoxWidget(height: 8.h),
      _card(context),
      sizedBoxWidget(height: 8.h),
      _card(context),
      sizedBoxWidget(height: 8.h),
    ],
  );
}

// WIDGETS PRIVATE
Widget _card(BuildContext context) {
  return cardHorizontalWidget(
    context,
    imageString:
        'https://9a3dd0f30ec2813b0355-0aefa298f29a1e32e1203150d51d4825.ssl.cf1.rackcdn.com/pix_16_100459_12240_5d30f989360a5.jpg',
    imageHeight: ResponsiveUtil.of(context).ip(11.0),
    title: ' El Pirata',
    subTitle: ' 5ta avenida, 10-30 Zona 9',
  );
}

Widget _titleaAndShowAll(BuildContext context) {
  return Container(
    width: ResponsiveUtil.of(context).ip(50.0),
    child: Row(
      children: [
        textWidget(text: 'Recomendados para ti', textStyle: styleSubTitle),
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
        name: 'Limpiar',
        style: styleButtonTextPrimary,
        onPressed: () {},
      ),
      Icon(Icons.arrow_forward, color: primary, size: 15.sp)
    ],
  );
}
