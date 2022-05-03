// Material - Flutter
import 'package:flutter/material.dart';
// Styles - Colors
import 'package:delivery_app/src/styles/colors.dart';
// Desing Responsive
import 'package:delivery_app/src/utils/responsive_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Widgets - Generals
import 'package:delivery_app/src/features/presentation/widgets/alert_dialog_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/cupertino_button_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_form_field_widget.dart';

// WIDGET MAIN
Widget cardFormForgotPasswordWidget(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30.w),
    child: Center(
      child: Column(
        children: [
          _sizeBox(8.h),
          _title(),
          _sizeBox(6.h),
          _subTitle(context),
          _sizeBox(24.h),
          _emailInput(context),
          _sizeBox(12.h),
          _buttonSend(context),
          _sizeBox(60.h),
        ],
      ),
    ),
  );
}

// WIDGETS PRIVATE

Widget _title() {
  return Text(
    'Restablecer contraseña',
    style: TextStyle(
      color: greyTitles,
      fontSize: 24.sp,
      fontFamily: 'Raleway Bold',
      //letterSpacing: 1.w,
    ),
    textAlign: TextAlign.center,
  );
}

Widget _subTitle(BuildContext context) {
  return Text(
    'Por favor, introduzca su dirección de correo \nelectrónico. En breve recibira un enlace para \ncrear una nueva contraseña.',
    style: TextStyle(
      color: greySubTitles,
      fontSize: 12.sp,
      fontFamily: 'OpenSans Regular',
      letterSpacing: 0.4.w,
    ),
    textAlign: TextAlign.center,
  );
}

Widget _emailInput(BuildContext context) {
  final responsive = ResponsiveUtil.of(context);

  return Container(
    width: responsive.ip(38.0),
    child: TextFormFieldWidget(
      name: 'Correo electrónico',
    ),
  );
}

Widget _buttonSend(BuildContext context) {
  final responsive = ResponsiveUtil.of(context);

  return Container(
    width: responsive.ip(38.0),
    child: CupertinoButtonWidget(
      name: 'Enviar',
      colorName: white,
      color: primary,
      onPressed: () {
        _showAlertForgotoPassword(context);
      },
    ),
  );
}

Widget _sizeBox(double height) {
  return SizedBox(
    height: height,
  );
}

// Funciones
void _showAlertForgotoPassword(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialogWidget(
        iconString: 'assets/icons/reset_password.svg',
        titleString: 'Tu contraseña\n ha sido restablecida',
        subTitleString:
            'En breve recibirás un\n correo electrónico con un enlace\n para configurar una nueva contraseña.',
        titleButtonString: 'Hecho',
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, 'login', (route) => false);
        },
      );
    },
  );
}
