// Material Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

// WIDGET MAIN
Widget cardCategories() {
  return Card(
    clipBehavior: Clip.antiAlias,
    elevation: 2.0,
    child: Stack(
      children: [
        _image(),
        _background(),
        _texts(),
      ],
    ),
  );
}

// WIDGETS PRIVATE
Widget _image() {
  return Image(
    image: NetworkImage(
        'https://i.ndtvimg.com/i/2017-11/pizza_620x350_71511520342.jpg'),
    fit: BoxFit.cover,
    width: double.infinity,
    height: double.infinity,
  );
}

Widget _background() {
  return Container(
    decoration: BoxDecoration(color: greyOpcity),
  );
}

Widget _texts() {
  return Container(
    alignment: Alignment.bottomCenter,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Title
        textWidget(
            text: 'Comida Rapida',
            textStyle: TextStyle(
              backgroundColor: greyOpcity,
              fontFamily: 'OpenSans Regular',
              fontSize: 14.sp,
              color: white,
            )),
        // SubTitle
        textWidget(
            text: '12 Lugares',
            textStyle: TextStyle(
              backgroundColor: greyOpcity,
              fontFamily: 'OpenSans Regular',
              fontSize: 12.sp,
              color: white,
            )),
        sizedBoxWidget(height: 6.h),
      ],
    ),
  );
}
