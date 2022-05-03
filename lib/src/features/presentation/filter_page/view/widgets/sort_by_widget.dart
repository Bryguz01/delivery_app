// Material Flutter
import 'package:flutter/material.dart';
// Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Styles
import 'package:delivery_app/src/styles/colors.dart'; // Colors
import 'package:delivery_app/src/styles/texts.dart'; // Texts
// Widgets Generals
import 'package:delivery_app/src/features/presentation/widgets/list_tile_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/sized_box_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/text_widget.dart';

class SortByWidget extends StatefulWidget {
  SortByWidget({Key? key}) : super(key: key);

  @override
  _SortByWidgetState createState() => _SortByWidgetState();
}

class _SortByWidgetState extends State<SortByWidget> {
  // Variables inicializan el valor bool de la lista
  bool topRated = false; //  Mejor Valorados
  bool nearMe = false; // Cerca de mi
  bool costLowToHigh = false; // Costo menor a mayor
  bool costHighToLow = false; // Costo mayor a menor
  bool popular = false; // Populares

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedBoxWidget(height: 19.h),
        textWidget(text: 'Ordenar por', textStyle: styleSubTitle),
        _listTile(
          title: 'Mejor Valorados',
          isActive: topRated,
          onTap: () {
            setState(() => topRated = !topRated);
          },
        ),
        _listTile(
          title: 'Cerca de mi',
          isActive: nearMe,
          onTap: () {
            setState(() => nearMe = !nearMe);
          },
        ),
        _listTile(
          title: 'Costo menor a mayor',
          isActive: costLowToHigh,
          onTap: () {
            setState(() => costLowToHigh = !costLowToHigh);
          },
        ),
        _listTile(
          title: 'Costo mayor a menor',
          isActive: costHighToLow,
          onTap: () {
            setState(() => costHighToLow = !costHighToLow);
          },
        ),
        _listTile(
          title: 'Populares',
          isActive: popular,
          onTap: () {
            setState(() => popular = !popular);
          },
        ),
      ],
    );
  }
}

// WIDGETS PRIVATE
Widget _listTile(
    {required String title,
    required bool isActive,
    required VoidCallback onTap}) {
  return Container(
    height: 28.h,
    child: listTileWidget(
      onTap: onTap,
      title: title,
      colorTitle: isActive ? primary : greyTitles,
      fontFamilyTitle: isActive ? 'OpenSans Bold' : 'OpenSans Regular',
      trailing: isActive ? Icon(Icons.check, color: primary) : sizedBoxWidget(),
    ),
  );
}
