import 'package:dyvolt/pages/payment_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:flutter/material.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const CustomIcon(
                iconName: 'icon_back', size: 24, color: AppColors.blackColor),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Personal Info',
          style: TextStyles.textAppBar,
        ),
        centerTitle: true,
             toolbarHeight: 56,
          backgroundColor: AppColors.whiteColor,
          elevation: 1,
        actions: [
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(31),
                  color: AppColors.d9Color,
                ),
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: AppColors.whiteColor),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.asset(
                      'assets/images/dyvolt_logo_outline_splash_screen.png',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              height: 24,
              child: Text(
                'Joko Tingkir',
                style: TextStyles.textMenuDrawer,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              padding: const EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                // color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(16),
                // boxShadow: [
                //   BoxShadow(
                //     color: Color(0x591B1B0D),
                //     offset: Offset(0, 5),
                //     blurRadius: 10,
                //     spreadRadius: 0,
                //   ),
                // ],
              ),
              child: Column(
                children: [
                  IconNameCardInput(
                    label: 'Name',
                    hintText: 'Enter your name here',
                    onChanged: (value) {
                      // Logika yang ingin Anda jalankan saat nilai teks berubah
                    },
                  ),
                  const SizedBox(height: 20),
                  IconAddressInput(
                    label: 'Address',
                    hintText: 'Enter your address',
                    onChanged: (value) {
                      // Logika yang ingin Anda jalankan saat nilai teks berubah
                    },
                  ),
                  const SizedBox(height: 20),
                  IconPassportInput(
                    label: 'Passport',
                    hintText: 'ED 25265 589',
                    onChanged: (value) {
                      // Logika yang ingin Anda jalankan saat nilai teks berubah
                    },
                  ),
                  const SizedBox(height: 20),
                  IconDateInput(
                    label: 'DOB',
                    hintText: '12/05/1990',
                    onChanged: (value) {
                      // Logika yang ingin Anda jalankan saat nilai teks berubah
                    },
                  ),
                  const SizedBox(height: 20),
                  IconDropdownInput(
                    label: 'Country',
                    hintText: 'Country',
                    leftIcon: Icons.arrow_downward,
                    rightIcon: Icons.arrow_forward,
                    options: const ['Option 1', 'Option 2', 'Option 3'],
                    onChanged: (value) {
                      // Logika yang ingin Anda jalankan saat nilai dropdown berubah
                    },
                  ),
                  const SizedBox(height: 24),
                  ButtonLarge(
                      text: 'Confirm',
                      onPressed: () {
                        // Logika yang ingin Anda jalankan saat tombol ditekan
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PaymentPage()),
                        );
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: SizedBox(
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Color(0xFF591B1B0D),
                  //       offset: Offset(0, 5),
                  //       blurRadius: 10,
                  //       spreadRadius: 0,
                  //     ),
                  //   ],
                  //   borderRadius: BorderRadius.circular(8),
                  // ),
                  child: TextLink16(
                text: 'Skip',
                onTap: () {},
              )),
            ),
          ],
        ),
      ),
    );
  }
}
