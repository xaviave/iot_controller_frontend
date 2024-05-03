import 'dart:ui';

enum DefaultPalette {
  heat(p: [
    Color(0x00000000),
    Color(0x00330000),
    Color(0x00660000),
    Color(0x00990000),
    Color(0x00CC0000),
    Color(0x00FF0000),
    Color(0x00FF3300),
    Color(0x00FF6600),
    Color(0x00FF9900),
    Color(0x00FFCC00),
    Color(0x00FFFF00),
    Color(0x00FFFF33),
    Color(0x00FFFF66),
    Color(0x00FFFF99),
    Color(0x00FFFFCC),
    Color(0x00FFFFFF),
  ]),

  cloud(p: [
    Color(0x000000FF),
    Color(0x0000008B),
    Color(0x0000008B),
    Color(0x0000008B),
    Color(0x0000008B),
    Color(0x0000008B),
    Color(0x0000008B),
    Color(0x0000008B),
    Color(0x000000FF),
    Color(0x0000008B),
    Color(0x0087CEEB),
    Color(0x0087CEEB),
    Color(0x00ADD8E6),
    Color(0x00FFFFFF),
    Color(0x00ADD8E6),
    Color(0x0087CEEB),
  ]),

  lava(p: [
    Color(0x00000000),
    Color(0x00800000),
    Color(0x00000000),
    Color(0x00800000),
    Color(0x008B0000),
    Color(0x008B0000),
    Color(0x00800000),
    Color(0x008B0000),
    Color(0x008B0000),
    Color(0x008B0000),
    Color(0x00FF0000),
    Color(0x00FF8C00),
    Color(0x00FFFFFF),
    Color(0x00FF8C00),
    Color(0x00FF0000),
    Color(0x008B0000),
  ]),

  ocean(p: [
    Color(0x00191970),
    Color(0x0000008B),
    Color(0x00191970),
    Color(0x00000080),
    Color(0x0000008B),
    Color(0x000000CD),
    Color(0x002E8B57),
    Color(0x00008080),
    Color(0x005F9EA0),
    Color(0x000000FF),
    Color(0x00008B8B),
    Color(0x006495ED),
    Color(0x007FFFD4),
    Color(0x002E8B57),
    Color(0x0000FFFF),
    Color(0x0087CEFA),
  ]),

  party(p: [
    Color(0x005500AB),
    Color(0x0084007C),
    Color(0x00B5004B),
    Color(0x00E5001B),
    Color(0x00E81700),
    Color(0x00B84700),
    Color(0x00AB7700),
    Color(0x00ABAB00),
    Color(0x00AB5500),
    Color(0x00DD2200),
    Color(0x00F2000E),
    Color(0x00C2003E),
    Color(0x008F0071),
    Color(0x005F00A1),
    Color(0x002F00D0),
    Color(0x000007F9),
  ]),

  rainbow(p: [
    Color(0x00FF0000),
    Color(0x00D52A00),
    Color(0x00AB5500),
    Color(0x00AB7F00),
    Color(0x00ABAB00),
    Color(0x0056D500),
    Color(0x0000FF00),
    Color(0x0000D52A),
    Color(0x0000AB55),
    Color(0x000056AA),
    Color(0x000000FF),
    Color(0x002A00D5),
    Color(0x005500AB),
    Color(0x007F0081),
    Color(0x00AB0055),
    Color(0x00D5002B),
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
