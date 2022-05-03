import 'package:delivery_app/src/features/presentation/widgets/cupertino_button_widget.dart';
import 'package:delivery_app/src/styles/colors.dart';
import 'package:delivery_app/src/utils/responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ScreenUtil - Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlertDialogWidget extends StatelessWidget {
  final String titleString;
  final String iconString;
  final String subTitleString;
  final String titleButtonString;
  final VoidCallback onPressed;

  const AlertDialogWidget(
      {required this.titleString,
      required this.iconString,
      required this.subTitleString,
      required this.titleButtonString,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(18.r),
        ),
      ),
      content: Container(
        //width: responsive.ip(20.0),
        height: 220.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            _sizeBox(10.h),
            _title(),
            _sizeBox(4.h),
            _subTitle(),
            _sizeBox(20.h),
            _buttonDone(context),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return SvgPicture.asset(
      iconString,
      color: primary,
      height: 58.sp,
    );
  }

  Widget _title() {
    return Text(
      titleString,
      style: TextStyle(
        color: greyTitles,
        fontSize: 17.sp,
        fontFamily: 'Raleway Bold',
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _subTitle() {
    return Text(
      subTitleString,
      style: TextStyle(
        color: greyText,
        fontSize: 12.sp,
        fontFamily: 'OpenSans Regular',
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buttonDone(BuildContext context) {
    final responsive = ResponsiveUtil.of(context);

    return Container(
      //height: 36.h,
      width: responsive.ip(22.0),
      child: CupertinoButtonWidget(
        name: titleButtonString,
        colorName: white,
        color: primary,
        onPressed: onPressed,
      ),
    );
  }

  Widget _sizeBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
