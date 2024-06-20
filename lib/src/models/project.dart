import 'package:iot_controller/protos/backend.pb.dart';
import 'package:intl/intl.dart';
import 'package:iot_controller/src/models/user.dart';

import 'products/base_product.dart';

class Project {
  int id;
  User owner;
  DateTime pubDate;
  String name;
  Map<String, BaseProduct> products;
  final f = DateFormat('yyyy-MM-ddThh:mm:ss');

  Project(
      {required this.id,
      required this.owner,
      required this.pubDate,
      required this.name,
      required this.products});

  static Project fromResponse(ProjectResponse r) {
    Map<String, BaseProduct> products = <String, BaseProduct>{};
    for (var e in r.products) {
      BaseProduct p = BaseProduct.fromResponse(e);
      products[p.name] = p;
    }

    return Project(
        id: r.id,
        owner: User.fromResponse(r.owner),
        pubDate: DateTime.parse(r.pubDate),
        name: r.name,
        products: products);
  }

  ProjectRequest getRequest() {
    return ProjectRequest(
        id: id,
        name: name,
        owner: owner.getRequest(),
        pubDate: f.format(pubDate),
        products: products.values.map((x) => x.getAbstractRequest()).toList());
  }

  @override
  String toString() {
    return name;
  }
}
