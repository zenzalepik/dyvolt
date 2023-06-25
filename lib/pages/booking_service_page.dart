import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/utils/shadows.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingServicePage extends StatelessWidget {
  const BookingServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Booking Service Demo',
              style: TextStyles.textAppBar,
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(2),
                  child: SizedBox(
                    height: 32,
                    child: TabBar(
                      tabs: [
                        Tab(
                          child: Text('On Shop',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter',
                              )),
                        ),
                        Tab(
                          child: Text('Home',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter',
                              )),
                        ),
                        Tab(
                          child: Text('Road',
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
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 24,
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
                                Center(
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.f6Color,
                                        width: 1.0,
                                      ),
                                    ),
                                    height: 64,
                                    child: AspectRatio(
                                      aspectRatio: 1 / 1,
                                      child: Image.asset(
                                        'asset/images/flight/logos/',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16),
                                Divider(
                                  color: AppColors.borderDrawerColor,
                                  height: 1,
                                  thickness: 1,
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: [
                                    Container(
                                      width: 48,
                                      height: 32,
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: AppColors.whiteColor,
                                          border: Border.all(
                                            color: AppColors.f6Color,
                                            width: 1,
                                          )),
                                      child: Image.asset(''),
                                    ),
                                    SizedBox(width: 8),
                                    SizedBox(
                                      child: Text(
                                        'IN 230',
                                        style: TextStyles.textLabelDark,
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        color: Colors.red,
                                        // Isi konten di sini
                                      ),
                                    ),
                                    Text('01 hr 40min',
                                        style: TextStyles.textLabelSmall)
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Container(
                                      width: 68,
                                      // color: Colors.green,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                          Text(
                                            'Indira Gandhi International Airport',
                                            // maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                TextStyles.textLabelVerySmall,
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
                                      height: 36,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
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
                                          Text(
                                            'Subhash Chandra Bose International Airport',
                                            // maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                TextStyles.textLabelVerySmall,
                                            textAlign: TextAlign.right,
                                          ),
                                        ],
                                      ),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: IconDateSingleInput(
                                          label: 'Date',
                                          hintText: '15/07/2022',
                                          onChanged: (value) {}),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
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
                                    Text('Price',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w300,
                                            height: 22.0 / 22.0,
                                            letterSpacing: 0.0,
                                            color: AppColors.blackColor)),
                                    SizedBox(width: 8),
                                    SizedBox(
                                      child: Text(
                                        '\$230',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.w600,
                                          height: 33.0 / 32.0,
                                          letterSpacing: 0.0,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            padding: const EdgeInsets.all(0.0),
                            decoration: BoxDecoration(
                              // color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(16),
                              // boxShadow: const [Shadows.boxShadow1],
                            ),
                            child: Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ButtonWhiteOutlineLarge(
                                        text: 'Cancel',
                                        onPressed: () {
                                          // Logika yang ingin Anda jalankan saat tombol ditekan
                                          // Navigator.pushReplacement(
                                          //   context,
                                          //   MaterialPageRoute(builder: (context) => MainPage()),
                                          // );
                                        }),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: ButtonLarge(
                                        text: 'Confirm',
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
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
