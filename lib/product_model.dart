class Product{
  int id;
  String nom;
  String description;
  num prix;
  String categorie;
  String image;

  Product(this.id,this.nom,this.prix,this.description,this.categorie,this.image);
  String getPrice()=> "Le prix du produit est $prix€";
}
