import 'package:flutter/foundation.dart';

import 'product_model.dart';

class CartModel extends ChangeNotifier{
  final List<Product> lsProducts;

  CartModel(this.lsProducts);

  addProduct(Product product){
    lsProducts.add(product);
    notifyListeners();
  }
  removeAllProducts(){
    lsProducts.clear();
    notifyListeners();
  }
  removeProduct(Product p){
    lsProducts.remove(p);
    notifyListeners();
  }
  num getPriceCart(){
    //return lsProducts.fold<num>(0, (previousValue, element)
    //  => previousValue+element.price);
    num total = 0;
    lsProducts.forEach((element) {total += element.price;});
    return total.roundToDouble();
  }
}