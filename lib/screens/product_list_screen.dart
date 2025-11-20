import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final Category category;

  ProductListScreen({Key? key, required this.category}) : super(key: key);

  final List<Product> products = [
    // Produk Makanan
    Product(
      id: '1',
      name: 'Burger Special',
      price: 25.99,
      imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300',
      categoryId: '1',
    ),
    Product(
      id: '2',
      name: 'Pizza Margherita',
      price: 35.50,
      imageUrl: 'https://images.unsplash.com/photo-1604068549290-dea0e4a305ca?w=300',
      categoryId: '1',
    ),
    Product(
      id: '3',
      name: 'Sushi Platter',
      price: 45.75,
      imageUrl: 'https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?w=300',
      categoryId: '1',
    ),

    // Produk Minuman
    Product(
      id: '4',
      name: 'Fresh Orange Juice',
      price: 8.99,
      imageUrl: 'https://images.unsplash.com/photo-1621506289937-a8e4df240d0b?w=300',
      categoryId: '2',
    ),
    Product(
      id: '5',
      name: 'Coffee Latte',
      price: 12.75,
      imageUrl: 'https://images.unsplash.com/photo-1561047029-3000c68339ca?w=300',
      categoryId: '2',
    ),
    Product(
      id: '6',
      name: 'Smoothie Bowl',
      price: 15.99,
      imageUrl: 'https://images.unsplash.com/photo-1505252585461-04db1a846087?w=300',
      categoryId: '2',
    ),

    // Produk Elektronik
    Product(
      id: '7',
      name: 'Smartphone X',
      price: 899.99,
      imageUrl: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=300',
      categoryId: '3',
    ),
    Product(
      id: '8',
      name: 'Wireless Headphones',
      price: 199.99,
      imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=300',
      categoryId: '3',
    ),
    Product(
      id: '9',
      name: 'Smart Watch',
      price: 299.99,
      imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=300',
      categoryId: '3',
    ),

    // Produk Fashion
    Product(
      id: '10',
      name: 'Kaos Polos Premium',
      price: 29.99,
      imageUrl: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=300',
      categoryId: '4',
    ),
    Product(
      id: '11',
      name: 'Jeans Slim Fit',
      price: 79.99,
      imageUrl: 'https://images.unsplash.com/photo-1542272604-787c3835535d?w=300',
      categoryId: '4',
    ),
    Product(
      id: '12',
      name: 'Sneakers Sport',
      price: 129.99,
      imageUrl: 'https://images.unsplash.com/photo-1549298916-b41d501d3772?w=300',
      categoryId: '4',
    ),

    // Produk Kecantikan
    Product(
      id: '13',
      name: 'Serum Vitamin C',
      price: 45.50,
      imageUrl: 'https://images.unsplash.com/photo-1556228578-8c89e6adf883?w=300',
      categoryId: '5',
    ),
    Product(
      id: '14',
      name: 'Lipstick Matte',
      price: 22.99,
      imageUrl: 'https://images.unsplash.com/photo-1586495777744-4413f21062fa?w=300',
      categoryId: '5',
    ),
    Product(
      id: '15',
      name: 'Face Moisturizer',
      price: 35.75,
      imageUrl: 'https://images.unsplash.com/photo-1556228578-2fcdab1d7c0d?w=300',
      categoryId: '5',
    ),

    // Produk Olahraga
    Product(
      id: '16',
      name: 'Yoga Mat Premium',
      price: 39.99,
      imageUrl: 'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=300',
      categoryId: '6',
    ),
    Product(
      id: '17',
      name: 'Dumbell Set 5kg',
      price: 89.99,
      imageUrl: 'https://images.unsplash.com/photo-1534258936925-c58bed479fcb?w=300',
      categoryId: '6',
    ),
    Product(
      id: '18',
      name: 'Running Shoes',
      price: 149.99,
      imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=300',
      categoryId: '6',
    ),

    // Produk Buku
    Product(
      id: '19',
      name: 'Novel Best Seller',
      price: 19.99,
      imageUrl: 'https://images.unsplash.com/photo-1544947950-fa07a98d237f?w=300',
      categoryId: '7',
    ),
    Product(
      id: '20',
      name: 'Buku Programming',
      price: 49.99,
      imageUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300',
      categoryId: '7',
    ),
    Product(
      id: '21',
      name: 'Buku Masak',
      price: 29.99,
      imageUrl: 'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=300',
      categoryId: '7',
    ),

    // Produk Mainan
    Product(
      id: '22',
      name: 'Lego Creator',
      price: 79.99,
      imageUrl: 'https://images.unsplash.com/photo-1587654780291-39c9404d746b?w=300',
      categoryId: '8',
    ),
    Product(
      id: '23',
      name: 'Action Figure',
      price: 24.99,
      imageUrl: 'https://images.unsplash.com/photo-1596461404969-9ae70f2830c1?w=300',
      categoryId: '8',
    ),
    Product(
      id: '24',
      name: 'Board Game Family',
      price: 45.50,
      imageUrl: 'https://images.unsplash.com/photo-1632501641765-e568d28b001b?w=300',
      categoryId: '8',
    ),

    // Produk Otomotif
    Product(
      id: '25',
      name: 'Car Wax Premium',
      price: 34.99,
      imageUrl: 'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?w=300',
      categoryId: '9',
    ),
    Product(
      id: '26',
      name: 'Car Vacuum Cleaner',
      price: 89.99,
      imageUrl: 'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=300',
      categoryId: '9',
    ),
    Product(
      id: '27',
      name: 'Tire Inflator',
      price: 59.99,
      imageUrl: 'https://images.unsplash.com/photo-1603712610496-5369a7540c34?w=300',
      categoryId: '9',
    ),

    // Produk Rumah Tangga
    Product(
      id: '28',
      name: 'Blender Multifungsi',
      price: 129.99,
      imageUrl: 'https://images.unsplash.com/photo-1558618666-fcd25856cd61?w=300',
      categoryId: '10',
    ),
    Product(
      id: '29',
      name: 'Rice Cooker Digital',
      price: 89.99,
      imageUrl: 'https://images.unsplash.com/photo-1565374393755-04f75bbf2d6a?w=300',
      categoryId: '10',
    ),
    Product(
      id: '30',
      name: 'Vacuum Cleaner',
      price: 199.99,
      imageUrl: 'https://images.unsplash.com/photo-1558618047-3c8c76ca7d13?w=300',
      categoryId: '10',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Filter products by category
    final categoryProducts = products
        .where((product) => product.categoryId == category.id)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Produk ${category.name}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: categoryProducts.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.inventory_2, size: 64, color: Colors.grey),
                          SizedBox(height: 16),
                          Text(
                            'Belum ada produk untuk kategori ini',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                  : GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: categoryProducts.length,
                      itemBuilder: (context, index) {
                        return ProductCard(
                          product: categoryProducts[index],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailScreen(
                                  product: categoryProducts[index],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}