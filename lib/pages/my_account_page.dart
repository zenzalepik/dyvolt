import 'package:dyvolt/pages/my_cart_page.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/widgets/card_booking.dart';
import 'package:flutter/material.dart';

import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:dyvolt/widgets/product_order.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Account',
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
          child: Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(89, 27, 27, 0.05),
                  offset: Offset(0, 5),
                  blurRadius: 10,
                )
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 48,
                            height: 48,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(
                                'assets/images/dyvolt_app_logo.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 2,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: const CustomIcon(
                                iconName: 'icon_camera',
                                size: 14,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 12),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 24,
                            child: Text(
                              'Joko Tingkir',
                              style: TextStyles.text16px600,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                            child: Text(
                              'customer@dyvolt.com',
                              style: TextStyles.textLabel,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      IconPhoneInput(
                        label: 'Phone (WA)',
                        hintText: '087-8374-3847',
                        onChanged: (value) {
                          // Logika yang ingin Anda jalankan saat nilai teks berubah
                        },
                      ),
                      const SizedBox(height: 20),
                      TextArea(
                        label: 'Shipping Address',
                        hintText: 'Komplek Griya Mitra Posindo...',
                        onChanged: (value) {
                          // Logika yang ingin Anda jalankan saat nilai teks berubah
                        },
                      ),
                      const SizedBox(height: 20),
                      IconPasswordInput(
                        labelText: 'Password',
                        hintText: '**********',
                        onChanged: (value) {
                          // Logika yang ingin Anda jalankan saat nilai teks berubah
                        },
                      ),
                      const SizedBox(height: 20),
                      IconPasswordInput(
                        labelText: 'Confirm Password',
                        hintText: '**********',
                        onChanged: (value) {
                          // Logika yang ingin Anda jalankan saat nilai teks berubah
                        },
                      ),
                      const SizedBox(height: 24),
                      ButtonLarge(
                        text: 'Save',
                        onPressed: () {
                          // Logika yang ingin Anda jalankan saat tombol ditekan
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: SizedBox(
                    child: TextLink16(
                      text: 'Reset',
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
