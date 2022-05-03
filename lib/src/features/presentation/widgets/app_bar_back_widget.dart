// Material Flutter
import 'package:flutter/material.dart';
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Widget Generals
import 'package:delivery_app/src/features/presentation/widgets/back_button_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

AppBar appBarBackWidget(BuildContext context, {String title = ''}) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: white,
    leading: backButtonWidget(
      context,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: textWidget(text: title, textStyle: styleTitles),
    centerTitle: true,
  );
}
