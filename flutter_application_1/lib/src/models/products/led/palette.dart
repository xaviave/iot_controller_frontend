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
