// Material Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';

class CuisinesWidget extends StatefulWidget {
  CuisinesWidget({Key? key}) : super(key: key);

  @override
  _CuisinesWidgetState createState() => _CuisinesWidgetState();
}

class _CuisinesWidgetState extends State<CuisinesWidget> {
  // Variables inicializan el valor de los botones
  bool buttonAmerican = false;
  bool buttonAsian = false;
  bool buttonSushi = false;
  bool buttonItalian = false;
  bool buttonDesserts = false;
  bool buttonFastFood = false;
  bool buttonChapin = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedBoxWidget(height: 10.h),
        textWidget(text: 'Cocinas', textStyle: styleSubTitle),
        sizedBoxWidget(height: 16.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _button(
              isActive: buttonAmerican,
              title: 'Americana',
              onPressed: () {
                setState(() => buttonAmerican = !buttonAmerican);
              },
            ),
            _button(
              isActive: buttonAsian,
              title: 'Asia',
              onPressed: () {
                setState(() => buttonAsian = !buttonAsian);
              },
            ),
            _button(
              isActive: buttonSushi,
              title: 'Sushi',
              onPressed: () {
                setState(() => buttonSushi = !buttonSushi);
              },
            ),
            _button(
              isActive: buttonItalian,
              title: 'Italiana',
              onPressed: () {
                setState(() => buttonItalian = !buttonItalian);
              },
            ),
          ],
        ),
        sizedBoxWidget(height: 7.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _button(
              isActive: buttonDesserts,
              title: 'Postre',
              onPressed: () {
                setState(() => buttonDesserts = !buttonDesserts);
              },
            ),
            _button(
              isActive: buttonFastFood,
              title: 'Comida rápida',
              onPressed: () {
                setState(() => buttonFastFood = !buttonFastFood);
              },
            ),
            _button(
              isActive: buttonChapin,
              title: 'Chapina',
              onPressed: () {
                setState(() => buttonChapin = !buttonChapin);
              },
            ),
          ],
        ),
      ],
    );
  }
}

// WIDGETS PRIVATE
Widget _button(
    {required bool isActive,
    required String title,
    required VoidCallback onPressed}) {
  return Container(
    height: 30.h,
    child: ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
            side: BorderSide(
              color: isActive ? primary : greyTitles,
              width: isActive ? 1.5 : 0.5,
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(white),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            vertical: 0.h,
            horizontal: 7.w,
          ),
        ),
        elevation: MaterialStateProperty.all(4.0),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontFamily: isActive ? 'OpenSans Bold' : 'OpenSans Regular',
          color: isActive ? primary : greyTitles,
          fontSize: 13.sp,
        ),
      ),
    ),
  );
}
