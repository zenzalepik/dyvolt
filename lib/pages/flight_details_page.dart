import 'package:dyvolt/pages/choose_seat_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/utils/shadows.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlightDetailsPage extends StatelessWidget {
  const FlightDetailsPage({super.key});

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
          'Flight Details',
          style: TextStyles.textAppBar,
        ),
        centerTitle: true,
              toolbarHeight: 56,
          backgroundColor: AppColors.whiteColor,
          elevation: 1,
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
                  const SizedBox(
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
                            padding: const EdgeInsets.all(8),
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
                        const SizedBox(height: 16),
                        const Divider(
                          color: AppColors.borderDrawerColor,
                          height: 1,
                          thickness: 1,
                        ),
                        const SizedBox(height: 16),
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
                            const SizedBox(width: 8),
                            const SizedBox(
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
                            const Text('01 hr 40min',
                                style: TextStyles.textLabelSmall)
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const SizedBox(
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
                            const SizedBox(width: 8),
                            SvgPicture.asset(
                              'assets/images/img_plane_ticket.svg', // Ubah path dengan lokasi file SVG Anda
                              // width:
                              //     200, // Sesuaikan ukuran gambar sesuai kebutuhan Anda
                              height: 36,
                            ),
                            const SizedBox(width: 8),
                            Flexible(
                              child: Container(
                                color: Colors.red,
                                // Isi konten di sini
                              ),
                            ),
                            const SizedBox(
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
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyles.textLabelVerySmall,
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Divider(
                          color: AppColors.borderDrawerColor,
                          height: 1,
                          thickness: 1,
                        ),
                        const SizedBox(height: 16),
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
                            const SizedBox(
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
                        const SizedBox(height: 16),
                        const Divider(
                          color: AppColors.borderDrawerColor,
                          height: 1,
                          thickness: 1,
                        ),
                        const SizedBox(height: 16),
                        const Row(
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
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
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
                                  
                                  Navigator.pop(
                                    context,
                                  );
                                }),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: ButtonLarge(
                                text: 'Confirm',
                                onPressed: () {
                                  // Logika yang ingin Anda jalankan saat tombol ditekan
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const ChooseSeatPage()),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
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
