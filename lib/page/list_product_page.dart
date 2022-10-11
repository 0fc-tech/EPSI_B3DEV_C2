import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../product_model.dart';

class ListProductPage extends StatelessWidget {
  ListProductPage({Key? key}) : super(key: key);

  final List<Product> lsProducts = [
    Product(1, "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops", 109.95, "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday", "men's clothing", "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
    Product(2, "Mens Casual Premium Slim Fit T-Shirts ", 22.3, "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.", "men's clothing", "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg"),
    Product(3, "Mens Cotton Jacket", 55.99, "great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.", "men's clothing", "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg"),
    Product(4, "Mens Casual Slim Fit", 15.99, "The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.", "men's clothing", "https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg"),
    Product(5, "John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet", 695, "From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.", "jewelery", "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg"),
    Product(6, "Solid Gold Petite Micropave ", 168, "Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed. Return or exchange any order within 30 days.", "jewelery", "https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg"),
    Product(7, "White Gold Plated Princess", 9.99, "Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentine's Day...", "jewelery", "https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListProduct")),
      body:ListView.builder(
        itemCount: lsProducts.length,
        itemBuilder: (context, index){
          return InkWell(
            onTap: () => context.go('/detail',extra: lsProducts[index]),
            child: ListTile(
              title: Text(lsProducts[index].nom),
              subtitle: Text("${lsProducts[index].prix} €",
                style: Theme.of(context).textTheme.titleLarge),
              leading: Image.network(lsProducts[index].image, width: 80, height: 80),
            ),
          );
        }
      )
    );
  }
}


