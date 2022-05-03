// Material - Flutter
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Cupertino - Experience IOS
import 'package:flutter/cupertino.dart';
// Styles - Colors
import 'package:delivery_app/src/styles/colors.dart';
// Widgets - Page Login
import 'package:delivery_app/src/features/presentation/login-page/view/widgets/background_image_login_widget.dart';
import 'package:delivery_app/src/features/presentation/login-page/view/widgets/card_form_login_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Metodo para cambiar color a la bara de notificaciones
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      backgroundColor: white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              backgroundImageLoginWidget(context),
              cardFormLoginWidget(context),
            ],
          ),
        ),
      ),
    );
  }
}
