import 'package:dyvolt/pages/personal_info_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

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
          'Choose Seat',
          style: TextStyles.textAppBar,
        ),
        centerTitle: true,
          toolbarHeight: 56,
          backgroundColor: AppColors.whiteColor,
          elevation: 1,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Row(
                    children: [
                      LabelCircle(
                        circleColor: AppColors.primaryColor,
                      ),
                      SizedBox(width: 16),
                      LabelCircle(
                        circleColor: AppColors.grey7c7270Color,
                      ),
                      SizedBox(width: 16),
                      LabelCircle(
                        circleColor: AppColors.d9Color,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Stack(children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: SvgPicture.asset(
                  'assets/images/img_bg_ship.svg',
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 182,
                    ),
                    Row(
                      children: [
                        const ButtonSeat(
                            seatNumber: '1A', seatColor: AppColors.seatWhite),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '1B', seatColor: AppColors.seatWhite),
                        Flexible(
                          fit: FlexFit.tight, // Mengisi ruang kosong
                          child: Container(
                            height: 40,
                          ),
                        ),
                        const ButtonSeat(
                            seatNumber: '1C', seatColor: AppColors.seatWhite),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '1D', seatColor: AppColors.seatWhite),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const ButtonSeat(
                            seatNumber: '2A', seatColor: AppColors.seatWhite),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '2B', seatColor: AppColors.seatBlue),
                        Flexible(
                          fit: FlexFit.tight, // Mengisi ruang kosong
                          child: Container(
                            height: 40,
                          ),
                        ),
                        const ButtonSeat(
                            seatNumber: '2C',
                            seatColor: AppColors.seatGreyLight),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '2D', seatColor: AppColors.seatWhite),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const ButtonSeat(
                            seatNumber: '3A', seatColor: AppColors.seatWhite),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '3B', seatColor: AppColors.seatWhite),
                        Flexible(
                          fit: FlexFit.tight, // Mengisi ruang kosong
                          child: Container(
                            height: 40,
                          ),
                        ),
                        const ButtonSeat(
                            seatNumber: '3C',
                            seatColor: AppColors.seatGreyLight),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '3D',
                            seatColor: AppColors.seatGreyLight),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const ButtonSeat(
                            seatNumber: '4A', seatColor: AppColors.seatWhite),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '4B', seatColor: AppColors.seatWhite),
                        Flexible(
                          fit: FlexFit.tight, // Mengisi ruang kosong
                          child: Container(
                            height: 40,
                          ),
                        ),
                        const ButtonSeat(
                            seatNumber: '4C', seatColor: AppColors.seatWhite),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '4D', seatColor: AppColors.seatWhite),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const ButtonSeat(
                            seatNumber: '5A',
                            seatColor: AppColors.seatGreyDark),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '5B',
                            seatColor: AppColors.seatGreyDark),
                        Flexible(
                          fit: FlexFit.tight, // Mengisi ruang kosong
                          child: Container(
                            height: 40,
                          ),
                        ),
                        const ButtonSeat(
                            seatNumber: '5C',
                            seatColor: AppColors.seatGreyDark),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '5D',
                            seatColor: AppColors.seatGreyDark),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const ButtonSeat(
                            seatNumber: '6A',
                            seatColor: AppColors.seatGreyLight),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '6B',
                            seatColor: AppColors.seatGreyLight),
                        Flexible(
                          fit: FlexFit.tight, // Mengisi ruang kosong
                          child: Container(
                            height: 40,
                          ),
                        ),
                        const ButtonSeat(
                            seatNumber: '6C', seatColor: AppColors.seatWhite),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '6D', seatColor: AppColors.seatWhite),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const ButtonSeat(
                            seatNumber: '7A', seatColor: AppColors.seatWhite),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '7B', seatColor: AppColors.seatWhite),
                        Flexible(
                          fit: FlexFit.tight, // Mengisi ruang kosong
                          child: Container(
                            height: 40,
                          ),
                        ),
                        const ButtonSeat(
                            seatNumber: '7C', seatColor: AppColors.seatWhite),
                        const SizedBox(width: 12),
                        const ButtonSeat(
                            seatNumber: '7D', seatColor: AppColors.seatWhite),
                      ],
                    ),
                    const SizedBox(height: 24),
                    ButtonLarge(
                        text: 'Confirm',
                        onPressed: () {
                          // Logika yang ingin Anda jalankan saat tombol ditekan
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PersonalInfoPage()),
                          );
                        }),
                    const SizedBox(height: 24)
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
