import 'package:intl/intl.dart';
import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/models/user.dart';

import 'products/base_product.dart';

class Project {
  int id;
  User owner;
  DateTime pubDate;
  String name;
  List<BaseProduct> products;
  final f = DateFormat('yyyy-MM-ddThh:mm:ss');

  Project(
      {required this.id,
      required this.owner,
      required this.pubDate,
      required this.name,
      required this.products});

  @override
  String toString() {
    return name;
  }

  ProjectRequest getRequest() {
    return ProjectRequest(
      id: id,
      name: name,
      owner: owner.getRequest(),
      pubDate: f.format(pubDate),
      products: products.map((x) => x.getAbstractRequest()).toList(),
    );
  }

  ProjectPartialUpdateRequest getPartialRequest(Map<String, dynamic> fields) {
    List<BaseProductRequest> aa = [];
    fields["products"].forEach((k, v) {
      aa.add(v.getAbstractRequest());
    });
    return ProjectPartialUpdateRequest(
      id: id,
      partialUpdateFields: fields.keys,
      pubDate: null,
      name: fields["name"],
      owner: null,
      products: aa,
    );
  }

  static Project fromResponse(ProjectResponse r) {
    return Project(
        id: r.id,
        owner: User.fromResponse(r.owner),
        pubDate: DateTime.parse(r.pubDate),
        name: r.name,
        products: r.products.map((e) => BaseProduct.fromResponse(e)).toList());
  }
}
