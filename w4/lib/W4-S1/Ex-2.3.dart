import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String imagePath;
  const Product(this.title, this.description, this.imagePath);
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pruducts'),
        ),
        backgroundColor: Colors.blue,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // children: Product.values.map((product)=>ProductCard(product: product)).toList(),
            children: [
              ProductCard(
                product: Product(
                  "Dart",
                  "The best object-oriented language",
                  "assets/images/dart.png",
                ),
              ),
              ProductCard(
                product: Product(
                  "Flutter",
                  "The best mobile widget library",
                  "assets/images/flutter.png",
                ),
              ),
              ProductCard(
                product: Product(
                  "Firebase",
                  "The best cloud database",
                  "assets/images/firebase.png",
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              product.title,
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
            SizedBox(
              height: 5,
            ),
            Text(product.description)
          ],
        ),
      ),
    );
  }
}
