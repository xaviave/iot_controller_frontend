import 'package:flutter_application_1/protos/backend.pb.dart';
import 'package:flutter_application_1/src/models/products/base_product.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/models/status.dart';

class LedPanel extends BaseProduct {
  Status status;
  double brightness;
  LedMode mode;

  LedPanel({
    required super.uuid,
    required super.name,
    required super.categories,
    required this.status,
    required this.brightness,
    required this.mode,
  });

  @override
  dynamic get_request() {
    return LedPanelRequest(
      uuid: uuid,
      name: name,
      categories: categories.map((x) => x.uuid).toList(),
      status: status.id,
      brightness: brightness,
      mode: mode.uuid,
    );
  }
}
