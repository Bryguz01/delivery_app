// Material Flutter
import 'package:flutter/material.dart';
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/text_button_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

// WIDGET MAIN
AppBar appBarFilterWidget() {
  return AppBar(
    elevation: 0.8,
    backgroundColor: white,
    title: textWidget(text: 'Filtros', textStyle: styleAppBarFilrerTitle),
    centerTitle: true,
    leading: _leading(),
    actions: [
      _action(),
    ],
  );
}

// WIDGETS PRIVATE
Widget _leading() {
  return Container(
    alignment: Alignment.centerRight,
    margin: EdgeInsets.only(left: 10.0),
    child: textButtonWidget(
      name: 'Clean',
      style: styleAppBarFilrerLeading,
      onPressed: () {},
    ),
  );
}

Widget _action() {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(right: 12.0),
    child: textButtonWidget(
      name: 'Hecho',
      style: styleAppBarFilrerAction,
      onPressed: () {},
    ),
  );
}
