import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/models/category.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/led/modes/led_mode.dart';
import 'package:iot_controller/src/models/status.dart';
import 'package:iot_controller/src/ui/utils/math.dart';

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

  LedPanelRequest getRequest() {
    return LedPanelRequest(
      id: id,
      name: name,
      categories: categories.map((x) => x.getRequest()).toList(),
      status: status.id,
      brightness: truncateToDecimalPlaces(brightness, 2),
      mode: mode.getAbstractRequest(),
    );
  }

  @override
  BaseProductRequest getAbstractRequest() {
    return BaseProductRequest()..ledPanel = getRequest();
  }

  static LedPanel fromResponse(LedPanelResponse r) {
    return LedPanel(
        id: r.id,
        name: r.name,
        categories:
            r.categories.map((c) => Category(id: c.id, name: c.name)).toList(),
        status: Status.fromId(r.status),
        brightness: r.brightness,
        mode: LedMode.fromResponse(r.mode));
  }
}
