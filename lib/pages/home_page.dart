import 'package:flutter/material.dart';
import 'package:dyvolt/widgets/slider.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/utils/fonts.dart';
import '../utils/colors.dart';
import '../widgets/card_product_small.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back),
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          // ),
          title: const Text(
            'Dyvolt EV Shop',
            style: TextStyles.textAppBar,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [
            CustomIcon(
                iconName: 'icon_menu', size: 24.0, color: AppColors.blackColor),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              child: BannerHome(),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity, // lebar sesuai dengan parent
                    height: 24, // tinggi container
                    color: Colors.blue,
                    child: const Text(
                      'Products Promo',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: AppColors.blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.33,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 24, // tinggi container
                    color: Colors.green,
                    child: const Text(
                      'See all',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: AppColors.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.33,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListView.builder(
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
          ]),
        ));
  }
}
