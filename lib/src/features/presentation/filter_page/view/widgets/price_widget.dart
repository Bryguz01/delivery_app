// Material Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
// Styles
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Widgets PriceWidget
import 'package:delivery_app/src/features/presentation/filter_page/view/widgets/range_slider_price_widget.dart';
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

class PriceWidget extends StatefulWidget {
  PriceWidget({Key? key}) : super(key: key);

  @override
  _PriceWidgetState createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  // Values

  RangeValues _values = RangeValues(0.3, 1.0);
  int _minPrice = 0;
  int _maxPrice = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedBoxWidget(height: 19.h),
        textWidget(text: 'Precio', textStyle: styleSubTitle),
        sizedBoxWidget(height: 2.h),
        _rangeSlider(),
        sizedBoxWidget(height: 10.h),
      ],
    );
  }

  // WIDGETS PRIVATE
  Widget _rangeSlider() {
    return rangeSliderPrice(
      context: context,
      maxPrice: _maxPrice,
      minPrice: _minPrice,
      values: _values,
      onChanged: (RangeValues newVAlue) {
        setState(() {
          _values = newVAlue;
          _minPrice = _values.start.toInt();
          _maxPrice = _values.end.toInt();
        });
      },
    );
  }
}
