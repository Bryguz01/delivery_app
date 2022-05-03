import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

Widget swiperWidget(
  BuildContext context, {
  required double height,
  required Widget widget,
}) {
  return Container(
    height: height,
    child: Swiper(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return widget;
          },
        );
      },
    ),
  );
}
