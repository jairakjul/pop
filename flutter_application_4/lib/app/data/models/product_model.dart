class Product {
  final int id;
  final String name;
  final String description;
  final String image;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: int.parse(json['id'].toString()),
      name: json['name'] ?? '', // หรือ json['name'] แล้วแต่ API
      description: json['description'] ?? '',
      image: json['image'] ?? '',
    );
  }
}
