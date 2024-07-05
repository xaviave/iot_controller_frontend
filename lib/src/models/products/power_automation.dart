abstract class PowerAutomation {
  String name;
  String description;

  PowerAutomation({
    required this.name,
    required this.description,
  });

  @override
  String toString() {
    return name;
  }

  void watcher() {}
}

class NoPowerAutomation extends PowerAutomation {
  NoPowerAutomation(
      {required super.name, super.description = "No power automation"});
}

class WifiPowerAutomation extends PowerAutomation {
  WifiPowerAutomation({
    required super.name,
    super.description = "Wifi connection automation",
  });
}

class TimePowerAutomation extends PowerAutomation {
  TimePowerAutomation(
      {required super.name,
      super.description = "Time scheduling connection automation"});
}

class LocationPowerAutomation extends PowerAutomation {
  LocationPowerAutomation(
      {required super.name,
      super.description = "Location brightness connection automation"});
}
