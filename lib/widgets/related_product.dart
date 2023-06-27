import 'package:dyvolt/utils/fonts.dart';
import 'package:flutter/material.dart';

class ProductRelated {
  final String imageRelatedUrl;
  final String productRelatedName;
  final String productRelatedDescription;
  final double productRelatedPrice;

  ProductRelated({
    required this.imageRelatedUrl,
    required this.productRelatedName,
    required this.productRelatedDescription,
    required this.productRelatedPrice,
  });
}

class ProductRelatedCard extends StatelessWidget {
  final String imageRelatedUrl;
  final String productRelatedName;
  final String productRelatedDescription;
  final double productRelatedPrice;

  const ProductRelatedCard({
    super.key,
    required this.imageRelatedUrl,
    required this.productRelatedName,
    required this.productRelatedDescription,
    required this.productRelatedPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 96,
              height: 112,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      8.0), // Set the border radius for top left corner
                  bottomLeft: Radius.circular(
                      8.0), // Set the border radius for bottom left corner
                ),
                child: ClipRect(
                  child: Image.asset(
                    imageRelatedUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 136,
                    height: 40,
                    child: Text(
                      productRelatedName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.textProductPromo,
                    ),
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: 136,
                    height: 18,
                    child: Text(
                      productRelatedDescription,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.textProductPromoDescription,
                    ),
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: 136,
                    height: 18,
                    child: Text(
                      'IDR ${productRelatedPrice.toStringAsFixed(2)}',
                      style: TextStyles.textProductPromoPrice,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
