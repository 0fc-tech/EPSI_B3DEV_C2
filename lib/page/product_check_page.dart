import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/product_model.dart';

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
              List<Product> lsProducts = (jsonDecode(body) as List)
                .map((e) => Product.fromJson(e))
                .toList();
              return Text(" le nom du produit téléchargé est : ${lsProducts[12].title}");
            }
            return const CircularProgressIndicator();
          }
        ),
      ),
    );
  }
}
