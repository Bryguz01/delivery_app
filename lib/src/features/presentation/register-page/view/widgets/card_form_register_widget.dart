// Material - Flutter
import 'package:delivery_app/src/styles/texts.dart';
import 'package:flutter/material.dart';
// Cupertino - Experience IOS
import 'package:flutter/cupertino.dart';
// Styles - Colors
import 'package:delivery_app/src/styles/colors.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:delivery_app/src/utils/responsive_util.dart';
// Widgets - Generals
import 'package:delivery_app/src/features/presentation/widgets/text_button_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/cupertino_button_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_form_field_widget.dart';

// WIDGET MAIN
Widget cardFormRegisterWidget(BuildContext context) {
  final responsive = ResponsiveUtil.of(context);

  return Center(
    child: Container(
      width: responsive.ip(38.0),
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          _sizeBox(8.h),
          _title(),
          _sizeBox(20.h),
          _subTitle(),
          _sizeBox(10.h),
          _nameInput(),
          _sizeBox(6.h),
          _emailInput(),
          _sizeBox(6.h),
          _phoneInput(),
          _sizeBox(6.h),
          _passwordInput(),
          _sizeBox(6.h),
          _confirmPasswordInput(),
          _sizeBox(30.h),
          _buttonCreate(context),
          _sizeBox(150.h),
          _textTermsAndConditions(context),
          _sizeBox(10.h),
        ],
      ),
    ),
  );
}

// WIDGETS PRIVATE
Widget _title() {
  return Container(
    alignment: Alignment.center,
    child: Text(
      'Crear una nueva cuenta',
      style: TextStyle(
        color: greyTitles,
        fontSize: 24.sp,
        fontFamily: 'Raleway Bold',
      ),
    ),
  );
}

Widget _subTitle() {
  return Container(
    alignment: Alignment.centerLeft,
    child: Text(
      'Completa los siguientes campos:',
      style: TextStyle(
        color: greySubTitles,
        fontSize: 14.5.sp,
        fontFamily: 'OpenSans Regular',
      ),
    ),
  );
}

Widget _nameInput() {
  return TextFormFieldWidget(
    name: 'Nombre',
  );
}

Widget _emailInput() {
  return TextFormFieldWidget(
    name: 'Correo electrónico',
  );
}

Widget _phoneInput() {
  return TextFormFieldWidget(
    name: 'Teléfono',
  );
}

Widget _passwordInput() {
  return TextFormFieldWidget(
    name: 'Contraseña',
  );
}

Widget _confirmPasswordInput() {
  return TextFormFieldWidget(
    name: 'Confirma tu contraseña',
  );
}

Widget _textTermsAndConditions(BuildContext context) {
  return Column(
    children: [
      Text(
        'Al hacer clic en Crear cuenta comprendes y',
        style: TextStyle(
          color: greyText,
          fontSize: 12.sp,
          fontFamily: 'OpenSans Light',
          //letterSpacing: 0.5.w,
        ),
      ),
      Wrap(
        children: [
          Text(
            'aceptas nuestros',
            style: TextStyle(
              color: greyText,
              fontSize: 12.sp,
              fontFamily: 'OpenSans Light',
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          textButtonWidget(
            name: 'Términos y condicones.',
            style: styleButtonTextPrimary,
            onPressed: () {
              // Navigator.pushNamed(context, 'register');
            },
          ),
        ],
      ),
    ],
  );
}

Widget _buttonCreate(BuildContext context) {
  final responsive = ResponsiveUtil.of(context);
  return Container(
    width: responsive.ip(38.0),
    child: CupertinoButtonWidget(
      name: 'Crear cuenta',
      colorName: white,
      color: primary,
      onPressed: () {},
    ),
  );
}

Widget _sizeBox(double height) {
  return SizedBox(
    height: height,
  );
}
