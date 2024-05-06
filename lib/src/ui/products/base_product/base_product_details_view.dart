import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/products/base_product.dart';

class BaseProductDetailsView extends StatelessWidget {
  const BaseProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as BaseProduct;

    return Scaffold(
      appBar: AppBar(
        title: const Text('BaseProduct Details'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  product.name,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}
