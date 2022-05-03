// Material Flutter
import 'package:flutter/material.dart';
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
// Widgets SearchPage
import 'package:delivery_app/src/features/presentation/search-page/view/widgets/recent_search_widget.dart';
import 'package:delivery_app/src/features/presentation/search-page/view/widgets/recommended_for_you_widget.dart';
import 'package:delivery_app/src/features/presentation/search-page/view/widgets/search_widget.dart';
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/app_bar_back_widget.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBackWidget(context, title: 'Buscar'),
      backgroundColor: white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Column(
                      children: [
                        searchWidget(context),
                        recentSearchWidget(context),
                        recommendedForYouWidget(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
