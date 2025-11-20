class Product {
  final String id;
  final String name;
  final double price;
  final double? originalPrice;
  final String imageUrl;
  final String categoryId;
  final double rating;
  final int reviewCount;
  final bool isFeatured;
  final bool isFavorite;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    this.originalPrice,
    required this.imageUrl,
    required this.categoryId,
    this.rating = 0.0,
    this.reviewCount = 0,
    this.isFeatured = false,
    this.isFavorite = false,
    this.description = '',
  });

  double get discountPercent {
    if (originalPrice == null) return 0;
    return ((originalPrice! - price) / originalPrice!) * 100;
  }

  bool get hasDiscount => originalPrice != null && originalPrice! > price;
}