import 'package:delivery_app/src/features/presentation/tabs-page/explore-tab/view/explore_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs-page/favorites-tab/view/favorites_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs-page/my-order-tab/view/my_order_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs-page/profile-tab/view/profile_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs-page/widgets/bottom_navigation_bar_widget.dart';
import 'package:delivery_app/src/features/presentation/widgets/alert_dialog_widget.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  // Metodo se ejecuta al crearse el Statefull
  @override
  void initState() {
    super.initState();

    // Funcion Future llama al _activateLocation
    Future.delayed(
      Duration.zero,
      () {
        _activateLocation(context);
      },
    );
  }

  // Variable List - Contiene lista de Widgets "Tabs"
  List<Widget> _tabList = [
    ExploreTab(),
    MyOrderTab(),
    FavoritesTab(),
    ProfileTab(),
  ];

  // Variable int - Verificara la posicion de la lista de tabs
  int _selectedIndexTab = 0;

  // Funcion - Permite el cambio de tabs
  void _cambiarWidget(int index) {
    setState(() {
      _selectedIndexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabList.elementAt(_selectedIndexTab),
      bottomNavigationBar: bottomNavigationBarWidget(
        currentIndex: _selectedIndexTab,
        onTap: _cambiarWidget,
      ),
    );
  }

  // Funcion es llamada en el initState
  Future _activateLocation(BuildContext context) async {
    await _showAlertForgotoPassword(context);
  }
}

// Metodo que dibuja el AletDialog
_showAlertForgotoPassword(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialogWidget(
        iconString: 'assets/icons/location.svg',
        titleString: 'Activa tu GPS',
        subTitleString:
            'Es necesario que actives tu ubicación \npara mostrarte los restaurantes \nmas cercanos a ti.',
        titleButtonString: 'Activar',
        onPressed: () {
          //  Navigator.pushNamedAndRemoveUntil(context, 'tabs', (route) => false);
        },
      );
    },
  );
}
