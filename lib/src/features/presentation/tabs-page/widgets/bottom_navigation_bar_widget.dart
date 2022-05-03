import 'package:delivery_app/src/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget bottomNavigationBarWidget({required int currentIndex, required onTap}) {
  return BottomNavigationBar(
    onTap: onTap, // Metodos click

    // SELECTED
    selectedItemColor: primary,
    selectedIconTheme: IconThemeData(
      color: primary,
      opacity: 1.0,
      size: 23.5.sp,
    ),
    selectedLabelStyle: TextStyle(
      color: primary,
      fontSize: 12.sp,
      fontFamily: 'OpenSans Regular',
      letterSpacing: 0.1,
    ),

    // UNSELECTED
    unselectedItemColor: greyText,
    unselectedIconTheme: IconThemeData(
      color: greyText,
      opacity: 1.0,
      size: 23.sp,
    ),
    unselectedLabelStyle: TextStyle(
      color: greyText,
      fontSize: 11.5.sp,
      fontFamily: 'OpenSans Regular',
      letterSpacing: 0,
    ),
    currentIndex: currentIndex, // Tab Inicial
    showSelectedLabels: true,
    showUnselectedLabels: true,
    elevation: 10.0,

    items: <BottomNavigationBarItem>[
      _exploreTab(),
      _favoritesTab(),
      _myOrderTab(),
      _profileTab(),
    ],
  );
}

BottomNavigationBarItem _exploreTab() {
  return BottomNavigationBarItem(
    icon: Icon(Icons.explore),
    label: 'Explorar',
  );
}

BottomNavigationBarItem _favoritesTab() {
  return BottomNavigationBarItem(
    icon: Icon(Icons.favorite),
    label: 'Favoritos',
  );
}

BottomNavigationBarItem _myOrderTab() {
  return BottomNavigationBarItem(
    icon: Icon(Icons.book),
    label: 'Mi Pedido',
  );
}

BottomNavigationBarItem _profileTab() {
  return BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Perfil',
  );
}
