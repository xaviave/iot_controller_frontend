import 'package:flutter_application_1/protos/backend.pb.dart';
import 'package:intl/intl.dart';

import 'products/base_product.dart';

class Project {
  int id;
  int owner;
  DateTime pubDate;
  String name;
  Map<String, BaseProduct> products;

  Project(
      {required this.id,
      required this.owner,
      required this.pubDate,
      required this.name,
      required this.products});

  static Project from_response(ProjectResponse r) {
    Map<String, BaseProduct> products = <String, BaseProduct>{};
    for (var e in r.products) {
      BaseProduct p = BaseProduct.from_response(e);
      products[p.name] = p;
    }

    return Project(
        id: r.id,
        owner: r.owner,
        pubDate: DateTime.parse(r.pubDate),
        name: r.name,
        products: products);
  }

  ProjectRequest get_request() {
    return ProjectRequest(
        id: id,
        name: name,
        owner: owner,
        pubDate: DateFormat.yMMMd().format(pubDate),
        products:
            products.values.map((x) => x.get_abstract_request()).toList());
  }
}
