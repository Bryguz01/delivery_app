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

class FilterWidget extends StatefulWidget {
  FilterWidget({Key? key}) : super(key: key);

  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  // VARIABLES SORT BY
  bool openNow = false; // Abierta ahora
  bool creditCard = false; // tarjeta de crédito
  bool alcoholServed = false; // alcohol servido
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedBoxWidget(height: 19.h),
        textWidget(text: 'Filtrar', textStyle: styleSubTitle),
        _listTitle(
          title: 'Abierto ahora',
          isActive: openNow,
          onTap: () {
            setState(() => openNow = !openNow);
          },
        ),
        _listTitle(
          title: 'Tarjeta de crédito',
          isActive: creditCard,
          onTap: () {
            setState(() => creditCard = !creditCard);
          },
        ),
        _listTitle(
          title: 'Bebidas Alcoholicas',
          isActive: alcoholServed,
          onTap: () {
            setState(() => alcoholServed = !alcoholServed);
          },
        ),
      ],
    );
  }
}

// WIDGETS PRIVATE
Widget _listTitle(
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
