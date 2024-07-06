import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String price;
  final int quantity;
  final VoidCallback onAddToCart;
  final VoidCallback onBuyNow;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.price,
    required this.quantity,
    required this.onAddToCart,
    required this.onBuyNow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 220,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'Thuốc Panasonic',
            style: TextStyle(
              fontSize: 12,
              // fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Giá: $price',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Quantity: $quantity',
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        'Mua ngay',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 29, 50, 30)),
                      )),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  // color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    child: SvgPicture.asset(
                      'assets/svgs/cart.svg',
                      width: 15,
                      height: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
