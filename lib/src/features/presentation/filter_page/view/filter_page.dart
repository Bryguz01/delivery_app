// Material Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
// Widgets FilterPage
import 'package:delivery_app/src/features/presentation/filter_page/view/widgets/app_bar_filter_widget.dart';
import 'package:delivery_app/src/features/presentation/filter_page/view/widgets/cuisines_widget.dart';
import 'package:delivery_app/src/features/presentation/filter_page/view/widgets/filter_widget.dart';
import 'package:delivery_app/src/features/presentation/filter_page/view/widgets/price_widget.dart';
import 'package:delivery_app/src/features/presentation/filter_page/view/widgets/sort_by_widget.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: appBarFilterWidget(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.w),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  CuisinesWidget(),
                  SortByWidget(),
                  FilterWidget(),
                  PriceWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
