import 'package:dyvolt/main_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:flutter/material.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const CustomIcon(
                iconName: 'icon_back', size: 24, color: AppColors.blackColor),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => const MainPage()),
    (route) => false,
  );
          },
        ),
        title: const Text(
          'Search Result',
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CardTicket(),
              SizedBox(
                height: 12,
              ),
              Divider(
                color: AppColors.borderDrawerColor,
                height: 1,
                thickness: 1,
              ),
              SizedBox(
                height: 12,
              ),
              CardTicket(),
              SizedBox(
                height: 12,
              ),
              Divider(
                color: AppColors.borderDrawerColor,
                height: 1,
                thickness: 1,
              ),
              SizedBox(
                height: 12,
              ),
              CardTicket(),
              SizedBox(
                height: 12,
              ),
              Divider(
                color: AppColors.borderDrawerColor,
                height: 1,
                thickness: 1,
              ),
              SizedBox(
                height: 12,
              ),
              CardTicket(),
              SizedBox(
                height: 12,
              ),
              Divider(
                color: AppColors.borderDrawerColor,
                height: 1,
                thickness: 1,
              ),
              SizedBox(
                height: 12,
              ),
              CardTicket(),
              SizedBox(
                height: 12,
              ),
              Divider(
                color: AppColors.borderDrawerColor,
                height: 1,
                thickness: 1,
              ),
              SizedBox(
                height: 12,
              ),
              CardTicket(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
