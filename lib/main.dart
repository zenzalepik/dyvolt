import 'package:flutter/material.dart';
import 'package:dyvolt/widgets/card_product_small.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> productList = [
    {
      'imageUrl': 'https://example.com/product1-image.jpg',
      'productName': 'Product 1',
      'productDescription': 'Description of Product 1',
      'productPrice': 19.99,
    },
    {
      'imageUrl': 'https://example.com/product2-image.jpg',
      'productName': 'Product 2',
      'productDescription': 'Description of Product 2',
      'productPrice': 24.99,
    },
    // Add more product data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // Add your other widgets here
            ),
            SizedBox(height: 16),
            Container(
              height: MediaQuery.of(context).size.height, // Set the height to match the screen height
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  final product = productList[index];
                  return ProductCard(
                    imageUrl: product['imageUrl'],
                    productName: product['productName'],
                    productDescription: product['productDescription'],
                    productPrice: product['productPrice'],
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

