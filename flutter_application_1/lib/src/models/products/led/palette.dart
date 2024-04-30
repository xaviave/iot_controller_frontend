enum Palette {
  heat(p: [
    "#000000",
    "#330000",
    "#660000",
    "#990000",
    "#CC0000",
    "#FF0000",
    "#FF3300",
    "#FF6600",
    "#FF9900",
    "#FFCC00",
    "#FFFF00",
    "#FFFF33",
    "#FFFF66",
    "#FFFF99",
    "#FFFFCC",
    "#FFFFFF"
  ]),

  cloud(p: [
    "#0000FF",
    "#00008B",
    "#00008B",
    "#00008B",
    "#00008B",
    "#00008B",
    "#00008B",
    "#00008B",
    "#0000FF",
    "#00008B",
    "#87CEEB",
    "#87CEEB",
    "#ADD8E6",
    "#FFFFFF",
    "#ADD8E6",
    "#87CEEB",
  ]),

  lava(p: [
    "#000000",
    "#800000",
    "#000000",
    "#800000",
    "#8B0000",
    "#8B0000",
    "#800000",
    "#8B0000",
    "#8B0000",
    "#8B0000",
    "#FF0000",
    "#FF8C00",
    "#FFFFFF",
    "#FF8C00",
    "#FF0000",
    "#8B0000",
  ]),

  ocean(p: [
    "#191970",
    "#00008B",
    "#191970",
    "#000080",
    "#00008B",
    "#0000CD",
    "#2E8B57",
    "#008080",
    "#5F9EA0",
    "#0000FF",
    "#008B8B",
    "#6495ED",
    "#7FFFD4",
    "#2E8B57",
    "#00FFFF",
    "#87CEFA",
  ]),

  party(p: [
    "#5500AB",
    "#84007C",
    "#B5004B",
    "#E5001B",
    "#E81700",
    "#B84700",
    "#AB7700",
    "#ABAB00",
    "#AB5500",
    "#DD2200",
    "#F2000E",
    "#C2003E",
    "#8F0071",
    "#5F00A1",
    "#2F00D0",
    "#0007F9",
  ]),

  rainbow(p: [
    "#FF0000",
    "#D52A00",
    "#AB5500",
    "#AB7F00",
    "#ABAB00",
    "#56D500",
    "#00FF00",
    "#00D52A",
    "#00AB55",
    "#0056AA",
    "#0000FF",
    "#2A00D5",
    "#5500AB",
    "#7F0081",
    "#AB0055",
    "#D5002B",
  ]);

  final List<String> p;

  const Palette({required this.p});

  factory Palette.fromName(String name) {
    return heat;
  }

  String get name {
    switch (this) {
      case Palette.heat:
        return 'heat';
      default:
        return "";
    }
  }
}
