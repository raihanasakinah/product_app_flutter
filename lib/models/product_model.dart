class Product {
  final int id;
  final String name;
  final int price;
  final String image;
  final String description;
  final List<String> reviews;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.reviews,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
      description: json['description'],
      reviews: List<String>.from(json['reviews']),
    );
  }
}
