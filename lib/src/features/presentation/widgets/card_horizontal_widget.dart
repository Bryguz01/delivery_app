// Material Flutter
import 'package:flutter/material.dart';
// Cupertino Experience IOS
import 'package:flutter/cupertino.dart';
// Styles
import 'package:delivery_app/src/styles/colors.dart';
import 'package:delivery_app/src/styles/texts.dart';
// Design Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
import 'package:delivery_app/src/utils/responsive_util.dart'; // Responsive
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

// WIDGET MAIN
Widget cardHorizontalWidget(BuildContext context,
    {required String imageString,
    required double imageHeight,
    required String title,
    required String subTitle}) {
  return Container(
    width: ResponsiveUtil.of(context).ip(50.0),
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(8.r),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: greyFilling,
          blurRadius: 5.0,
          spreadRadius: 3.0,
          offset: Offset(1.0, 3.0),
        ),
      ],
    ),
    child: Row(
      children: [
        _image(context, imageString: imageString, imageHeight: imageHeight),
        SizedBox(width: 2.w),
        _content(title, subTitle),
      ],
    ),
  );
}

// WIDGETS PRIVATE
Widget _image(BuildContext context,
    {required String imageString, required double imageHeight}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8.r),
    child: Image(
      width: ResponsiveUtil.of(context).ip(15.0),
      height: imageHeight,
      image: NetworkImage(imageString),
      fit: BoxFit.cover,
    ),
  );
}

Widget _content(String title, String subTitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // TITLE
      textWidget(text: title, textStyle: styleTitleCardHorizontal),
      // SUBTITLE
      _subTitle(subTitle),
      // RATINGS AND DELIVERY
      Row(
        children: [
          _ratings(),
          sizedBoxWidget(width: 6.w),
          _delivery(),
        ],
      ),
    ],
  );
}

Widget _subTitle(String subTitle) {
  return Text(
    subTitle,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    style: styleSubTitleCardHorizontal,
  );
}

Widget _ratings() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(Icons.star, size: 13.sp, color: yellow),
      textWidget(text: '4.7 ', textStyle: styleRatingStarCardHorizontal),
      textWidget(
          text: ' (173 Calificaciones)', textStyle: styleRatingCardHorizontal),
    ],
  );
}

Widget _delivery() {
  return Container(
    height: 13.sp,
    child: CupertinoButton(
      color: primary,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Text(
        'Delivery',
        style: TextStyle(
          color: white,
          fontFamily: 'OpenSans Regular',
          fontSize: 9.sp,
        ),
      ),
      onPressed: () {},
    ),
  );
}
