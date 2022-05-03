// Material - Flutter
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Styles - Colors
import 'package:delivery_app/src/styles/colors.dart';
// Widgets - Page Welcome
import 'package:delivery_app/src/features/presentation/welcome-page/view/widgets/background_image_welcome_widget.dart';
import 'package:delivery_app/src/features/presentation/welcome-page/view/widgets/content_welcome_widget.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      body: Stack(
        children: [
          backgroundImageWelcomeWidget(),
          contentWelcomeWidget(context),
        ],
      ),
    );
  }
}
