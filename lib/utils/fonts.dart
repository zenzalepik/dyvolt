import 'package:flutter/material.dart';
import 'colors.dart';

class TextStyles {
  static const TextStyle textAppBar = TextStyle(
    fontFamily: 'Inter',
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.6, // line-height
    letterSpacing: 0,
  );

  static const TextStyle textProductPromo = TextStyle(
    fontFamily: 'Inter', // Font family
    fontSize: 16, // Ukuran font
    fontWeight: FontWeight.w500, // Ketebalan font
    height: 1.26, // Line height
    letterSpacing: 0,
    color: AppColors.blackColor,
  );

  static const TextStyle textProductPromoDescription = TextStyle(
    fontFamily: 'Inter', // Font family
    fontSize: 14, // Ukuran font
    fontWeight: FontWeight.w300, // Ketebalan font
    height: 1.2, // Line height
    letterSpacing: 0,
    color: AppColors.grey999Color,
  );

  static const TextStyle textProductPromoPrice = TextStyle(
    fontFamily: 'Inter', // Font family
    fontSize: 14, // Ukuran font
    fontWeight: FontWeight.w400, // Ketebalan font
    height: 1.2, // Line height
    letterSpacing: 0,
    color: AppColors.primaryColor,
  );

  static const TextStyle textTitleSection = TextStyle(
    fontFamily: 'Inter',
    color: AppColors.blackColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.33,
    letterSpacing: 0,
  );

  static const TextStyle textProduct = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w300,
    height: 1.25,
    letterSpacing: 0,
    color: AppColors.blackColor,
  );

  static const TextStyle textProductPrice = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.0,
    letterSpacing: 0,
    color: AppColors.blackColor,
  );

  static const TextStyle textLinkSmall = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.0,
    letterSpacing: 0,
    color: AppColors.primaryColor,
  );

  static const TextStyle textUnselectedLabelNav = TextStyle(
    color: AppColors.greyIconNavColor,
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.0,
    letterSpacing: 0.0,
  );

  static const TextStyle textSelectedLabelNav = TextStyle(
    color: AppColors.whiteColor,
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w300,
    height: 1.0,
    letterSpacing: 0.0,
  );

  static const TextStyle textMenuDrawer = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5, // Sesuaikan dengan nilai line-height yang diinginkan
    letterSpacing: 0,
    color: AppColors.blackColor,
  );

  static const TextStyle textHelloDrawer = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w300,
    height: 1.5, // Sesuaikan dengan nilai line-height yang diinginkan
    letterSpacing: 0,
    color: AppColors.grey555Color,
  );
}
