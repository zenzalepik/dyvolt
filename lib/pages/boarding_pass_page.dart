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
                                  borderRadius: BorderRadius.circular(4),
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
                        SizedBox(height: 16),
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
                        final
                        Row(
                          children: [
                            Expanded(
                              child: BarcodeWidget(
                                data: 'Ini Barcode',
                                barcode: Barcode.code128(),
                                color: Colors.black,
                                width: 200,
                                height: 100,
                                style: TextStyle(),
                                drawText: false,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text('data')
                          ],
                        )
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
                                  text: 'Modify',
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
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
