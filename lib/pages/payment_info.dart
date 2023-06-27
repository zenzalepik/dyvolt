import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/widgets/card_invoice.dart';
import 'package:dyvolt/widgets/collapse_white.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:dyvolt/widgets/product_order_payment.dart';
import 'package:flutter/material.dart';

class PaymentInfoPage extends StatelessWidget {
  const PaymentInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const CustomIcon(
                iconName: 'icon_back', size: 24, color: AppColors.blackColor),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Payment Info',
          style: TextStyles.textAppBar,
        ),
        centerTitle: true,
              toolbarHeight: 56,
          backgroundColor: AppColors.whiteColor,
          elevation: 1,
        actions: [
          IconButton(
              icon: const CustomIcon(
                  iconName: 'icon_download',
                  size: 24.0,
                  color: AppColors.blackColor),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(16),
          // decoration: BoxDecoration(
          // color: AppColors.whiteColor,
          // borderRadius: BorderRadius.circular(16),
          // boxShadow: [
          //   BoxShadow(
          //     color: Color.fromRGBO(89, 27, 27, 0.05),
          //     offset: Offset(0, 5),
          //     blurRadius: 10,
          //   ),
          // ],
          // ),
          child: Column(
            children: [
              const Row(
                children: [Expanded(child: CardInvoice())],
              ),
              const Row(
                children: [
                  Expanded(
                    child: CollapseWhite(
                      title: 'Product List',
                      content: Padding(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          children: [
                            ProductOrderPayment(),
                            ProductOrderPayment(),
                            ProductOrderPayment(),
                            // Tambahkan ProductOrder sesuai kebutuhan Anda
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(children: [
                Expanded(
                    child: CollapseWhite(
                  title: 'Shipment Info',
                  content: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: [
                        // Tambahkan Pro
                        const Row(
                          children: [
                            Expanded(
                                child: Text('Resi Number',
                                    style: TextStyles.text10px300Grey999)),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Row(
                          children: [
                            Expanded(
                                child: Text('231839291234',
                                    style: TextStyles.text12px500Dark)),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                  'assets/images/kurir/img_kurir_jne.png',
                                  height: 40,
                                  width: 40),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Row(
                              children: [
                                Text('JNE ( REG - Reguler )',
                                    style: TextStyles.textProductPrice),
                              ],
                            ),
                            Flexible(
                              flex: 2,
                              child: Container(
                                height: 0,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text('Estimasi 2-4 Hari',
                                style: TextStyles.text10px300Grey999)
                          ],
                        ),
                        const SizedBox(height: 8),
                        TextArea(
                          label: 'Shipping Address',
                          hintText:
                              'Komplek Griya Mitra Posindo Blok C6 No. 5, RT.10/RW.26, Cinunuk, Kec. Cileunyi, Kabupaten Bandung, Jawa Barat 40624',
                          onChanged: (value) {
                            // Logika yang ingin Anda jalankan saat nilai teks berubah
                          },
                        ),
                      ],
                    ),
                  ),
                )),
              ]),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: CollapseWhite(
                      title: 'Payment Info',
                      content: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset(
                                      'assets/images/payment/img_pay_bank_bca.png',
                                      height: 40,
                                      width: 40),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Row(
                                  children: [
                                    Text('Transfer Bank BCA',
                                        style: TextStyles.textProductPrice),
                                  ],
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text('Transfer Bank Manual',
                                    style: TextStyles.text10px300Grey999)
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Row(
                                  children: [
                                    Text('Product (5 Items)',
                                        style: TextStyles.text12px500Grey70),
                                  ],
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text('Rp 540.000',
                                    style: TextStyles.text10px300Grey999)
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Row(
                                  children: [
                                    Text('Product Discount',
                                        style: TextStyles.text12px500Grey70),
                                  ],
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text('-Rp 500',
                                    style: TextStyles.text10px300Grey999)
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Row(
                                  children: [
                                    Text('Shipping Payment',
                                        style: TextStyles.text12px500Grey70),
                                  ],
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text('Rp 44.000',
                                    style: TextStyles.text10px300Grey999)
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Row(
                                  children: [
                                    Text('Shipping Discount',
                                        style: TextStyles.text12px500Grey70),
                                  ],
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text('-Rp 20.000',
                                    style: TextStyles.text10px300Grey999)
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Row(
                                  children: [
                                    Text('Discount Coupon',
                                        style: TextStyles.text12px500Grey70),
                                  ],
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text('Rp 120.000',
                                    style: TextStyles.text10px300Grey999)
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Row(
                                  children: [
                                    Text('Total Payment',
                                        style: TextStyles.text14px600Blue),
                                  ],
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text('Rp 540.000',
                                    style: TextStyles.text14px600Blue),
                                const SizedBox(
                                  height: 8,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 136,
        decoration: const BoxDecoration(color: AppColors.whiteColor, boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(89, 27, 27, 0.05),
            offset: Offset(0, -8),
            blurRadius: 24,
          ),
        ]),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: [
            ElevatedButton(
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
                        child: Text('Track Order',
                            style: TextStyle(
                              fontFamily:
                                  'Inter', // Nama jenis huruf (font) Inter
                              fontSize: 18, // Ukuran teks 18px
                              fontWeight: FontWeight.w500, // Ketebalan teks 500
                              height: 1.33, // Tinggi baris 24px (24/18=1.33)
                              letterSpacing: 0, color: AppColors.whiteColor,
                            ))))),
            const SizedBox(height: 16),
            ElevatedButton(
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
                      MaterialStateProperty.all<Color>(AppColors.whiteColor),
                ),
                child: const SizedBox(
                    height: 32,
                    child: Center(
                        child: Text('Retur Product',
                            style: TextStyle(
                                fontFamily:
                                    'Inter', // Nama jenis huruf (font) Inter
                                fontSize: 18, // Ukuran teks 18px
                                fontWeight:
                                    FontWeight.w500, // Ketebalan teks 500
                                height: 1.33, // Tinggi baris 24px (24/18=1.33)
                                letterSpacing: 0,
                                color: AppColors.grey555Color))))),
          ],
        ),
      ),
    );
  }
}
