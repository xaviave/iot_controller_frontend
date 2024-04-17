import 'package:flutter_application_1/protos/backend.pb.dart';
import 'package:flutter_application_1/src/models/category.dart';
import 'package:flutter_application_1/src/models/products/base_product.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/models/status.dart';

class LedPanel extends BaseProduct {
  Status status;
  double brightness;
  LedMode mode;

  LedPanel({
    required super.id,
    required super.name,
    required super.categories,
    required this.status,
    required this.brightness,
    required this.mode,
  });

  LedPanelRequest get_request() {
    return LedPanelRequest(
      id: id,
      name: name,
      categories: categories.map((x) => x.get_request()).toList(),
      status: status.id,
      brightness: brightness,
      mode: mode.get_abstract_request(),
    );
  }

  @override
  BaseProductRequest get_abstract_request() {
    return BaseProductRequest()..ledPanel = get_request();
  }

  static LedPanel from_response(LedPanelResponse r) {
    return LedPanel(
        id: r.id,
        name: r.name,
        categories:
            r.categories.map((c) => Category(id: c.id, name: c.name)).toList(),
        status: Status.fromId(r.status),
        brightness: r.brightness,
        mode: LedMode.from_response(r.mode));
  }
}
