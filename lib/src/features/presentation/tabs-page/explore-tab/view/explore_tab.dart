// Material Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
// Widgets Page
import 'package:delivery_app/src/features/presentation/tabs-page/explore-tab/view/widgets/categories_widget.dart';
import 'package:delivery_app/src/features/presentation/tabs-page/explore-tab/view/widgets/new_places_widget.dart';
import 'package:delivery_app/src/features/presentation/tabs-page/explore-tab/view/widgets/popular_this_week_widget.dart';
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/app_bar_search_widget.dart';

class ExploreTab extends StatefulWidget {
  @override
  _ExploreTabState createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      //
      appBar: appBarSearchWidget(onTap: () {
        Navigator.pushNamed(context, 'search');
      }, onTapFilter: () {
        Navigator.pushNamed(context, 'filter');
      }),

      //
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      newPlacesWidget(context),
                      popularThisWeekWidget(context),
                      categoriesWidget(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
