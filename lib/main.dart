import 'package:dyvolt/pages/boarding_pass_page.dart';
import 'package:dyvolt/pages/choose_seat_page.dart';
import 'package:dyvolt/pages/flight_details_page.dart';
import 'package:dyvolt/pages/my_bookings_page.dart';
import 'package:dyvolt/pages/search_result_page.dart';
import 'package:dyvolt/pages/splash_screen_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:flutter/material.dart';
import 'main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        // colorScheme: ColorScheme.light().copyWith(
        //   primary: AppColors.primaryColor, // Warna utama untuk DatePicker
        // onPrimary: AppColors.whiteColor,
        // datePickerTheme: DatePickerTheme(
        //   backgroundColor: Colors.white, // Warna latar belakang DatePicker
        //   headerColor: Colors.blue, // Warna header DatePicker
        //   headerTextStyle: TextStyle(color: Colors.white), // Warna teks header DatePicker
        //   titleTextStyle: TextStyle(color: Colors.blue), // Warna teks judul DatePicker
        //   itemStyle: TextStyle(color: Colors.black), // Warna teks item DatePicker
        // ... Tambahan pengaturan warna lainnya
        // ),
      ),
      home: BoardingPassPage(),
    );
  }
}
