import 'package:flutter/material.dart';

class Palette {
  static const Color grayLight = Color(0XFFF3F2FB);
  static const Color gray = Color(0XFF7F8DA0);
  static const Color black = Color(0XFF23233C);
  static const Color blue = Color(0XFF012B55);
  static const Color green = Color(0XFF11B23E);
  static const Color whatsApp = Color(0XFF25D366);
  static const Color red = Color(0XFFFF295D);
  static const Color redSecond = Color(0XFFFC1615);

  static const Color disableBackground = Color(0XFFDCDCDC);
  static const Color disableText = Color(0XFF95A0AE);

  static const Color background = Color(0xffF6F4F4);
  static const Color primaryColor = Color(0xffEB3A40);
  static const Color shadowBackground = Color.fromARGB(255, 28, 34, 66);
  static Map<String, Color> coloresMap = {
    'pastel_rosa': const Color(0xffFFB6C1),
    'pastel_verde': const Color(0xff98FB98),
    'pastel_azul': const Color(0xffADD8E6),
    'pastel_amarillo': const Color(0xffFFFFE0),
    'pastel_naranja': const Color(0xffFFC0CB),
    'pastel_turquesa': const Color(0xffAFEEEE),
    'neon_rosa': const Color(0xffFF1493).withOpacity(.5),
    'neon_verde': const Color(0xff00FF00),
    'neon_azul': const Color(0xff0000FF).withOpacity(.5),
    'neon_amarillo': const Color(0xffFFFF00),
    'neon_naranja': const Color(0xffFFA500),
    'neon_turquesa': const Color(0xff00FFFF),
    'pastel_lila': const Color(0xffE6E6FA),
    'pastel_morado': const Color(0xffD8BFD8),
    'pastel_durazno': const Color(0xffFFE5B4),
    'pastel_verde_agua': const Color(0xffE0FFFF),
    'neon_rojo': const Color(0xffFF0000).withOpacity(.5),
    'neon_morado': const Color(0xff8A2BE2).withOpacity(.5),
    'neon_coral': const Color(0xffFF7F50),
    'neon_verde_lima': const Color(0xff00FF7F),
    'neon_celeste': const Color(0xff00BFFF),
  };
  static List<Color> colors = coloresMap.values.toList();
}
