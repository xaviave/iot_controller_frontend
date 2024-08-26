import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.lightBackground,
  });
  final Color? lightBackground;
  @override
  CustomColors copyWith({
    Color? lightBackground,
  }) {
    return CustomColors(
      lightBackground: lightBackground ?? this.lightBackground,
    );
  }

  // Controls how the properties change on theme changes
  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      lightBackground: Color.lerp(lightBackground, other.lightBackground, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'CustomColors(lightBackground: $lightBackground)';
  // the light theme
  static var light = const CustomColors(
    // lightBackground: Colors.red,
    lightBackground: Colors.white70,
  );
  // the dark theme
  static const dark = CustomColors(
    lightBackground: Colors.black87,
  );
}
