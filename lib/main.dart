// Materia - Flutter
import 'package:flutter/material.dart';
// ScreenUtil - Desing Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Routes
import 'package:delivery_app/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'welcome',
        routes: getRoutes(),
      ),
      designSize: const Size(360, 640), 
    );
  }
}

// Investigar solo los principios SOLID
