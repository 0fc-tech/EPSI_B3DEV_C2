import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../product_model.dart';

class ProductCheckPage extends StatelessWidget {
  const ProductCheckPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<http.Response>(
          future : http.get(Uri.parse("https://fakestoreapi.com/products/")),
          builder:(_,snapshot){
            if(snapshot.hasData && snapshot.data !=null){
              String body = snapshot.data!.body;
              final List<dynamic> lsProductsJSON= jsonDecode(body);
              List<Product> lsProducts = List.empty(growable: true);
              lsProductsJSON.forEach((mapProduct) =>
                lsProducts.add(Product.fromJson(mapProduct))
              );
              return Text(" le nom du produit téléchargé est : ${lsProducts[12].title}");
            }
            return const CircularProgressIndicator();
          }
        ),
      ),
    );
  }
}
