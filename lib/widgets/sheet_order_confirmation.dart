import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/widgets/popup.dart';
import 'package:flutter/material.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:dyvolt/widgets/track_order.dart';

class SheetOrderConfirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(32),
        topLeft: Radius.circular(32),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        height: 8,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.f6Color,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    'Order Confirmation',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Flexible(flex: 1, child: Container()),
                  Text(
                    'Change Address',
                    style: TextStyles.textLinkSmall,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              SizedBox(height: 12),
              IconNameInput(
                label: 'Full Name',
                hintText: 'Joko Tingkir',
                onChanged: (value) {
                  // Logika yang ingin Anda jalankan saat nilai teks berubah
                },
              ),
              SizedBox(height: 16),
              IconPhoneInput(
                label: 'Phone (WA)',
                hintText: '087-8374-3847',
                onChanged: (value) {
                  // Logika yang ingin Anda jalankan saat nilai teks berubah
                },
              ),
              SizedBox(height: 16),
              TextArea(
                label: 'Shipping Address',
                hintText:
                    'Komplek Griya Mitra Posindo Blok C6 No. 5, RT.10/RW.26, Cinunuk, Kec. Cileunyi, Kabupaten Bandung, Jawa Barat 40624',
                onChanged: (value) {
                  // Logika yang ingin Anda jalankan saat nilai teks berubah
                },
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: ButtonLarge2(
                      text: 'Select Payment',
                      onPressed: () {
                            PopUp(context, 'Oops! ', "you haven't logged in yet, please log in if you already have an account / register if you don't have an account yet, so that you can enjoy shopping more!");

                      },
                    ),
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
