import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/product.dart'; // IMPORT PRODUCT MODEL
import '../widgets/category_card.dart';
import '../widgets/product_card.dart'; // IMPORT PRODUCT CARD
import '../widgets/banner_card.dart'; // IMPORT BANNER CARD
import 'product_list_screen.dart';
import 'product_detail_screen.dart'; // IMPORT PRODUCT DETAIL SCREEN

class HomeScreen extends StatelessWidget {
  final List<Category> categories = [
    Category(
      id: '1',
      name: 'Makanan',
      iconUrl: 'https://cdn-icons-png.flaticon.com/512/5787/5787016.png',
      imageUrl: 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=400',
    ),
    Category(
      id: '2',
      name: 'Minuman',
      iconUrl: 'https://cdn-icons-png.flaticon.com/512/3050/3050158.png',
      imageUrl: 'https://images.unsplash.com/photo-1544145945-f90425340c7e?w=400',
    ),
    Category(
      id: '3',
      name: 'Elektronik',
      iconUrl: 'https://cdn-icons-png.flaticon.com/512/3659/3659898.png',
      imageUrl: 'https://images.unsplash.com/photo-1498049794561-7780e7231661?w=400',
    ),
    Category(
      id: '4',
      name: 'Fashion',
      iconUrl: 'https://cdn-icons-png.flaticon.com/512/2116/2116899.png',
      imageUrl: 'https://images.unsplash.com/photo-1445205170230-053b83016050?w=400',
    ),
    Category(
      id: '5',
      name: 'Kecantikan',
      iconUrl: 'https://cdn-icons-png.flaticon.com/512/3082/3082027.png',
      imageUrl: 'https://images.unsplash.com/photo-1596462502278-27bfdc403348?w=400',
    ),
    Category(
      id: '6',
      name: 'Olahraga',
      iconUrl: 'https://cdn-icons-png.flaticon.com/512/3082/3082035.png',
      imageUrl: 'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400',
    ),
    Category(
      id: '7',
      name: 'Buku',
      iconUrl: 'https://cdn-icons-png.flaticon.com/512/3082/3082046.png',
      imageUrl: 'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=400',
    ),
    Category(
      id: '8',
      name: 'Mainan',
      iconUrl: 'https://cdn-icons-png.flaticon.com/512/3082/3082053.png',
      imageUrl: 'https://images.unsplash.com/photo-1555252333-9f8e92e65df9?w=400',
    ),
    Category(
      id: '9',
      name: 'Otomotif',
      iconUrl: 'https://cdn-icons-png.flaticon.com/512/3082/3082062.png',
      imageUrl: 'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=400',
    ),
    Category(
      id: '10',
      name: 'Rumah Tangga',
      iconUrl: 'https://cdn-icons-png.flaticon.com/512/3082/3082072.png',
      imageUrl: 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=400',
    ),
  ];

  final List<Product> featuredProducts = [
    Product(
      id: '31',
      name: 'iPhone 14 Pro',
      price: 1299.99,
      imageUrl: 'https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=300',
      categoryId: '3',
      rating: 4.8,
      isFeatured: true,
    ),
    Product(
      id: '32',
      name: 'Nike Air Max',
      price: 199.99,
      imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=300',
      categoryId: '4',
      rating: 4.6,
      isFeatured: true,
    ),
    Product(
      id: '33',
      name: 'MacBook Pro',
      price: 2399.99,
      imageUrl: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=300',
      categoryId: '3',
      rating: 4.9,
      isFeatured: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop Mini'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari produk...',
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Promo Banner
              BannerCard(
                imageUrl: 'https://images.unsplash.com/photo-1607082350899-7e105aa886ae?w=400',
                title: 'Special Discount',
                subtitle: 'Up to 50% Off',
              ),
              SizedBox(height: 24),

              // Categories Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kategori',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Lihat Semua'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      margin: EdgeInsets.only(right: 12),
                      child: CategoryCard(
                        category: categories[index],
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductListScreen(
                                category: categories[index],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 24),

              // Featured Products
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produk Unggulan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Lihat Semua'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredProducts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 180,
                      margin: EdgeInsets.only(right: 16),
                      child: ProductCard(
                        product: featuredProducts[index],
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailScreen(
                                product: featuredProducts[index],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}