// Materia Flutter
import 'package:flutter/material.dart';
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Desing Responsive
import 'package:delivery_app/src/utils/responsive_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/swiper_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_button_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

// WIDGET MAIN
Widget recentSearchWidget(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      sizedBoxWidget(height: 14.h),
      // TITULO 'Busquedas recientes'
      _titleaAndClearAll(context),
      sizedBoxWidget(height: 10.h),
      // Swiper
      _swiper(context),
    ],
  );
}

// WIDGETS PRIVATE
Widget _titleaAndClearAll(BuildContext context) {
  return Container(
    width: ResponsiveUtil.of(context).ip(50.0),
    child: Row(
      children: [
        textWidget(text: 'Busquedas recientes', textStyle: styleSubTitle),
        Expanded(child: sizedBoxWidget()),
        _clearAll(),
      ],
    ),
  );
}

Widget _clearAll() {
  return Row(
    children: [
      textButtonWidget(
        name: 'Limpiar',
        style: styleButtonTextPrimary,
        onPressed: () {},
      ),
      Icon(Icons.clear_outlined, color: primary, size: 15.sp)
    ],
  );
}

Widget _swiper(BuildContext context) {
  return swiperWidget(
    context,
    height: 154.h,
    widget: _card(context),
  );
}

Widget _card(BuildContext context) {
  return Container(
    // color: Colors.red,
    width: ResponsiveUtil.of(context).ip(24.0),
    margin: EdgeInsets.only(right: 4.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Imagen de la carta
        _image(),
        // Titulo
        textWidget(
            text: ' Sublime Pizzeria', textStyle: styleTitleCardHorizontal),
        // SubTitulo
        _subTitle(' 12 calle 4-15 zona 14, Guatemala City'),
      ],
    ),
  );
}

Widget _image() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8.r),
    child: Image(
      height: 125.h,
      width: double.infinity,
      image: NetworkImage(
          'https://images.unsplash.com/photo-1563245738-9169ff58eccf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGl6emElMjByZXN0YXVyYW50fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
      fit: BoxFit.cover,
    ),
  );
}

Widget _subTitle(String subTitle) {
  return Text(
    subTitle,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    style: styleSubTitleCardHorizontal,
  );
}
