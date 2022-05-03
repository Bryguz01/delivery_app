// Materia Flutter
import 'package:flutter/material.dart';
// Cupertino Experience IOS
import 'package:flutter/cupertino.dart';
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Desing Responsive
import 'package:delivery_app/src/utils/responsive_util.dart'; // Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
// Widget Generals
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

// WIDGET MAIN
Widget cardVerticalWidget(BuildContext context,
    {required String imageString,
    required double imageHeight,
    required String title,
    required String subTitle}) {
  return Container(
    width: ResponsiveUtil.of(context).ip(24.0),
    margin: EdgeInsets.only(right: 4.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Imagen
        _image(imageString: imageString, imageHeight: imageHeight),
        // Titulo
        textWidget(text: title, textStyle: styleTitleCardVertical),
        // SubTitulo
        _subTitle(subTitle),
        // Calificacion y Button Delivery
        Row(
          children: [
            _ratings(),
            sizedBoxWidget(width: 6.w),
            _delivery(),
          ],
        ),
      ],
    ),
  );
}

// WIDGETS PRIVATE
Widget _image({required String imageString, required double imageHeight}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8.r),
    child: Image(
      height: imageHeight,
      width: double.infinity,
      image: NetworkImage(imageString),
      fit: BoxFit.cover,
    ),
  );
}

Widget _subTitle(String subTitle) {
  return Text(
    subTitle,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    style: styleSubTitleCardVertical,
  );
}

Widget _ratings() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(Icons.star, size: 14.sp, color: yellow),
      textWidget(text: '4.9 ', textStyle: styleRatingStarCardVertical),
      textWidget(
          text: '(312 Calificaciones)', textStyle: styleRatingCardVertical),
    ],
  );
}

Widget _delivery() {
  return Container(
    height: 14.sp,
    child: CupertinoButton(
      color: primary,
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: Text(
        'Delivery',
        style: TextStyle(
          color: white,
          fontFamily: 'OpenSans Regular',
          fontSize: 10.sp,
        ),
      ),
      onPressed: () {},
    ),
  );
}
