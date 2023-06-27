import 'package:dyvolt/utils/colors.dart';
import 'package:flutter/material.dart';

class BannerHome extends StatelessWidget {
  final List<String> bannerImageAssetNames = List.generate(
    3,
    (index) => 'img_slider_${index + 1}.png',
  );

  final List<Color> carouselColors = [
    Colors.blue,
    Colors.blueAccent,
    Colors.lightBlue,
  ];

  BannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BannerSlider(
      imageAssetNames: bannerImageAssetNames,
      carouselColors: carouselColors,
    );
  }
}

class BannerSlider extends StatefulWidget {
  final List<String> imageAssetNames;
  final List<Color> carouselColors;

  const BannerSlider({super.key, 
    required this.imageAssetNames,
    required this.carouselColors,
  });

  @override
  _BannerSliderState createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 180,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.imageAssetNames.length + 1, // Tambahkan 1 untuk slide tambahan
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
                if (_currentIndex >= widget.imageAssetNames.length) {
                  _currentIndex = 0;
                  _pageController.jumpToPage(0);
                }
              });
            },
            itemBuilder: (BuildContext context, int index) {
              if (index == widget.imageAssetNames.length) {
                // Slide tambahan pada akhir
                return Container(); // Mengembalikan container kosong
              }

              final String assetName = widget.imageAssetNames[index];
              // final Color carouselColor = widget.carouselColors[index];

              return Container(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    // BoxShadow(
                    //   color: Color(0x591B1B0D),
                    //   offset: Offset(0, 5),
                    //   blurRadius: 10,
                    //   spreadRadius: 0,
                    // ),
                  ],
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/sliders/$assetName',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),

        ), //Kontainer ini tingginya tidak sesuai konten
        Positioned(
          bottom: 26,
          right: 0,
          left: 0,
          child: Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.imageAssetNames.map((assetName) {
                int index = widget.imageAssetNames.indexOf(assetName);
                return GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? AppColors.primaryColor
                          : AppColors.d9Color,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
