import 'package:flutter/material.dart';
import 'package:pnc2/screens/user/screens_user/widget/product.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Card Example')),
      body: Center(
        child: ProductCard(
          imageUrl: 'https://via.placeholder.com/150',
          price: '\$99.99',
          quantity: 20,
          onAddToCart: () {
            // Add to cart logic
            print('Added to cart');
          },
          onBuyNow: () {
            // Buy now logic
            print('Buy now');
          },
        ),
      ),
    );
  }
}
