// Material Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
import 'package:delivery_app/src/utils/responsive_util.dart'; // Responsive
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors

// WIDGET MAIN
Widget rangeSliderPrice({
  required context,
  required int minPrice,
  required int maxPrice,
  required RangeValues values,
  required onChanged,
}) {
  return Container(
    width: ResponsiveUtil.of(context).ip(50.0),
    child: Row(
      children: [
        _minPrice(minPrice),
        _rangeSlider(context, values, onChanged),
        _maxPrice(maxPrice),
      ],
    ),
  );
}

// WIDGETS PRIVATE
Widget _rangeSlider(BuildContext context, RangeValues values, onChanged) {
  return Expanded(
    child: RangeSlider(
      min: 0,
      max: 300,
      activeColor: primary,
      inactiveColor: greyOpcity,
      values: values,
      onChanged: onChanged,
    ),
  );
}

Widget _minPrice(int minPrice) {
  return Row(
    children: [
      Text(
        'Q. ',
        style: TextStyle(
          color: greyTitles,
          fontFamily: 'Raleway Bold',
          fontSize: 13.sp,
        ),
      ),
      Text(
        '$minPrice',
        style: TextStyle(
          color: greyTitles,
          fontFamily: 'OpenSans Regular',
          fontSize: 14.sp,
        ),
      ),
    ],
  );
}

Widget _maxPrice(int maxPrice) {
  return Row(
    children: [
      Text(
        'Q. ',
        style: TextStyle(
          color: greyTitles,
          fontFamily: 'Raleway Bold',
          fontSize: 13.sp,
        ),
      ),
      Text(
        '$maxPrice',
        style: TextStyle(
          color: greyTitles,
          fontFamily: 'OpenSans Regular',
          fontSize: 14.sp,
        ),
      ),
    ],
  );
}
