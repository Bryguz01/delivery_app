// Material - Flutter
import 'package:flutter/material.dart';
// Styles - Colors
import 'package:delivery_app/src/styles/colors.dart';
// Widgets - Register Page
import 'package:delivery_app/src/features/presentation/register-page/view/widgets/card_form_register_widget.dart';
// Widgets - Generals
import 'package:delivery_app/src/features/presentation/widgets/app_bar_back_widget.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: appBarBackWidget(context),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            children: [cardFormRegisterWidget(context)],
          ),
        ),
      ),
    );
  }
}
