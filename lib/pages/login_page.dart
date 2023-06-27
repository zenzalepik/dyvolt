import 'package:dyvolt/main_page.dart';
import 'package:dyvolt/pages/register_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 136 - 32,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Container(
            //       // color: AppColors.blackColor,
            //       padding:
            //           const EdgeInsetsDirectional.symmetric(horizontal: 18),
            //       decoration: const BoxDecoration(
            //         boxShadow: [
            //           BoxShadow(
            //             color: Color(0x0D591b1b),
            //             offset: Offset(-5, 5),
            //             blurRadius: 10,
            //             spreadRadius: -5,
            //           ),
            //         ],
            //       ),
            //       child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.end,
            //           children: [
            //             Container(
            //               padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
            //               decoration: const BoxDecoration(
            //                 color: AppColors.primaryColor,
            //                 borderRadius: BorderRadius.only(
            //                   topLeft: Radius.circular(
            //                       20), // Border radius pojok kiri atas
            //                   bottomLeft: Radius.circular(
            //                       20), // Border radius pojok kiri bawah
            //                 ),
            //               ),
            //               child: const Text('En'),
            //             ),
            //             Container(
            //               padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
            //               decoration: const BoxDecoration(
            //                 color: AppColors.whiteColor,
            //                 borderRadius: BorderRadius.only(
            //                   topRight: Radius.circular(
            //                       20), // Border radius pojok kiri atas
            //                   bottomRight: Radius.circular(
            //                       20), // Border radius pojok kiri bawah
            //                 ),
            //               ),
            //               child: const Text('En'),
            //             )
            //           ]),
            //     ),
            //   ],
            // ),

            Center(
              child: SizedBox(
                width: 200,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(
                    'assets/images/dyvolt_logo_outline_splash_screen.png',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 72,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(89, 27, 27, 0.05),
                    offset: Offset(0, 5),
                    blurRadius: 10,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  IconEmailInput(
                    label: 'Username',
                    hintText: 'customer@dyvolt.com',
                    onChanged: (value) {
                      // Logika yang ingin Anda jalankan saat nilai teks berubah
                    },
                  ),
                  const SizedBox(height: 16),
                  IconPasswordInput(
                    labelText: 'Password',
                    hintText: '**********',
                    onChanged: (value) {
                      // Logika yang ingin Anda jalankan saat nilai teks berubah
                    },
                  ),
                  const SizedBox(height: 24),
                  Button(
                      text: 'Login',
                      onPressed: () {
                        // Logika yang ingin Anda jalankan saat tombol ditekan
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainPage()),
                        );
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x0d591b1b),
                      offset: Offset(0, 5),
                      blurRadius: 10,
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ButtonWhite(
                    text: 'Register',
                    onPressed: () {
                      // Logika yang ingin Anda jalankan saat tombol ditekan
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
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
