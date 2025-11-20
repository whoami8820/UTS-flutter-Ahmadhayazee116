import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myshop_mini/main.dart';

void main() {
  testWidgets('MyShop Mini app starts with correct title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyShopMiniApp());

    // Verify that our app title is displayed
    expect(find.text('MyShop Mini'), findsOneWidget);
    expect(find.text('Kategori'), findsOneWidget);
  });

  testWidgets('All categories are displayed correctly', (WidgetTester tester) async {
    await tester.pumpWidget(MyShopMiniApp());

    // Verify that all categories are displayed
    expect(find.text('Makanan'), findsOneWidget);
    expect(find.text('Minuman'), findsOneWidget);
    expect(find.text('Elektronik'), findsOneWidget);
    expect(find.text('Fashion'), findsOneWidget);
    expect(find.text('Kecantikan'), findsOneWidget);
    expect(find.text('Olahraga'), findsOneWidget);
    expect(find.text('Buku'), findsOneWidget);
    expect(find.text('Mainan'), findsOneWidget);
    expect(find.text('Otomotif'), findsOneWidget);
    expect(find.text('Rumah Tangga'), findsOneWidget);
  });

  testWidgets('Tap on Fashion category navigates to ProductListScreen', (WidgetTester tester) async {
    await tester.pumpWidget(MyShopMiniApp());

    // Tap on the 'Fashion' category card
    await tester.tap(find.text('Fashion'));
    await tester.pumpAndSettle();

    // Verify navigation to ProductListScreen
    expect(find.text('Fashion'), findsOneWidget);
    expect(find.text('Produk Fashion'), findsOneWidget);
    
    // Verify fashion products are displayed
    expect(find.text('Kaos Polos Premium'), findsOneWidget);
    expect(find.text('Jeans Slim Fit'), findsOneWidget);
  });
}