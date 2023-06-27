import 'package:dyvolt/utils/fonts.dart';
import 'package:flutter/material.dart';

class Product {
  final String imageUrl;
  final String productName;
  // final String productDescription;
  final double productPrice;

  Product({
    required this.imageUrl,
    required this.productName,
    // required this.productDescription,
    required this.productPrice,
  });
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  // final String productDescription;
  final double productPrice;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.productName,
    // required this.productDescription,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      // child: FractionallySizedBox(
      // heightFactor: 0.5,
      // child: SizedBox(
      //   height: 204,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(89, 27, 27, 0.085),
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 32,
                    child: Text(
                      productName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.textProduct,
                    ),
                  ),
                  const SizedBox(height: 4),
                  // SizedBox(
                  //   width: 152,
                  //   height: 18,
                  //   child: Text(
                  //     productDescription,
                  //     maxLines: 1,
                  //     overflow: TextOverflow.ellipsis,
                  //     style: TextStyles.textProductPromoDescription,
                  //   ),
                  // ),
                  const SizedBox(height: 4),
                  SizedBox(
                    height: 16,
                    child: Text(
                      'IDR ${productPrice.toStringAsFixed(2)}',
                      style: TextStyles.textProductPrice,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // ),
      // ),
    );
  }
}
