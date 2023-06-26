import 'package:barcode_widget/barcode_widget.dart';
import 'package:dyvolt/main_page.dart';
import 'package:dyvolt/pages/boarding_pass_page.dart';
import 'package:dyvolt/pages/login_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/utils/shadows.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Payment',
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      color: Color(0xFFEEEFEF),
                      child: Column(
                        children: [
                          SizedBox(height: 24),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 24,
                                child: Image.asset(
                                  'assets/images/flight/logos/img_logo_indigo.png',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  color: Colors.red,
                                  // Isi konten di sini
                                ),
                              ),
                              CustomIcon(
                                iconName: 'icon_date',
                                color: AppColors.grey555Color,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 24,
                                    child: Text(
                                      '15/07/2022',
                                      style: TextStyles.textLabel,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Divider(
                            color: AppColors.borderDrawerColor,
                            height: 1,
                            thickness: 1,
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 68,
                                // color: Colors.green,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Text(
                                        '5.50',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyles.text24px700,
                                      ),
                                    ),
                                    Text(
                                      'DEL',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyles.text16px500,
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  color: Colors.red,
                                  // Isi konten di sini
                                ),
                              ),
                              SizedBox(width: 8),
                              SvgPicture.asset(
                                'assets/images/img_plane_ticket.svg', // Ubah path dengan lokasi file SVG Anda
                                // width:
                                //     200, // Sesuaikan ukuran gambar sesuai kebutuhan Anda
                                fit: BoxFit.fitWidth,
                                height: 28,
                              ),
                              SizedBox(width: 8),
                              Flexible(
                                child: Container(
                                  color: Colors.red,
                                  // Isi konten di sini
                                ),
                              ),
                              Container(
                                width: 68,
                                // color: Colors.green,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      child: Text(
                                        '7.30',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyles.text24px700,
                                      ),
                                    ),
                                    Text(
                                      'CCU',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyles.text16px500,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: AppColors.borderDrawerColor,
                            height: 1,
                            thickness: 1,
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 68,
                                // color: Colors.green,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                          height: 1.43,
                                          letterSpacing: 0.0,
                                          color: AppColors.blackColor),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  color: Colors.red,
                                  // Isi konten di sini
                                ),
                              ),
                              SizedBox(width: 8),
                              Flexible(
                                child: Container(
                                  color: Colors.red,
                                  // Isi konten di sini
                                ),
                              ),
                              Container(
                                width: 68,
                                // color: Colors.green,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      child: Text(
                                        '\$230',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600,
                                            height: 1.25,
                                            letterSpacing: 0.0,
                                            color: AppColors.primaryColor),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    padding: const EdgeInsets.all(8.0),
                    // decoration: BoxDecoration(
                    //   color: AppColors.whiteColor,
                    //   borderRadius: BorderRadius.circular(16),
                    //   boxShadow: const [Shadows.boxShadow1],
                    // ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                // color: Colors.green,
                                child: CardNumberLabelInput(
                              label: 'Card number',
                              hintText: '5300 0000 0000 0000',
                              onChanged: (value) {
                                // Lakukan sesuatu dengan nilai input yang diubah
                                print(value);
                              },
                            )),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                                // color: Colors.green,
                                child: TextLabelUnderlineInput(
                              label: 'Card holder name',
                              hintText: 'Budi Budiman',
                              onChanged: (value) {
                                // Lakukan sesuatu dengan nilai input yang diubah
                                print(value);
                              },
                            )),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                                // color: Colors.green,
                                child: CVVLabelUnderlineInput(
                              label: 'CVV',
                              hintText: '000',
                              onChanged: (value) {
                                // Lakukan sesuatu dengan nilai input yang diubah
                                print(value);
                              },
                            )),
                            SizedBox(
                              width: 32,
                            ),
                            Expanded(
                                // color: Colors.green,
                                child: CVVLabelUnderlineInput(
                              label: 'Expiry date',
                              hintText: '05/24',
                              onChanged: (value) {
                                // Lakukan sesuatu dengan nilai input yang diubah
                                print(value);
                              },
                            )),
                          ],
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    // Aksi yang dijalankan saat gambar diklik
                                  },
                                  child: SvgPicture.asset(
                                    'assets/images/payment/img_pay_mastercard_logo.svg',
                                    height: 20,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 16),
                            InkWell(
                              onTap: () {
                                // Aksi yang dijalankan saat gambar diklik
                              },
                              child: SvgPicture.asset(
                                'assets/images/payment/img_pay_visa_logo.svg',
                                height: 20,
                              ),
                            ),
                            SizedBox(width: 16),
                            InkWell(
                              onTap: () {
                                // Aksi yang dijalankan saat gambar diklik
                              },
                              child: SvgPicture.asset(
                                'assets/images/payment/img_pay_amex_logo.svg',
                                height: 20,
                              ),
                            ),
                            SizedBox(width: 16),
                            InkWell(
                              onTap: () {
                                // Aksi yang dijalankan saat gambar diklik
                              },
                              child: SvgPicture.asset(
                                'assets/images/payment/img_pay_paypal_logo.svg',
                                height: 20,
                              ),
                            ),
                            Flexible(
                              child: Container(
                                color: Colors.red,
                                // Isi konten di sini
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            // Expanded(
                            //   child: ButtonWhiteOutlineLarge(
                            //       text: 'Cancel',
                            //       onPressed: () {
                            //         // Logika yang ingin Anda jalankan saat tombol ditekan
                            //         // Navigator.pushReplacement(
                            //         //   context,
                            //         //   MaterialPageRoute(builder: (context) => MainPage()),
                            //         // );
                            //       }),
                            // ),
                            // SizedBox(
                            //   width: 16,
                            // ),
                            Expanded(
                              child: ButtonLarge(
                                  text: 'Confirm',
                                  onPressed: () {
                                    // Logika yang ingin Anda jalankan saat tombol ditekan
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BoardingPassPage()),
                                    );
                                    // );
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 8, 32, 24),
                    child: ButtonOutlineLarge(
                      text: 'Cancel',
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      },
                    ),
                  ),
                ],
              ),
              // Column(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 24),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
