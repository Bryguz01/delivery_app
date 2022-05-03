// Cupertino - Experience IOS
import 'package:flutter/cupertino.dart';
// Material - Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Styles - Colors
import 'package:delivery_app/src/styles/colors.dart';
// Widgets - Generals
import 'package:delivery_app/src/features/presentation/widgets/back_button_widget.dart';

// WIDGET MAIN
Widget backgroundImageLoginWidget(BuildContext context) {
  return Stack(
    children: [
      _image(),
      _backButton(context),
    ],
  );
}

// WIDGETS PRIVATE
Widget _image() {
  return Image(
    width: double.infinity,
    height: 270.h,
    image: NetworkImage(
        'https://www.wallpapertip.com/wmimgs/81-815355_hd-food.jpg'),
    fit: BoxFit.cover,
  );
}

Widget _backButton(BuildContext context) {
  return SafeArea(
    child: backButtonWidget(
      context,
      color: white,
      onPressed: () {
        Navigator.pushNamed(context, 'welcome');
      },
    ),
  );
}
