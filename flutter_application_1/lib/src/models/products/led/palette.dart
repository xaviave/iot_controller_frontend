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

  const Palette({required this.p});

  final List<String> p;
}
