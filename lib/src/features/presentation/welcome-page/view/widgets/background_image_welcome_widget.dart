// Material - Flutter
import 'package:flutter/material.dart';
// UI - Experience IOS
import 'dart:ui';
// Styles - Colors
import 'package:delivery_app/src/styles/colors.dart';

// WIDGET MAIN
Widget backgroundImageWelcomeWidget() {
  return Stack(
    children: [
      _backgroundImage(),
      _backgroundColor(),
    ],
  );
}

// WIDGETS PRIVATE
Widget _backgroundImage() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
          'https://1.bp.blogspot.com/-n3K5mvZXKzE/X2PfPWDz9NI/AAAAAAAAJk4/FhKuHp0GoZIvS36iHMK-IwALYtXeJQhGwCLcBGAsYHQ/s16000/fotografo-profesional-de-alimentos-y-productos-food-product-styling-ourense-vigo-galicia-espa%25C3%25B1a-49.jpg',
        ),
      ),
    ),
    child: BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 0.1,
        sigmaY: 0.1,
      ),
      child: Container(color: Colors.black.withOpacity(0.01)),
    ),
  );
}

Widget _backgroundColor() {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: opacityBlack,
        begin: Alignment.bottomRight,
      ),
    ),
  );
}
