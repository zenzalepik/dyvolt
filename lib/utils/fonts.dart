import 'package:flutter/material.dart';
import 'colors.dart';

class TextStyles {
  static const TextStyle textAppBar = TextStyle(
      fontFamily: 'Inter',
      fontSize: 20,
      fontWeight: FontWeight.w500,
      height: 1.6, // line-height
      letterSpacing: 0,
      color: AppColors.blackColor);

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

  static const TextStyle textTitleDetailProduct = TextStyle(
    fontFamily: 'Inter',
    fontSize: 20,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.005,
    color: AppColors.blackColor,
  );

  static const TextStyle textPriceDetailProduct = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.005,
    color: AppColors.blackColor,
  );

  static const TextStyle textDetailProductDescription = TextStyle(
      fontFamily: 'Inter',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      letterSpacing: 0,
      color: AppColors.grey555Color);

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

  static const TextStyle textLabelInput = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    height:
        1.33, // Line height dalam Flutter dinyatakan sebagai faktor dari ukuran font
    letterSpacing: 0.0,
    color: AppColors.grey555Color,
  );

  static const TextStyle textLabelInputBlack = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    height:
        1.33, // Line height dalam Flutter dinyatakan sebagai faktor dari ukuran font
    letterSpacing: 0.0,
    color: AppColors.blackColor,
  );

  static const TextStyle textInput = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: 0.0,
  );

  static const TextStyle textButton = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    height: 24.0 / 18.0,
    letterSpacing: 0.0,
    color: AppColors.whiteColor,
  );

  static const TextStyle textButtonWhite = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    height: 24.0 / 18.0,
    letterSpacing: 0.0,
    color: AppColors.primaryColor,
  );

  static const TextStyle textButtonWhiteOutline = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    height: 24.0 / 18.0,
    letterSpacing: 0.0,
    color: AppColors.blackColor,
  );

  static const TextStyle textLabel = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    height: 22.0 / 14.0,
    letterSpacing: 0.0,
    // color: AppColors.grey555Color,
  );

  static const TextStyle textLabelDark = TextStyle(
      fontFamily: 'Inter',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 16 / 14,
      letterSpacing: 0,
      color: AppColors.blackColor);

  static const TextStyle textLabelSmall = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 16 / 12,
    letterSpacing: 0,
  );

  static const TextStyle textLabelVerySmall = TextStyle(
      fontFamily: 'Inter',
      fontSize: 10,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: AppColors.grey555Color);

  static const TextStyle text16px600 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 24 / 16,
    letterSpacing: 0,
    color: AppColors.blackColor,
  );

  static const TextStyle text16px500 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 24 / 16,
    letterSpacing: 0,
    color: AppColors.blackColor,
  );

  static const TextStyle text24px700 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.0,
    color: AppColors.blackColor,
  );

  static const TextStyle text14px600 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    // letterSpacing: 0,005,
    color: AppColors.blackColor,
  );

    static const TextStyle text14px600Blue = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    // letterSpacing: 0,005,
    color: AppColors.primaryColor,
  );

  static const TextStyle text14px600White = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    // letterSpacing: 0,005,
    color: AppColors.whiteColor,
  );

  static const TextStyle text20px600Black = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  static const TextStyle text12px300Grey555 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w300,
    height: 1.25,
    letterSpacing: 0,
    color: AppColors.blackColor,
  );

  static const TextStyle text8px400GreyBc = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: 0.0,
    color: AppColors.bcColor,
  );

  static const TextStyle text10px300Grey999 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 10,
    fontWeight: FontWeight.w300,
    color: AppColors.grey999Color,
  );

  static const TextStyle text12px500Dark = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );

    static const TextStyle text12px500Grey70 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.grey70Color,
  );
}
