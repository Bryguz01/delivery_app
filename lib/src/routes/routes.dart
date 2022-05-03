// Materia - Flutter
import 'package:delivery_app/src/features/presentation/categories_page/view/categories_page.dart';
import 'package:delivery_app/src/features/presentation/filter_page/view/filter_page.dart';
import 'package:delivery_app/src/features/presentation/register-page/view/register_page.dart';
import 'package:delivery_app/src/features/presentation/search-page/view/search_page.dart';
import 'package:delivery_app/src/features/presentation/tabs-page/tabs_page.dart';
import 'package:flutter/material.dart';
// Pages
import 'package:delivery_app/src/features/presentation/welcome-page/view/welcome_page.dart';
import 'package:delivery_app/src/features/presentation/login-page/view/login_page.dart';
import 'package:delivery_app/src/features/presentation/forgot-password-page/view/forgot_password_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    'welcome': (BuildContext context) => WelcomePage(),
    'login': (BuildContext context) => LoginPage(),
    'forgot-password': (BuildContext context) => ForgotPasswordPage(),
    'register': (BuildContext context) => RegisterPage(),
    'tabs': (BuildContext context) => TabsPage(),
    'search': (BuildContext context) => SearchPage(),
    'filter': (BuildContext context) => FilterPage(),
    'categories': (BuildContext context) => CategoriesPage(),
  };
}
