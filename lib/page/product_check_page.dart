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
          future : http.get(Uri.parse("https://fakestoreapi.com/products/1")),
          builder:(_,snapshot){
            if(snapshot.hasData && snapshot.data !=null){
              String body = snapshot.data!.body;
              //{"id":1,"title":"Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops","price":109.95,"description":"Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday","category":"men's clothing","image":"https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg","rating":{"rate":3.9,"count":120}}
              Product product = Product.fromJson(jsonDecode(body));
              return Text(" le nom du produit téléchargé est : ${product.title}");
            }
            return const CircularProgressIndicator();
          }
        ),
      ),
    );
  }
}
