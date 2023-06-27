import 'package:dyvolt/pages/my_cart_page.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/widgets/card_booking.dart';
import 'package:flutter/material.dart';

import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:dyvolt/widgets/product_order.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'History',
            style: TextStyles.textAppBar,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(89, 27, 27, 0.05),
                      offset: Offset(0, 5),
                      blurRadius: 10,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(2),
                child: SizedBox(
                  height: 32,
                  child: TabBar(
                    tabs: const [
                      Tab(
                        child: Text('Order',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            )),
                      ),
                      Tab(
                        child: Text('Booking',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            )),
                      ),
                    ],
                    indicator: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                  ),
                ),
              ),
            ),
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
              child: Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  // color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(89, 27, 27, 0.05),
                      offset: Offset(0, 5),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      ProductOrder(),
                      ProductOrder(),
                      ProductOrder(),
                      // Tambahkan ProductOrder sesuai kebutuhan Anda
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  // color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(89, 27, 27, 0.05),
                      offset: Offset(0, 5),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      CardBooking(),
                      CardBooking(),
                      CardBooking(),
                      // Tambahkan ProductOrder sesuai kebutuhan Anda
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
