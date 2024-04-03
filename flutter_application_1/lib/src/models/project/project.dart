import 'package:flutter_application_1/protos/backend.pb.dart';
import 'package:intl/intl.dart';

import '../products/base_product.dart';

class Project {
  int id;
  int owner;
  DateTime pubDate;
  String name;
  List<BaseProduct> products;

  Project(
      {required this.id,
      required this.owner,
      required this.pubDate,
      required this.name,
      required this.products});

  ProjectRequest get_request() {
    return ProjectRequest(
        id: id,
        name: name,
        owner: owner,
        pubDate: DateFormat.yMMMd().format(pubDate),
        products: products.map((x) => x.get_request()).toList());
  }
}
