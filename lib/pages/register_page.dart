import 'package:dyvolt/main_page.dart';
import 'package:dyvolt/pages/login_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  // color: AppColors.blackColor,
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF591B1B0D),
                        offset: Offset(-5, 5),
                        blurRadius: 10,
                        spreadRadius: -5,
                      ),
                    ],
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                  20), // Border radius pojok kiri atas
                              bottomLeft: Radius.circular(
                                  20), // Border radius pojok kiri bawah
                            ),
                          ),
                          child: Text('En'),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(
                                  20), // Border radius pojok kiri atas
                              bottomRight: Radius.circular(
                                  20), // Border radius pojok kiri bawah
                            ),
                          ),
                          child: Text('En'),
                        )
                      ]),
                ),
              ],
            ),
            Center(
              child: Container(
                width: 220,
                height: 200,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(
                    'assets/images/dyvolt_logo_outline_splash_screen.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 72,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x591B1B0D),
                    offset: Offset(0, 5),
                    blurRadius: 10,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  IconEmailInput(
                    label: 'Email Address',
                    hintText: 'customer@dyvolt.com',
                    onChanged: (value) {
                      // Logika yang ingin Anda jalankan saat nilai teks berubah
                    },
                  ),
                  SizedBox(height: 16),
                  IconNameInput(
                    label: 'Full Name',
                    hintText: 'Joko Tingkir',
                    onChanged: (value) {
                      // Logika yang ingin Anda jalankan saat nilai teks berubah
                    },
                  ),
                  SizedBox(height: 16),
                  IconPhoneInput(
                    label: 'Phone (WA)',
                    hintText: '087-8374-3847',
                    onChanged: (value) {
                      // Logika yang ingin Anda jalankan saat nilai teks berubah
                    },
                  ),
                  SizedBox(height: 16),
                  TextArea(
                    label: 'Shipping Address',
                    hintText: 'Komplek Griya Mitra Posindo...',
                    onChanged: (value) {
                      // Logika yang ingin Anda jalankan saat nilai teks berubah
                    },
                  ),
                  SizedBox(height: 24),
                  Button(
                      text: 'Register',
                      onPressed: () {
                        // Logika yang ingin Anda jalankan saat tombol ditekan
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()),
                        );
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF591B1B0D),
                      offset: Offset(0, 5),
                      blurRadius: 10,
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ButtonWhite(
                    text: 'Login',
                    onPressed: () {
                      // Logika yang ingin Anda jalankan saat tombol ditekan
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
