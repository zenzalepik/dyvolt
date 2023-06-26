import 'package:dyvolt/widgets/card_product.dart';
import 'package:dyvolt/widgets/cart_list.dart';
import 'package:dyvolt/widgets/sheet_order_confirmation.dart';
import 'package:flutter/material.dart';
import 'package:dyvolt/widgets/slider.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/widgets/card_product_small.dart';

class MyCartPage extends StatelessWidget {
  MyCartPage({super.key});
/*
  final List<Product> products = [
    Product(
      imageUrl: 'https://i.pravatar.cc/150?img=1',
      productName: 'Paket Kit Konversi Matic R14 PNP 1',
      // productDescription: '500WATT 72VOLT 1',
      productPrice: 999.999,
    ),
    Product(
      imageUrl: 'https://i.pravatar.cc/150?img=1',
      productName: 'Paket Kit Konversi Matic R14 PNP',
      // productDescription: '500WATT 72VOLT 2',
      productPrice: 999.999,
    ),
    Product(
      imageUrl: 'https://i.pravatar.cc/150?img=1',
      productName: 'Paket Kit Konversi Matic R14 PNP 2',
      // productDescription: '500WATT 72VOLT 3',
      productPrice: 999.999,
    ),
    Product(
      imageUrl: 'https://i.pravatar.cc/150?img=1',
      productName: 'Paket Kit Konversi Matic R14 PNP 4',
      // productDescription: '500WATT 72VOLT 4',
      productPrice: 999.999,
    ),
    Product(
      imageUrl: 'https://i.pravatar.cc/150?img=1',
      productName: 'Paket Kit Konversi Matic R14 PNP 5',
      // productDescription: '500WATT 72VOLT 5',
      productPrice: 999.999,
    ),
  ];
*/

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
          'My Cart',
          style: TextStyles.textAppBar,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      body: Column(
        children: [
          Expanded(child: CartProductList()),
          const SizedBox(height: 8)
        ],
      ),
      bottomNavigationBar: Container(
        height: 82,
        decoration: BoxDecoration(color: AppColors.whiteColor, boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(89, 27, 27, 0.05),
            offset: Offset(0, -8),
            blurRadius: 24,
          ),
        ]),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                 
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32.0),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return SheetOrderConfirm();
                      },
                    );
                  
                },
                child: Container(
                    height: 32,
                    child: Center(
                        child: Text('Checkout',
                            style: TextStyle(
                              fontFamily:
                                  'Inter', // Nama jenis huruf (font) Inter
                              fontSize: 18, // Ukuran teks 18px
                              fontWeight: FontWeight.w500, // Ketebalan teks 500
                              height: 1.33, // Tinggi baris 24px (24/18=1.33)
                              letterSpacing: 0, color: AppColors.whiteColor,
                            )))),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(0),
                  maximumSize: MaterialStateProperty.all<Size>(
                      Size(double.infinity, 64)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                      EdgeInsets.all(14)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.primaryColor),
                )),
          ],
        ),
      ),
    );
  }
}
