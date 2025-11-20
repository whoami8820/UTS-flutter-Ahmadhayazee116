import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/cart_item_card.dart';

class CartScreen extends StatelessWidget {
  final List<Product> cartItems = [
    Product(
      id: '1',
      name: 'Burger Special',
      price: 25.99,
      imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300',
      categoryId: '1',
    ),
    Product(
      id: '7',
      name: 'Smartphone X',
      price: 899.99,
      imageUrl: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=300',
      categoryId: '3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double total = cartItems.fold(0, (sum, item) => sum + item.price);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang Belanja'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemCard(product: cartItems[index]);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total:', style: TextStyle(fontSize: 18)),
                    Text('\$${total.toStringAsFixed(2)}', 
                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text('Checkout Sekarang'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}