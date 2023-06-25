import 'package:barcode_widget/barcode_widget.dart';
import 'package:dyvolt/main_page.dart';
import 'package:dyvolt/pages/login_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/utils/shadows.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoardingPassPage extends StatelessWidget {
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
          'Boarding Pass',
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
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    padding: const EdgeInsets.all(16.0),
                    // decoration: BoxDecoration(
                    //   color: AppColors.whiteColor,
                    //   borderRadius: BorderRadius.circular(16),
                    //   boxShadow: const [Shadows.boxShadow1],
                    // ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.asset(
                                  'path_to_image',
                                  fit: BoxFit.cover,
                                ),
                              ),
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
                                    'Pessanger',
                                    style: TextStyles.textLabel,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              child: Container(
                                color: Colors.red,
                                // Isi konten di sini
                              ),
                            ),
                            SizedBox(
                              width: 64,
                              child: Image.asset(
                                'assets/images/flight/logos/img_logo_indigo.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                        Divider(
                          color: AppColors.borderDrawerColor,
                          height: 1,
                          thickness: 1,
                        ),
                        SizedBox(height: 20),
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
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 68,
                              // color: Colors.green,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Indira Gandhi International Airport',
                                    // maxLines: 3,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyles.textLabelVerySmall,
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
                            Container(
                              width: 68,
                              // color: Colors.green,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Subhash Chandra Bose International Airport',
                                    // maxLines: 3,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyles.textLabelVerySmall,
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
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
                        SizedBox(height: 32),
                        Divider(
                          color: AppColors.borderDrawerColor,
                          height: 1,
                          thickness: 1,
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flight',
                                  // maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyles.textLabelVerySmall,
                                ),
                                Text(
                                  'IN 230',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyles.text16px500,
                                ),
                              ],
                            ),
                            Flexible(
                              child: Container(
                                color: Colors.red,
                                // Isi konten di sini
                              ),
                            ),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Gate',
                                  // maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyles.textLabelVerySmall,
                                ),
                                Text(
                                  '22',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyles.text16px500,
                                ),
                              ],
                            ),
                            Flexible(
                              child: Container(
                                color: Colors.red,
                                // Isi konten di sini
                              ),
                            ),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Seat',
                                  // maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyles.textLabelVerySmall,
                                ),
                                Text(
                                  '2B',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyles.text16px500,
                                ),
                              ],
                            ),
                            SizedBox(width: 8),
                            Flexible(
                              child: Container(
                                color: Colors.red,
                                // Isi konten di sini
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Class',
                                  // maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyles.textLabelVerySmall,
                                ),
                                Text(
                                  'Economy',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyles.text16px500,
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
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: BarcodeScreen(
                                  barcodeData: 'INDS 453210907135'),
                            )
                          ],
                        ),
                        SizedBox(height: 24),
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
                                  text: 'Download',
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
                      text: 'Book another flight',
                      onTap: () {},
                    )),
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
