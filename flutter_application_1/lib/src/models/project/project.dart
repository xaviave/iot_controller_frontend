import '../products/base_product.dart';

class Project {
  String id;
  String owner;
  DateTime pubDate;
  String name;
  List<BaseProduct> products;

  Project(
      {required this.id,
        required this.owner,
        required this.pubDate,
        required this.name,
        required this.products});

  // factory Project.fromJson(Map<String, dynamic> json) {
  //   // Adapt it for GRPC
  //   return Project(
  //     id: json['id'],
  //     owner: json['owner'],
  //     pubDate: json['pubDate'],
  //     name: json['name'],
  //     products: json['products'],
  //   );
  // }
}
