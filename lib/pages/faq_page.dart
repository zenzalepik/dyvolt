import 'package:dyvolt/main_page.dart';
import 'package:dyvolt/pages/login_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/utils/shadows.dart';
import 'package:dyvolt/widgets/collapse.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:dyvolt/widgets/video.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class FAQPage extends StatelessWidget {
  late VideoPlayerController controller;

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
            'FAQ',
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(8),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Color.fromRGBO(89, 27, 27, 0.05),
                          //     offset: Offset(0, 5),
                          //     blurRadius: 10,
                          //   ),
                          // ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Can I Help you?',
                                          style: TextStyles.text20px600Black,
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'We are ready to help you anytime and anywhere',
                                          style: TextStyles
                                              .textDetailProductDescription,
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 88,
                                    width: 88,
                                    child: SvgPicture.asset(
                                        'assets/images/img_faq.svg'),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Button(
                                  text: 'Help Center',
                                  onPressed: () {
                                    // Logika yang ingin Anda jalankan saat tombol ditekan
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainPage()),
                                    );
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Text('Product Usage ', style: TextStyles.text16px600)
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    CollapseFAQ(
                      question: 'How do you install it?',
                      answer:
                          'Lorem ipsum dolor sit amet consectetur. Risus venenatis in at dignissim. Quam risus nec morbi ac non. Nunc eget integer urna velit vulputate massa. Viverra est a penatibus maecenas metus senectus at in elementum. Et vitae et consectetur egestas fermentum. Nec dui pellentesque est nisi sed sed. Non nunc tempor posuere imperdiet eleifend est sit faucibus.',
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    CollapseFAQ(
                      question: 'How do you install it?',
                      answer:
                          'Lorem ipsum dolor sit amet consectetur. Risus venenatis in at dignissim. Quam risus nec morbi ac non. Nunc eget integer urna velit vulputate massa. Viverra est a penatibus maecenas metus senectus at in elementum. Et vitae et consectetur egestas fermentum. Nec dui pellentesque est nisi sed sed. Non nunc tempor posuere imperdiet eleifend est sit faucibus.',
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    CollapseFAQ(
                      question: 'How do you install it?',
                      answer:
                          'Lorem ipsum dolor sit amet consectetur. Risus venenatis in at dignissim. Quam risus nec morbi ac non. Nunc eget integer urna velit vulputate massa. Viverra est a penatibus maecenas metus senectus at in elementum. Et vitae et consectetur egestas fermentum. Nec dui pellentesque est nisi sed sed. Non nunc tempor posuere imperdiet eleifend est sit faucibus.',
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Text('Product Usage ', style: TextStyles.text16px600),
                    SizedBox(height: 16),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Home(
                          urlVideo: 'https://www.fluttercampus.com/video.mp4'),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: ButtonYoutube(
                        text: 'Youtube',
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
