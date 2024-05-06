import 'dart:ui';

enum DefaultPalette {
  heat(p: [
    Color(0xFF000000),
    Color(0xFF330000),
    Color(0xFF660000),
    Color(0xFF990000),
    Color(0xFFCC0000),
    Color(0xFFFF0000),
    Color(0xFFFF3300),
    Color(0xFFFF6600),
    Color(0xFFFF9900),
    Color(0xFFFFCC00),
    Color(0xFFFFFF00),
    Color(0xFFFFFF33),
    Color(0xFFFFFF66),
    Color(0xFFFFFF99),
    Color(0xFFFFFFCC),
    Color(0xFFFFFFFF),
  ]),

  cloud(p: [
    Color(0xFF0000FF),
    Color(0xFF00008B),
    Color(0xFF00008B),
    Color(0xFF00008B),
    Color(0xFF00008B),
    Color(0xFF00008B),
    Color(0xFF00008B),
    Color(0xFF00008B),
    Color(0xFF0000FF),
    Color(0xFF00008B),
    Color(0xFF87CEEB),
    Color(0xFF87CEEB),
    Color(0xFFADD8E6),
    Color(0xFFFFFFFF),
    Color(0xFFADD8E6),
    Color(0xFF87CEEB),
  ]),

  lava(p: [
    Color(0xFF000000),
    Color(0xFF800000),
    Color(0xFF000000),
    Color(0xFF800000),
    Color(0xFF8B0000),
    Color(0xFF8B0000),
    Color(0xFF800000),
    Color(0xFF8B0000),
    Color(0xFF8B0000),
    Color(0xFF8B0000),
    Color(0xFFFF0000),
    Color(0xFFFF8C00),
    Color(0xFFFFFFFF),
    Color(0xFFFF8C00),
    Color(0xFFFF0000),
    Color(0xFF8B0000),
  ]),

  ocean(p: [
    Color(0xFF191970),
    Color(0xFF00008B),
    Color(0xFF191970),
    Color(0xFF000080),
    Color(0xFF00008B),
    Color(0xFF0000CD),
    Color(0xFF2E8B57),
    Color(0xFF008080),
    Color(0xFF5F9EA0),
    Color(0xFF0000FF),
    Color(0xFF008B8B),
    Color(0xFF6495ED),
    Color(0xFF7FFFD4),
    Color(0xFF2E8B57),
    Color(0xFF00FFFF),
    Color(0xFF87CEFA),
  ]),

  party(p: [
    Color(0xFF5500AB),
    Color(0xFF84007C),
    Color(0xFFB5004B),
    Color(0xFFE5001B),
    Color(0xFFE81700),
    Color(0xFFB84700),
    Color(0xFFAB7700),
    Color(0xFFABAB00),
    Color(0xFFAB5500),
    Color(0xFFDD2200),
    Color(0xFFF2000E),
    Color(0xFFC2003E),
    Color(0xFF8F0071),
    Color(0xFF5F00A1),
    Color(0xFF2F00D0),
    Color(0xFF0007F9),
  ]),

  rainbow(p: [
    Color(0xFFFF0000),
    Color(0xFFD52A00),
    Color(0xFFAB5500),
    Color(0xFFAB7F00),
    Color(0xFFABAB00),
    Color(0xFF56D500),
    Color(0xFF00FF00),
    Color(0xFF00D52A),
    Color(0xFF00AB55),
    Color(0xFF0056AA),
    Color(0xFF0000FF),
    Color(0xFF2A00D5),
    Color(0xFF5500AB),
    Color(0xFF7F0081),
    Color(0xFFAB0055),
    Color(0xFFD5002B),
  ]);

  final List<Color> p;

  const DefaultPalette({required this.p});

  factory DefaultPalette.fromName(String name) {
    switch (name) {
      case "heat":
        return DefaultPalette.heat;
      case "cloud":
        return DefaultPalette.cloud;
      case "lava":
        return DefaultPalette.lava;
      case "ocean":
        return DefaultPalette.ocean;
      case "party":
        return DefaultPalette.party;
      case "rainbow":
        return DefaultPalette.rainbow;
      default:
        return DefaultPalette.heat;
    }
  }

  String get name {
    switch (this) {
      case DefaultPalette.heat:
        return "heat";
      case DefaultPalette.cloud:
        return "cloud";
      case DefaultPalette.lava:
        return "lava";
      case DefaultPalette.ocean:
        return "ocean";
      case DefaultPalette.party:
        return "party";
      case DefaultPalette.rainbow:
        return "rainbow";
      default:
        return "";
    }
  }
}
