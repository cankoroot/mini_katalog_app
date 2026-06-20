import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geri', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 250,
                  child: Image.network(product.imageUrl, fit: BoxFit.contain),
                ),
              ),
              const SizedBox(height: 24),
              Text(product.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text('\$${product.price}', style: const TextStyle(fontSize: 20, color: Colors.blue)),
              const SizedBox(height: 16),
              const Text('Açıklama', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(product.description, style: const TextStyle(fontSize: 16, color: Colors.grey)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onPressed: () {
            cartItems.add(product);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Sepete eklendi!')),
            );
          },
          child: const Text('Sepete Ekle', style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
      ),
    );
  }
}