import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Panier Flutter Sales"),),
      body: Column(
        children: [
          Text("Votre panier contient "
            "${context.watch<CartModel>().lsProducts.length}"
            " éléments",style: TextStyle(fontWeight: FontWeight.bold),),
          Consumer<CartModel>(
            builder: (_,cart,__)=> Expanded(
              child: ListView.builder(
                itemCount: cart.lsProducts.length,
                itemBuilder: (_,index){
                  final product = cart.lsProducts[index];
                  return ListTile(
                    leading: Image.network(product.image,width: 60,height: 60,),
                    title: Text(product.title),
                    trailing: IconButton(
                      onPressed: ()=> cart.removeProduct(product),
                      icon: const Icon(Icons.delete)
                    ),
                  );
                }
              ),
            )
          ),
          Text("Votre panier total est de : "
            "${context.watch<CartModel>().getPriceCart()}",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)
          ),
        ],
      ),
    );
  }
}
