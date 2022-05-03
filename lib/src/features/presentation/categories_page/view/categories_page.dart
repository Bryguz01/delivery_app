// Material Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screenutil
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
// Widgets Page
import 'package:delivery_app/src/features/presentation/categories_page/view/widgets/card_categories.dart';
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/app_bar_back_widget.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: appBarBackWidget(context, title: 'Categorias'),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        child: CustomScrollView(
          slivers: [
            SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 2.0,
              children: [
                cardCategories(),
                cardCategories(),
                cardCategories(),
                cardCategories(),
                cardCategories(),
                cardCategories(),
                cardCategories(),
                cardCategories(),
                cardCategories(),
                cardCategories(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
