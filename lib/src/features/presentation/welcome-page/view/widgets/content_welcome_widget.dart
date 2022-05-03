// Material - Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:delivery_app/src/utils/responsive_util.dart';
// Styles - Colors
import 'package:delivery_app/src/styles/colors.dart';
// Widgets - Generals
import 'package:delivery_app/src/features/presentation/widgets/cupertino_button_icon_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/cupertino_button_widget.dart';

// WIDGET MAIN
Widget contentWelcomeWidget(BuildContext context) {
  final responsive = ResponsiveUtil.of(context);

  return Center(
    child: Container(
      width: responsive.ip(38.0),
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sizeBox(180.h),
          _title(context),
          _sizeBox(4.h),
          _subTitle(context),
          _sizeBox(100.h),
          _buttonLogin(context),
          _sizeBox(4.h),
          _buttonLoginFacebook(context),
        ],
      ),
    ),
  );
}

// WIDGETS PRIVATE
Widget _title(BuildContext context) {
  return Text(
    'UN DELIVERY \nTAN RAPIDO COMO \nUN CLICK',
    style: TextStyle(
      color: white,
      fontSize: 36.sp,
      fontFamily: 'Raleway Bold',
    ),
    textAlign: TextAlign.left,
  );
}

Widget _subTitle(BuildContext context) {
  return Text(
    'COMIDA LISTA A LA PUERTA DE TU CASA',
    style: TextStyle(
      color: white,
      fontFamily: 'OpenSans Regular',
      fontSize: 12.sp,
    ),
    textAlign: TextAlign.left,
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
        Navigator.pushNamed(context, 'login');
      },
    ),
  );
}

Widget _buttonLoginFacebook(BuildContext context) {
  final responsive = ResponsiveUtil.of(context);
  return Container(
    width: responsive.ip(38.0),
    child: CupertinoButtonIconWidget(
      name: 'Ingresa con Facebook',
      colorName: white,
      color: facebook,
      onPressed: () {
        Navigator.pushNamed(context, 'login');
      },
    ),
  );
}

Widget _sizeBox(double height) {
  return SizedBox(
    height: height,
  );
}
