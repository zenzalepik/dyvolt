import 'package:dyvolt/utils/fonts.dart';
import 'package:flutter/material.dart';

class ServicePromo {
  final String imageServicePromoUrl;
  final String servicePromoName;
  final String servicePromoDescription;
  final double servicePromoPrice;

  ServicePromo({
    required this.imageServicePromoUrl,
    required this.servicePromoName,
    required this.servicePromoDescription,
    required this.servicePromoPrice,
  });
}

class ServicePromoCard extends StatelessWidget {
  final String imageServicePromoUrl;
  final String servicePromoName;
  final String servicePromoDescription;
  final double servicePromoPrice;

  const ServicePromoCard({
    super.key,
    required this.imageServicePromoUrl,
    required this.servicePromoName,
    required this.servicePromoDescription,
    required this.servicePromoPrice,
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
                  imageServicePromoUrl,
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
                      servicePromoName,
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
                      servicePromoDescription,
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
                      'IDR ${servicePromoPrice.toStringAsFixed(2)}',
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
