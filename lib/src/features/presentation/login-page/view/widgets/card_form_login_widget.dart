// Material - Flutter
import 'package:delivery_app/src/styles/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
// Cupertino - Experience IOS
import 'package:flutter/cupertino.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:delivery_app/src/utils/responsive_util.dart';
// Styles - Colors
import 'package:delivery_app/src/styles/colors.dart';
// Widgets - Generals
import 'package:delivery_app/src/features/presentation/widgets/text_button_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/cupertino_button_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_form_field_widget.dart';

// WIDGET MAIN
Widget cardFormLoginWidget(BuildContext context) {
  return Transform.translate(
    offset: Offset(0.0, -20.0.h),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          children: [
            _sizeBox(24.h),
            _title(),
            _sizeBox(2.h),
            _subTitle(),
            _sizeBox(34.h),
            _inputs(context),
            _sizeBox(14.h),
            _textForgotPassword(context),
            _sizeBox(34.h),
            _buttonLogin(context),
            _sizeBox(65.h),
            _textSignUp(context),
          ],
        ),
      ),
    ),
  );
}

// WIDGETS PRIVATE
Widget _title() {
  return Text(
    'Bienvenido',
    style: TextStyle(
      color: greyTitles,
      fontSize: 24.sp,
      fontFamily: 'Raleway Bold',
      letterSpacing: 4.w,
    ),
  );
}

Widget _subTitle() {
  return Text(
    'DELIVERY APP',
    textAlign: TextAlign.start,
    style: TextStyle(
      color: greySubTitles,
      fontSize: 16.sp,
      fontFamily: 'OpenSans Regular',
      letterSpacing: 0.5.w,

      //fontFamily: 'OpenSans Light',
    ),
  );
}

Widget _inputs(BuildContext context) {
  final responsive = ResponsiveUtil.of(context);
  return Container(
    alignment: Alignment.centerRight,
    width: responsive.ip(38.0),
    child: Column(
      children: [
        TextFormFieldWidget(
          name: 'Correo electrónico',
        ),
        _sizeBox(6.h),
        TextFormFieldWidget(
          name: 'Contraseña',
        ),
      ],
    ),
  );
}

Widget _textForgotPassword(BuildContext context) {
  return Container(
    alignment: Alignment.centerRight,
    child: textButtonWidget(
      name: '¿Olvidaste tu contraseña? ',
      style: styleButtonTextPrimary,
      onPressed: () {
        Navigator.pushNamed(context, 'forgot-password');
      },
    ),
  );
}

Widget _buttonLogin(BuildContext context) {
  final responsive = ResponsiveUtil.of(context);

  return Container(
    width: responsive.ip(38.0),
    child: CupertinoButtonWidget(
      name: 'Ingresar',
      colorName: white,
      color: primary,
      onPressed: () {
        Navigator.pushNamed(context, 'tabs');
      },
    ),
  );
}

Widget _textSignUp(BuildContext context) {
  return Wrap(
    children: [
      Text(
        '¿No tienes una cuenta?',
        style: TextStyle(
          color: greyText,
          fontSize: 12.sp,
          fontFamily: 'OpenSans Regular',
        ),
      ),
      SizedBox(width: 2.w),
      textButtonWidget(
        name: 'Registrate aqui.',
        style: styleButtonTextPrimary,
        onPressed: () {
          Navigator.pushNamed(context, 'register');
        },
      ),
    ],
  );
}

Widget _sizeBox(double height) {
  return SizedBox(
    height: height,
  );
}
