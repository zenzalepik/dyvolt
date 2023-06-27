import 'package:dyvolt/pages/detail_product_page.dart';
import 'package:dyvolt/pages/my_cart_page.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/widgets/card_product.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:dyvolt/widgets/services_promo.dart';
import 'package:flutter/material.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/widgets/card_product_small.dart';

class PromoPage extends StatelessWidget {
  PromoPage({super.key});

  final List<ServicePromo> servicePromo = [
    ServicePromo(
      imageServicePromoUrl: 'assets/images/promo/img_promo_1.png',
      servicePromoName: '15% discount with mastercard',
      servicePromoDescription: 'On Shop Service Only (include parts)',
      servicePromoPrice: 999.999,
    ),
    ServicePromo(
      imageServicePromoUrl: 'assets/images/promo/img_promo_1.png',
      servicePromoName: '15% discount with mastercard',
      servicePromoDescription: 'On Shop Service Only (include parts)',
      servicePromoPrice: 999.999,
    ),
    ServicePromo(
      imageServicePromoUrl: 'assets/images/promo/img_promo_1.png',
      servicePromoName: '15% discount with mastercard',
      servicePromoDescription: 'On Shop Service Only (include parts)',
      servicePromoPrice: 999.999,
    ),
    ServicePromo(
      imageServicePromoUrl: 'assets/images/promo/img_promo_1.png',
      servicePromoName: '15% discount with mastercard',
      servicePromoDescription: 'On Shop Service Only (include parts)',
      servicePromoPrice: 999.999,
    ),
    ServicePromo(
      imageServicePromoUrl: 'assets/images/promo/img_promo_1.png',
      servicePromoName: '15% discount with mastercard',
      servicePromoDescription: 'On Shop Service Only (include parts)',
      servicePromoPrice: 999.999,
    ),
  ];

  double _calculateAspectRatio(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = (screenWidth - 16 - 16 - (16 * 2)) /
        2; // Menghitung lebar item GridView
    double itemHeight = itemWidth /
        0.67; // Menghitung tinggi item GridView berdasarkan rasio aspek 0.5
    return itemWidth / itemHeight;
  }

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
            AppColors.backgroundColor, // Ganti dengan warna yang diinginkan
        appBar: AppBar(
          // leading: IconButton(
          //   icon: CustomIcon(
          //       iconName: 'icon_back', size: 24, color: AppColors.blackColor),
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          // ),
          title: const Text(
            'Promo',
            style: TextStyles.textAppBar,
          ),
          centerTitle: true,
          toolbarHeight: 56,
          backgroundColor: AppColors.whiteColor,
          elevation: 1,
          actions: [
            Row(
              children: [
                InkWell(
                    child: const CustomIcon(
                        iconName: 'icon_cart',
                        size: 24.0,
                        color: AppColors.blackColor),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyCartPage()),
                      );
                    }),
                IconButton(
                    icon: const CustomIcon(
                        iconName: 'icon_menu',
                        size: 24.0,
                        color: AppColors.blackColor),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    }),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: Column(children: [
            const SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Expanded(
                //       child: Container(
                //         padding: const EdgeInsets.only(left: 16),
                //         width: double.infinity, // lebar sesuai dengan parent
                //         height: 24, // tinggi container
                //         // color: Colors.blue,
                //         child: const Text(
                //           'Products Catalog',
                //           textAlign: TextAlign.left,
                //           style: TextStyles.textTitleSection,
                //         ),
                //       ),
                //     ),
                //     Container(
                //       padding: const EdgeInsets.only(right: 16),
                //       height: 24, // tinggi container
                //       // color: Colors.green, Align(
                //       alignment: Alignment.center,
                //       child: const Text(
                //         'See all',
                //         textAlign: TextAlign.right,
                //         style: TextStyles.textLinkSmall,
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(89, 27, 27, 0.05),
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  // ... tambahkan widget lain di dalam Container ini ...),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailProductPage()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: ServicePromoCard(
                            imageServicePromoUrl:
                                servicePromo[index].imageServicePromoUrl,
                            servicePromoName:
                                servicePromo[index].servicePromoName,
                            servicePromoDescription:
                                servicePromo[index].servicePromoDescription,
                            servicePromoPrice:
                                servicePromo[index].servicePromoPrice,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32)
          ]),
        ));
  }
}
