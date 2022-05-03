// Material Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
import 'package:delivery_app/src/utils/responsive_util.dart'; // Responsive
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/swiper_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_button_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

// WIDGET MAIN
Widget categoriesWidget(BuildContext context) {
  return Column(
    children: [
      sizedBoxWidget(height: 13.h),
      _titleaAndShowAll(context),
      sizedBoxWidget(height: 8.h),
      _swiper(context),
      sizedBoxWidget(height: 8.h),
    ],
  );
}

// WIDGET PRIVATE
Widget _titleaAndShowAll(BuildContext context) {
  return Container(
    width: ResponsiveUtil.of(context).ip(50.0),
    child: Row(
      children: [
        textWidget(text: 'Categorias', textStyle: styleSubTitle),
        Expanded(child: sizedBoxWidget()),
        _showAll(context),
      ],
    ),
  );
}

Widget _showAll(BuildContext context) {
  return Row(
    children: [
      textButtonWidget(
          name: 'Ver todos',
          style: styleButtonTextPrimary,
          onPressed: () {
            Navigator.pushNamed(context, 'categories');
          }),
      Icon(Icons.arrow_forward_outlined, color: primary, size: 15.sp)
    ],
  );
}

Widget _swiper(BuildContext context) {
  return swiperWidget(
    context,
    height: 115.h,
    widget: _card(context),
  );
}

Widget _card(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(right: 5.w),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: Image(
        width: ResponsiveUtil.of(context).ip(22.0),
        image: NetworkImage(
          'https://tunicaragua.com/images/stories/virtuemart/product/Hooters%20Alitas%20Combos2.jpg',
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}
