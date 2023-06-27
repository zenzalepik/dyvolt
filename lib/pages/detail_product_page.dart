import 'package:dyvolt/pages/detail_product_catalog.dart';
import 'package:dyvolt/pages/faq_page.dart';
import 'package:dyvolt/widgets/related_product.dart';
import 'package:flutter/material.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/colors.dart';

class DetailProductPage extends StatelessWidget {
  DetailProductPage({super.key});

  final List<ProductRelated> productsRelated = [
    ProductRelated(
      imageRelatedUrl: 'assets/images/products/1.jpg',
      productRelatedName: 'MID DRIVE MOTOR 1',
      productRelatedDescription: '500WATT 72VOLT 1',
      productRelatedPrice: 999.999,
    ),
    ProductRelated(
      imageRelatedUrl: 'assets/images/products/1.jpg',
      productRelatedName: 'MID DRIVE MOTOR 2',
      productRelatedDescription: '500WATT 72VOLT 2',
      productRelatedPrice: 999.999,
    ),
    ProductRelated(
      imageRelatedUrl: 'assets/images/products/1.jpg',
      productRelatedName: 'MID DRIVE MOTOR 3',
      productRelatedDescription: '500WATT 72VOLT 3',
      productRelatedPrice: 999.999,
    ),
    ProductRelated(
      imageRelatedUrl: 'assets/images/products/1.jpg',
      productRelatedName: 'MID DRIVE MOTOR 4',
      productRelatedDescription: '500WATT 72VOLT 4',
      productRelatedPrice: 999.999,
    ),
    ProductRelated(
      imageRelatedUrl: 'assets/images/products/1.jpg',
      productRelatedName: 'MID DRIVE MOTOR 5',
      productRelatedDescription: '500WATT 72VOLT 5',
      productRelatedPrice: 999.999,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          AppColors.backgroundColor, // Ganti dengan warna yang diinginkan
      appBar: AppBar(
        leading: IconButton(
          icon: const CustomIcon(
              iconName: 'icon_back', size: 24, color: AppColors.blackColor),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Dyvolt EV Shop',
          style: TextStyles.textAppBar,
        ),
        centerTitle: true,
        toolbarHeight: 56,
        backgroundColor: AppColors.whiteColor,
        elevation: 1,
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FAQPage()),
                  );
                },
                child: const Text('FAQ', style: TextStyles.textLabelDark),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(children: [
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Container(
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/products/img_product_detail.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Mid Drive Motor 300WATT High Torque',
                          style: TextStyles.textTitleDetailProduct,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                SizedBox(
                  child: Text('IDR 123.456',
                      style: TextStyles.textPriceDetailProduct),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Text(
                  '5 Terjual',
                  style: TextStyles.textLabelInput,
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.borderDrawerColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4)),
                    child: const Row(
                      children: [
                        CustomIcon(
                            iconName: 'icon_star_filled',
                            size: 16,
                            color: AppColors.warningColor),
                        SizedBox(width: 8),
                        Text('5 ', style: TextStyles.textLabelInputBlack),
                        Text('(12)', style: TextStyles.textLabelInput)
                      ],
                    )),
                const SizedBox(
                  width: 16,
                ),
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.borderDrawerColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4)),
                    child: const Row(
                      children: [
                        // CustomIcon(
                        //     iconName: '',
                        //     size: 16,
                        //     color: AppColors.warningColor),
                        Text('Ulasan ', style: TextStyles.textLabelInputBlack),
                        Text('(34)', style: TextStyles.textLabelInput)
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                const Text(
                  'Select Variant: ',
                  style: TextStyles.textLabelInput,
                ),
                const Text('5 Ukuran'),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => DetailProductCatalogPage()),
                      // );
                    },
                    child:
                        const Text('See all', style: TextStyles.textLinkSmall))
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderDrawerColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: const Row(
                        children: [
                          Text('vaewx300', style: TextStyles.textLabelInput)
                        ],
                      )),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderDrawerColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: const Row(
                        children: [
                          Text('vaewx330', style: TextStyles.textLabelInput)
                        ],
                      )),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderDrawerColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: const Row(
                        children: [
                          Text('vaewx3123', style: TextStyles.textLabelInput)
                        ],
                      )),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderDrawerColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: const Row(
                        children: [
                          Text('vaewx3123', style: TextStyles.textLabelInput)
                        ],
                      )),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderDrawerColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: const Row(
                        children: [
                          Text('vaewx3123', style: TextStyles.textLabelInput)
                        ],
                      )),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderDrawerColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: const Row(
                        children: [
                          Text('vaewx3123', style: TextStyles.textLabelInput)
                        ],
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                Text(
                  'Description',
                  style: TextStyles.text16px600,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Risus venenatis in at dignissim. Quam risus nec morbi ac non. Nunc eget integer urna velit vulputate massa. Viverra est a penatibus maecenas metus senectus at in elementum. Et vitae et consectetur egestas fermentum. Nec dui pellentesque est nisi sed sed. Non nunc tempor posuere imperdiet eleifend est sit faucibus.',
                          style: TextStyles.textDetailProductDescription,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                Text(
                  'Selengkapnya',
                  style: TextStyles.textLinkSmall,
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: SizedBox(
                        // padding: const EdgeInsets.only(left: 16),
                        width: double.infinity, // lebar sesuai dengan parent
                        height: 24, // tinggi container
                        // color: Colors.blue,
                        child: Text(
                          'Related Product List',
                          textAlign: TextAlign.left,
                          style: TextStyles.textTitleSection,
                        ),
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(right: 16),
                      height: 24, // tinggi container
                      // color: Colors.green, Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailProductCatalogPage()),
                          );
                        },
                        child: const Text(
                          'See all',
                          textAlign: TextAlign.right,
                          style: TextStyles.textLinkSmall,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  height: 112,
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(89, 27, 27, 0.05),
                      offset: Offset(0, 5),
                      blurRadius: 10,
                      spreadRadius: 0,
                    ),
                  ]),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productsRelated.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                        child: ProductRelatedCard(
                          imageRelatedUrl:
                              productsRelated[index].imageRelatedUrl,
                          productRelatedName:
                              productsRelated[index].productRelatedName,
                          productRelatedDescription:
                              productsRelated[index].productRelatedDescription,
                          productRelatedPrice:
                              productsRelated[index].productRelatedPrice,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32)
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        decoration:
            const BoxDecoration(color: AppColors.whiteColor, boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(89, 27, 27, 0.05),
            offset: Offset(0, -8),
            blurRadius: 24,
          ),
        ]),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: ElevatedButton(
            onPressed: () {
              // Aksi yang akan dilakukan saat tombol ditekan
              // print('Tombol ditekan!');
            },
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0),
              maximumSize: MaterialStateProperty.all<Size>(
                  const Size(double.infinity, 64)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                  const EdgeInsets.all(14)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.primaryColor),
            ),
            child: const SizedBox(
                height: 32,
                child: Center(
                    child: Text('Add To Cart',
                        style: TextStyle(
                            fontFamily:
                                'Inter', // Nama jenis huruf (font) Inter
                            fontSize: 18, // Ukuran teks 18px
                            fontWeight: FontWeight.w500, // Ketebalan teks 500
                            height: 1.33, // Tinggi baris 24px (24/18=1.33)
                            letterSpacing: 0,
                            color: AppColors.whiteColor))))),
      ),
    );
  }
}
