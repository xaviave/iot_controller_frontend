import 'package:flutter_application_1/protos/backend.pb.dart';
import 'package:intl/intl.dart';

import '../products/base_product.dart';

class Project {
  String uuid;
  int owner;
  DateTime pubDate;
  String name;
  List<BaseProduct> products;

  Project(
      {required this.uuid,
      required this.owner,
      required this.pubDate,
      required this.name,
      required this.products});

  ProjectRequest get_request() {
    return ProjectRequest(
        uuid: uuid,
        name: name,
        owner: owner,
        pubDate: DateFormat.yMMMd().format(pubDate),
        products: products.map((x) => x.uuid).toList());
  }
}
