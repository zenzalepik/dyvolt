import 'package:dyvolt/pages/detail_product_page.dart';
import 'package:dyvolt/pages/my_cart_page.dart';
import 'package:dyvolt/pages/product_catalog_page.dart';
import 'package:dyvolt/pages/promo_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/utils/shadows.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:dyvolt/widgets/services_promo.dart';
import 'package:flutter/material.dart';

class BookingServicePage extends StatelessWidget {
  BookingServicePage({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            // leading: IconButton(
            //   icon: CustomIcon(
            //       iconName: 'icon_back', size: 24, color: AppColors.blackColor),
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            // ),
            title: const Text(
              'Booking Service',
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
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [Shadows.boxShadow1],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: IconInputCustom(
                                              canEdit: false,
                                              label: 'Customer',
                                              textController: ' ',
                                              hintText: '',
                                              boxShadow: const BoxShadow(),
                                              borderWidth: 1,
                                              colorBorder:
                                                  AppColors.borderDrawerColor,
                                              iconNameCustom: 'icon_profile',
                                              sizeCustom: 20,
                                              colorCustom: AppColors.blackColor,
                                              onChanged: (value) {
                                                // Logika yang ingin Anda jalankan saat nilai teks berubah
                                              },
                                            ),
                                          ),
                                          const Positioned(
                                            bottom: 24,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  40, 0, 0, 0),
                                              child: Text(
                                                'Joko Tingkir',
                                                style:
                                                    TextStyles.textMenuDrawer,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 8,
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      40, 0, 0, 0),
                                              child: const Text(
                                                'ID: 1234567890',
                                                style: TextStyles
                                                    .textLabelVerySmall,
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: IconInputCustom(
                                              canEdit: false,
                                              label: 'Service Type',
                                              textController: ' ',
                                              hintText: ' ',
                                              boxShadow: const BoxShadow(),
                                              borderWidth: 1,
                                              colorBorder:
                                                  AppColors.borderDrawerColor,
                                              iconNameCustom: 'icon_ticket',
                                              sizeCustom: 20,
                                              colorCustom: AppColors.blackColor,
                                              onChanged: (value) {
                                                // Logika yang ingin Anda jalankan saat nilai teks berubah
                                              },
                                            ),
                                          ),
                                          const Positioned(
                                            bottom: 24,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  40, 0, 0, 0),
                                              child: Text(
                                                'Reguler Checkup',
                                                style:
                                                    TextStyles.textMenuDrawer,
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            right: 12,
                                            bottom: 20,
                                            child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 0),
                                                child: CustomIcon(
                                                    iconName: 'icon_drop_down',
                                                    size: 20,
                                                    color:
                                                        AppColors.blackColor)),
                                          ),
                                          Positioned(
                                            bottom: 8,
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      40, 0, 0, 0),
                                              child: const Text(
                                                '1.000 km checkup',
                                                style: TextStyles
                                                    .textLabelVerySmall,
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: IconInputCustom(
                                              canEdit: false,
                                              label: 'Service Price',
                                              textController: ' ',
                                              hintText: ' ',
                                              boxShadow: const BoxShadow(),
                                              borderWidth: 1,
                                              colorBorder:
                                                  AppColors.borderDrawerColor,
                                              iconNameCustom: '',
                                              sizeCustom: 20,
                                              colorCustom: AppColors.blackColor,
                                              onChanged: (value) {
                                                // Logika yang ingin Anda jalankan saat nilai teks berubah
                                              },
                                            ),
                                          ),
                                          const Positioned(
                                            bottom: 18,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  12, 0, 0, 0),
                                              child: Text(
                                                'IDR 320.231',
                                                style: TextStyle(
                                                  fontFamily: 'Inter',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  height:
                                                      1.5, // Sesuaikan dengan nilai line-height yang diinginkan
                                                  letterSpacing: 0,
                                                  color: AppColors.primaryColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: IconDateSingleInput(
                                          label: 'Date',
                                          hintText: '15/07/2022',
                                          onChanged: (value) {}),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: IconTimeInput(
                                        label: 'Waktu',
                                        onChanged: (selectedTime) {
                                          // Lakukan sesuatu ketika waktu berubah
                                          print(
                                              'Waktu yang dipilih: ${selectedTime.format(context)}');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: TextBorderInput(
                                        hintText: '',
                                        labelText: 'Vehicle Type',
                                        textController: 'Vehicle Type',
                                        canEdit: false,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: TextBorderInput(
                                        hintText: '',
                                        labelText: 'Electric Bike',
                                        textController: 'Electric Bike',
                                        canEdit: false,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ButtonLarge(
                                          text: 'Book Now',
                                          onPressed: () {
                                            // Logika yang ingin Anda jalankan saat tombol ditekan
                                            // Navigator.pushReplacement(
                                            //   context,
                                            //   MaterialPageRoute(builder: (context) => MainPage()),
                                            // );
                                          }),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(left: 16),
                              width:
                                  double.infinity, // lebar sesuai dengan parent
                              height: 24, // tinggi container
                              // color: Colors.blue,
                              child: const Text(
                                'Promo',
                                textAlign: TextAlign.left,
                                style: TextStyles.textTitleSection,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 16),
                            height: 24, // tinggi container
                            // color: Colors.green, Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PromoPage()),
                                );
                              },
                              child: const Text(
                                'See all',
                                textAlign: TextAlign.right,
                                style: TextStyles.textLinkSmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(89, 27, 27, 0.05),
                            offset: Offset(0, 5),
                            blurRadius: 10,
                            spreadRadius: 0,
                          ),
                        ]),
                        height: 112,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: servicePromo.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           DetailProductPage()),
                                  // );
                                },
                                child: ServicePromoCard(
                                  imageServicePromoUrl:
                                      servicePromo[index].imageServicePromoUrl,
                                  servicePromoName:
                                      servicePromo[index].servicePromoName,
                                  servicePromoDescription: servicePromo[index]
                                      .servicePromoDescription,
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
                ),
              ),
              const Icon(Icons.directions_transit),
              const Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
