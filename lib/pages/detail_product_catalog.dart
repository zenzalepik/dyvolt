import 'package:dyvolt/pages/detail_product_catalog.dart';
import 'package:dyvolt/pages/detail_product_page.dart';
import 'package:dyvolt/widgets/card_product.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:flutter/material.dart';
import 'package:dyvolt/widgets/slider.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/widgets/card_product_small.dart';

class DetailProductCatalogPage extends StatelessWidget {
  DetailProductCatalogPage({super.key});

  final List<ProductPromo> productsPromo = [
    ProductPromo(
      imagePromoUrl: 'https://i.pravatar.cc/150?img=1',
      productPromoName: 'MID DRIVE MOTOR 1',
      productPromoDescription: '500WATT 72VOLT 1',
      productPromoPrice: 999.999,
    ),
    ProductPromo(
      imagePromoUrl: 'https://i.pravatar.cc/150?img=1',
      productPromoName: 'MID DRIVE MOTOR 2',
      productPromoDescription: '500WATT 72VOLT 2',
      productPromoPrice: 999.999,
    ),
    ProductPromo(
      imagePromoUrl: 'https://i.pravatar.cc/150?img=1',
      productPromoName: 'MID DRIVE MOTOR 3',
      productPromoDescription: '500WATT 72VOLT 3',
      productPromoPrice: 999.999,
    ),
    ProductPromo(
      imagePromoUrl: 'https://i.pravatar.cc/150?img=1',
      productPromoName: 'MID DRIVE MOTOR 4',
      productPromoDescription: '500WATT 72VOLT 4',
      productPromoPrice: 999.999,
    ),
    ProductPromo(
      imagePromoUrl: 'https://i.pravatar.cc/150?img=1',
      productPromoName: 'MID DRIVE MOTOR 5',
      productPromoDescription: '500WATT 72VOLT 5',
      productPromoPrice: 999.999,
    ),
  ];

  final List<Product> products = [
    Product(
      imageUrl: 'assets/images/products/1.jpg',
      productName: 'Paket Kit Konversi Matic R14 PNP 1',
      // productDescription: '500WATT 72VOLT 1',
      productPrice: 999.999,
    ),
    Product(
      imageUrl: 'assets/images/products/1.jpg',
      productName: 'Paket Kit Konversi Matic R14 PNP',
      // productDescription: '500WATT 72VOLT 2',
      productPrice: 999.999,
    ),
    Product(
      imageUrl: 'assets/images/products/1.jpg',
      productName: 'Paket Kit Konversi Matic R14 PNP 2',
      // productDescription: '500WATT 72VOLT 3',
      productPrice: 999.999,
    ),
    Product(
      imageUrl: 'assets/images/products/1.jpg',
      productName: 'Paket Kit Konversi Matic R14 PNP 4',
      // productDescription: '500WATT 72VOLT 4',
      productPrice: 999.999,
    ),
    Product(
      imageUrl: 'assets/images/products/1.jpg',
      productName: 'Paket Kit Konversi Matic R14 PNP 5',
      // productDescription: '500WATT 72VOLT 5',
      productPrice: 999.999,
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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text(
            'Product Catalog',
            style: TextStyles.textAppBar,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          // actions: [
          //   IconButton(
          //       icon: const CustomIcon(
          //           iconName: 'icon_menu',
          //           size: 24.0,
          //           color: AppColors.blackColor),
          //       onPressed: () {
          //         Scaffold.of(context).openEndDrawer();
          //       }),
          // ],
        ),
        body: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: Column(children: [
            SizedBox(
              height: 24,
            ),
            /*
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  IconInputCustom(
                    label: '',
                    hintText: 'Searching product here...',
                    onChanged: (value) {
                      // Handle name input
                    },
                    iconNameCustom: 'icon_search',
                    sizeCustom: 24,
                    colorCustom: AppColors.grey555Color,
                    boxShadow: BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(89, 27, 27, 0.05),
                    offset: Offset(0, 5),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),*/
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
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 24,
                      childAspectRatio: _calculateAspectRatio(context),
                    ),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailProductPage()),
            );},
                        child: ProductCard(
                          imageUrl: products[index].imageUrl,
                          productName: products[index].productName,
                          productPrice: products[index].productPrice,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 32)
          ]),
        ));
  }
}
