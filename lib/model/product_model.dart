class Product{
  int id;
  String title;
  String description;
  num price;
  String category;
  String image;

  Product(this.id,this.title,this.price,this.description,this.category,this.image);
  String getPrice()=> "Le prix du produit est $price€";

   Product.fromJson(Map<String,dynamic> map)
    : id = map["id"],
      title = map["title"],
      price = map["price"],
      description = map["description"],
      category = map["category"],
      image = map["image"];
}
