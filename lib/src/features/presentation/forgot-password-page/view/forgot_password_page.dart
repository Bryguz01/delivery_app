// Material - Flutter
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Styles - Colors
import 'package:delivery_app/src/styles/colors.dart';
// Widgets - Generals
import 'package:delivery_app/src/features/presentation/widgets/app_bar_back_widget.dart';
// Widgets - Page ForgotPassword
import 'package:delivery_app/src/features/presentation/forgot-password-page/view/widgets/card_form_forgot_password_widget.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: white,
      appBar: appBarBackWidget(context),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            children: [cardFormForgotPasswordWidget(context)],
          ),
        ),
      ),
    );
  }
}
