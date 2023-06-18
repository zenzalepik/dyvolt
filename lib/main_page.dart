import 'package:dyvolt/pages/profile_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
// import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    HomePage(),
    const Center(
      child: Text(
        'Booking',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
    const Center(
      child: Text(
        'Promo',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
    const Center(
      child: Text(
        'Inbox',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
    const Center(
      child: Text(
        'Profile',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.fromLTRB(36, 20, 48, 20),
          children: [
            ListTile(
              leading: const CustomIcon(
                  iconName: 'icon_close', color: AppColors.blackColor),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(
              height: 96,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  // color: Colors.white,
                  border: null,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()),
                              );
                            },
                            child: Container(
                                child: Row(children: [
                              Container(
                                width: 24,
                                height: 24,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
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
                                    height: 18,
                                    child: Text(
                                      'Hello!',
                                      style: TextStyles.textHelloDrawer,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                    child: Text(
                                      'Joko Tingkir',
                                      style: TextStyles.textMenuDrawer,
                                    ),
                                  ),
                                ],
                              )
                            ]))),
                      ],
                    ),

                    const SizedBox(height: 20),
                    // Divider(
                    //   color: AppColors.borderDrawerColor, // Warna garis pemisah
                    //   height: 1, // Tinggi garis pemisah dalam logical pixels
                    //   thickness:
                    //       1, // Ketebalan garis pemisah dalam logical pixels
                    // ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const CustomIcon(
                  iconName: 'icon_booking',
                  size: 24.0,
                  color: AppColors.blackColor),
              title: const Text(
                'My Bookings',
                style: TextStyles.textMenuDrawer,
              ),
              onTap: () {
                // Aksi saat menu Home diklik
              },
            ),
            ListTile(
              leading: const CustomIcon(
                  iconName: 'icon_ticket',
                  size: 24.0,
                  color: AppColors.blackColor),
              title: const Text(
                'Boarding Pass',
                style: TextStyles.textMenuDrawer,
              ),
              onTap: () {
                // Aksi saat menu Settings diklik
              },
            ),
            // Tambahkan menu ikon dan label lainnya di sini
            // Contoh:
            ListTile(
              leading: const CustomIcon(
                  iconName: 'icon_support',
                  size: 24.0,
                  color: AppColors.blackColor),
              title: const Text(
                'Call Support',
                style: TextStyles.textMenuDrawer,
              ),
              onTap: () {
                // Aksi saat menu Notifications diklik
              },
            ),

            ListTile(
              leading: const CustomIcon(
                  iconName: 'icon_star',
                  size: 24.0,
                  color: AppColors.blackColor),
              title: const Text(
                'Rate us',
                style: TextStyles.textMenuDrawer,
              ),
              onTap: () {
                // Aksi saat menu Home diklik
              },
            ),
            Divider(
              color: AppColors.borderDrawerColor, // Warna garis pemisah
              height: 1, // Tinggi garis pemisah dalam logical pixels
              thickness: 1, // Ketebalan garis pemisah dalam logical pixels
            ),
            ListTile(
              leading: const CustomIcon(
                  iconName: 'icon_plane',
                  size: 24.0,
                  color: AppColors.blackColor),
              title: const Text(
                'Flight',
                style: TextStyles.textMenuDrawer,
              ),
              onTap: () {
                // Aksi saat menu Settings diklik
              },
            ),
            // Tambahkan menu ikon dan label lainnya di sini
            // Contoh:
            ListTile(
              leading: const CustomIcon(
                  iconName: 'icon_hotel',
                  size: 24.0,
                  color: AppColors.blackColor),
              title: const Text(
                'Hotel',
                style: TextStyles.textMenuDrawer,
              ),
              onTap: () {
                // Aksi saat menu Notifications diklik
              },
            ),

            ListTile(
              leading: const CustomIcon(
                  iconName: 'icon_bus',
                  size: 24.0,
                  color: AppColors.blackColor),
              title: const Text(
                'Bus',
                style: TextStyles.textMenuDrawer,
              ),
              onTap: () {
                // Aksi saat menu Home diklik
              },
            ),
            ListTile(
              leading: const CustomIcon(
                  iconName: 'icon_tour',
                  size: 24.0,
                  color: AppColors.blackColor),
              title: const Text(
                'Tour',
                style: TextStyles.textMenuDrawer,
              ),
              onTap: () {
                // Aksi saat menu Settings diklik
              },
            ),
            // Tambahkan menu ikon dan label lainnya di sini
            // Contoh:
            ListTile(
              leading: const CustomIcon(
                  iconName: 'icon_travel',
                  size: 24.0,
                  color: AppColors.blackColor),
              title: const Text(
                'Travel loan',
                style: TextStyles.textMenuDrawer,
              ),
              onTap: () {
                // Aksi saat menu Notifications diklik
              },
            ),
            const ListTile(
              title:
                  Text('App version 1.0.0', style: TextStyles.textHelloDrawer),
            )
          ],
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 24,
        backgroundColor: AppColors.primaryColor,
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.greyIconNavColor,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(bottom: 4.0),
              child: _selectedIndex == 0
                  ? const CustomIcon(
                      iconName: 'icon_home',
                      size: 24.0,
                      color: AppColors.whiteColor)
                  : const CustomIcon(
                      iconName: 'icon_home',
                      size: 24.0,
                      color: AppColors.greyIconNavColor),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(bottom: 4.0),
              child: _selectedIndex == 1
                  ? const CustomIcon(
                      iconName: 'icon_booking',
                      size: 24.0,
                      color: AppColors.whiteColor)
                  : const CustomIcon(
                      iconName: 'icon_booking',
                      size: 24.0,
                      color: AppColors.greyIconNavColor),
            ),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(bottom: 4.0),
              child: _selectedIndex == 0
                  ? const CustomIcon(
                      iconName: 'icon_promo',
                      size: 24.0,
                      color: AppColors.whiteColor)
                  : const CustomIcon(
                      iconName: 'icon_promo',
                      size: 24.0,
                      color: AppColors.greyIconNavColor),
            ),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(bottom: 4.0),
              child: _selectedIndex == 0
                  ? const CustomIcon(
                      iconName: 'icon_inbox',
                      size: 24.0,
                      color: AppColors.whiteColor)
                  : const CustomIcon(
                      iconName: 'icon_inbox',
                      size: 24.0,
                      color: AppColors.greyIconNavColor),
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(bottom: 4.0),
              child: _selectedIndex == 0
                  ? const CustomIcon(
                      iconName: 'icon_profile',
                      size: 24.0,
                      color: AppColors.whiteColor)
                  : const CustomIcon(
                      iconName: 'icon_profile',
                      size: 24.0,
                      color: AppColors.greyIconNavColor),
            ),
            label: 'Profile',
          )
        ],
        selectedLabelStyle: const TextStyle(
          color: AppColors.whiteColor,
          fontFamily: 'Inter',
          fontSize: 12,
          fontWeight: FontWeight.w300,
          height: 1.0,
          letterSpacing: 0.0,
        ),
        unselectedLabelStyle: const TextStyle(
          color: AppColors.greyIconNavColor,
          fontFamily: 'Inter',
          fontSize: 12,
          fontWeight: FontWeight.w300,
          height: 1.0,
          letterSpacing: 0.0,
        ),
        selectedIconTheme: const IconThemeData(
          color: AppColors.whiteColor, // Warna ikon yang aktif/dipilih
        ),
        unselectedIconTheme: const IconThemeData(
          color: AppColors
              .greyIconNavColor, // Warna ikon yang tidak aktif/tidak dipilih
        ),
      ),
    );
  }
}
