import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Panier Flutter Sales"),),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Votre panier total est de :"),
              Text("0.00€",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Spacer(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Votre panier est actuellement vide"),
              Icon(CupertinoIcons.photo)
            ],),
          ),
          Spacer()
        ],
      ),
    );
  }
}
