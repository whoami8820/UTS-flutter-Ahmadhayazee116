import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Saya'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile Header
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150'),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ahmad Hyz',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'ahmad.hyz@email.com',
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(height: 8),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'Member Gold',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Menu Items
            _buildMenuCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard() {
    final menuItems = [
      {'icon': Icons.shopping_bag, 'title': 'Pesanan Saya', 'subtitle': '3 pesanan aktif'},
      {'icon': Icons.favorite, 'title': 'Wishlist', 'subtitle': '12 produk'},
      {'icon': Icons.location_on, 'title': 'Alamat', 'subtitle': '2 alamat tersimpan'},
      {'icon': Icons.payment, 'title': 'Pembayaran', 'subtitle': '2 kartu tersimpan'},
      {'icon': Icons.notifications, 'title': 'Notifikasi', 'subtitle': 'Pengaturan notif'},
      {'icon': Icons.settings, 'title': 'Pengaturan', 'subtitle': 'Pengaturan aplikasi'},
    ];

    return Card(
      child: Column(
        children: menuItems.map((item) {
          return ListTile(
            leading: Icon(item['icon'] as IconData, color: Colors.blue),
            title: Text(item['title'] as String),
            subtitle: Text(item['subtitle'] as String),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          );
        }).toList(),
      ),
    );
  }
}