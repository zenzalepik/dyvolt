import 'package:dyvolt/utils/fonts.dart';
import 'package:flutter/material.dart';

class ProductPromo {
  final String imagePromoUrl;
  final String productPromoName;
  final String productPromoDescription;
  final double productPromoPrice;

  ProductPromo({
    required this.imagePromoUrl,
    required this.productPromoName,
    required this.productPromoDescription,
    required this.productPromoPrice,
  });
}

class ProductPromoCard extends StatelessWidget {
  final String imagePromoUrl;
  final String productPromoName;
  final String productPromoDescription;
  final double productPromoPrice;

  const ProductPromoCard({
    super.key,
    required this.imagePromoUrl,
    required this.productPromoName,
    required this.productPromoDescription,
    required this.productPromoPrice,
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
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                child: Image.asset(
                  imagePromoUrl,
                  fit: BoxFit.cover,
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
                      productPromoName,
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
                      productPromoDescription,
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
                      'IDR ${productPromoPrice.toStringAsFixed(2)}',
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
