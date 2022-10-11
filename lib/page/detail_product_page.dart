import 'package:flutter/material.dart';

import '../product_model.dart';

class DetailProductPage extends StatelessWidget {
  final Product product;
  DetailProductPage(this.product,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Le nom du produit est ${product.nom}")),
    );
  }
}
