import 'dart:ui';

Color colorFromHex(String c) {
  c = c.toUpperCase().replaceAll("#", "");
  if (c.length == 6) {
    c = "FF$c";
  }
  return Color(int.parse(c, radix: 16));
}

String hexFromColor(Color color) {
  return "#${(color.value & 0xFFFFFF).toRadixString(16).padLeft(6, '0')}";
}
