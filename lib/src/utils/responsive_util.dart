import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart' show required; // Para uso del required
import 'dart:math' as math;

// Clase
class ResponsiveUtil {
  // Atributos
  final double? width, height, inch;

  // Constructor
  ResponsiveUtil(
      {@required this.width, @required this.height, @required this.inch});

  // Funcion
  static ResponsiveUtil of(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    final size = data.size;

    // Variable que contiene el valor de la diagonal
    final inch = math.sqrt(
      math.pow(size.width, 2) + math.pow(size.height, 2),
    );

    return ResponsiveUtil(
      width: size.width,
      height: size.height,
      inch: inch,
    );
  }

  // Funcion que retornara el ancho de la pantalla
  double wp(double porcent) {
    return this.width! * porcent / 100;
  }

  // Funcion que retornara el ancho de la altura
  double hp(double porcent) {
    return this.height! * porcent / 100;
  }

  // Funcion que retornara el ancho de la diagonal
  double ip(double porcent) {
    return this.inch! * porcent / 100;
  }
}
