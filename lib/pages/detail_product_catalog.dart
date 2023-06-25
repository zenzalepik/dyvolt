import 'package:dyvolt/widgets/card_product.dart';
import 'package:dyvolt/widgets/related_product.dart';
import 'package:flutter/material.dart';
import 'package:dyvolt/widgets/slider.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/widgets/card_product_small.dart';

class DetailProductPage extends StatelessWidget {
  DetailProductPage({super.key});

  final List<ProductRelated> productsRelated = [
    ProductRelated(
      imageRelatedUrl: 'https://i.pravatar.cc/150?img=1',
      productRelatedName: 'MID DRIVE MOTOR 1',
      productRelatedDescription: '500WATT 72VOLT 1',
      productRelatedPrice: 999.999,
    ),
    ProductRelated(
      imageRelatedUrl: 'https://i.pravatar.cc/150?img=1',
      productRelatedName: 'MID DRIVE MOTOR 2',
      productRelatedDescription: '500WATT 72VOLT 2',
      productRelatedPrice: 999.999,
    ),
    ProductRelated(
      imageRelatedUrl: 'https://i.pravatar.cc/150?img=1',
      productRelatedName: 'MID DRIVE MOTOR 3',
      productRelatedDescription: '500WATT 72VOLT 3',
      productRelatedPrice: 999.999,
    ),
    ProductRelated(
      imageRelatedUrl: 'https://i.pravatar.cc/150?img=1',
      productRelatedName: 'MID DRIVE MOTOR 4',
      productRelatedDescription: '500WATT 72VOLT 4',
      productRelatedPrice: 999.999,
    ),
    ProductRelated(
      imageRelatedUrl: 'https://i.pravatar.cc/150?img=1',
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
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text(
            'Dyvolt EV Shop',
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(children: [
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Image.asset(
      'assets/images/products/img_product_detail.png',
      fit: BoxFit.fill,
    ),
  ),

                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
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
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  SizedBox(
                    child: Text('IDR 123.456',
                        style: TextStyles.textPriceDetailProduct),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    '5 Terjual',
                    style: TextStyles.textLabelInput,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderDrawerColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
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
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderDrawerColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        children: [
                          // CustomIcon(
                          //     iconName: '',
                          //     size: 16,
                          //     color: AppColors.warningColor),
                          Text('Ulasan ',
                              style: TextStyles.textLabelInputBlack),
                          Text('(34)', style: TextStyles.textLabelInput)
                        ],
                      ))
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    'Select Variant: ',
                    style: TextStyles.textLabelInput,
                  ),
                  Text('5 Ukuran'),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text('See all', style: TextStyles.textLinkSmall)
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderDrawerColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        children: [
                          Text('vaewx300', style: TextStyles.textLabelInput)
                        ],
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderDrawerColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        children: [
                          Text('vaewx330', style: TextStyles.textLabelInput)
                        ],
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderDrawerColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        children: [
                          Text('vaewx3123', style: TextStyles.textLabelInput)
                        ],
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderDrawerColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        children: [
                          Text('vaewx3123', style: TextStyles.textLabelInput)
                        ],
                      ))
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    'Description',
                    style: TextStyles.text16px600,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
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
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    'Selengkapnya',
                    style: TextStyles.textLinkSmall,
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          // padding: const EdgeInsets.only(left: 16),
                          width: double.infinity, // lebar sesuai dengan parent
                          height: 24, // tinggi container
                          // color: Colors.blue,
                          child: const Text(
                            'Products Promo',
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
                        child: const Text(
                          'See all',
                          textAlign: TextAlign.right,
                          style: TextStyles.textLinkSmall,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 112,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productsRelated.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: ProductRelatedCard(
                            imageRelatedUrl: productsRelated[index].imageRelatedUrl,
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
              SizedBox(height: 32)
            ]),
          ),
        ),      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: AppColors.whiteColor, boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(89, 27, 27, 0.05),
            offset: Offset(0, -8),
            blurRadius: 24,
          ),
        ]),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: ElevatedButton(
            onPressed: () {
              // Aksi yang akan dilakukan saat tombol ditekan
              // print('Tombol ditekan!');
            },
            child: Container(
                height: 32,
                child: Center(
                    child: Text('Add To Cart',
                        style: TextStyle(
                          fontFamily: 'Inter', // Nama jenis huruf (font) Inter
                          fontSize: 18, // Ukuran teks 18px
                          fontWeight: FontWeight.w500, // Ketebalan teks 500
                          height: 1.33, // Tinggi baris 24px (24/18=1.33)
                          letterSpacing: 0,
                        )))),
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0),
              maximumSize:
                  MaterialStateProperty.all<Size>(Size(double.infinity, 64)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                  EdgeInsets.all(14)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.primaryColor),
            )),
      ),
  );
  }
}
