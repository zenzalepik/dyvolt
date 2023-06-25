import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingDatePage extends StatefulWidget {
  @override
  _BookingDatePageState createState() => _BookingDatePageState();
}

class _BookingDatePageState extends State<BookingDatePage> {
  int? _selectedDayCurrentMonth;
  int? _selectedDayNextMonth;
  String _SelectedDate = DateFormat('d MMMM yyyy').format(DateTime.now());

  // _selectedDayCurrentMonth != null
  //                     ? 'Selected Date: ${DateFormat('d MMMM yyyy').format(DateTime(now.year, now.month, _selectedDayCurrentMonth!))}'
  //                     : _selectedDayNextMonth != null
  //                         ? 'Selected Date: ${DateFormat('d MMMM yyyy').format(DateTime(now.year, now.month + 1, _selectedDayNextMonth!))}'
  //                         : ''
// TextEditingController _textWhatDateController = TextEditingController();
  @override
  // void dispose() {
  //   _textWhatDateController.dispose();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    final DateFormat monthFormat = DateFormat('MMMM yyyy');
    final now = DateTime.now();
    final currentMonthName = monthFormat.format(DateTime(now.year, now.month));
    final nextMonthName = monthFormat.format(DateTime(now.year, now.month + 1));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Booking Date',
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
        child: Column(
          children: [
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: TextEditingController(
                      text: _SelectedDate,
                    ),
                    enabled: false,
                    style: TextStyle(
                        fontFamily: 'Inter', // Nama jenis huruf (font) Inter
                        fontSize: 14, // Ukuran teks 14px
                        fontWeight: FontWeight.w500, // Ketebalan teks 500
                        height: 1.5, // Tinggi baris 24px (24/14=1.71)
                        letterSpacing: 0,
                        color: AppColors.blackColor),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                      labelText: 'Booking Date',
                      hintStyle: TextStyle(
                        fontFamily: 'Inter', // Nama jenis huruf (font) Inter
                        fontSize: 14, // Ukuran teks 14px
                        fontWeight: FontWeight.w500, // Ketebalan teks 500
                        height: 1.5, // Tinggi baris 24px (24/14=1.71)
                        letterSpacing: 0,
                        color: AppColors.blackColor,
                      ),
                      hintText: _selectedDayCurrentMonth != null
                          ? '${DateFormat('d MMMM yyyy').format(DateTime(now.year, now.month, _selectedDayCurrentMonth!))}'
                          : _selectedDayNextMonth != null
                              ? '${DateFormat('d MMMM yyyy').format(DateTime(now.year, now.month + 1, _selectedDayNextMonth!))}'
                              : '',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const CustomIcon(
                          iconName: 'icon_date',
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      // suffixIcon: Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: const CustomIcon(
                      //     iconName: 'icon_date',
                      //     size: 20.0,
                      //     color: Colors.black,
                      //   ),
                      // ),
                    ),
                    onTap: () {},
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color(0xE6E8E7).withOpacity(0.5),
                    padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
                    child: Center(
                      child: Text('Mon',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xE6E8E7).withOpacity(0.5),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Center(
                      child: Text('Tue',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xE6E8E7).withOpacity(0.5),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Center(
                      child: Text('Wed',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xE6E8E7).withOpacity(0.5),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Center(
                      child: Text('Thu',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xE6E8E7).withOpacity(0.5),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Center(
                      child: Text('Fri',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xE6E8E7).withOpacity(0.5),
                    padding: EdgeInsets.fromLTRB(0, 8, 16, 8),
                    child: Center(
                      child: Text('Sun',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
                    child: Text(
                      currentMonthName,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: GridView.count(
                      crossAxisSpacing: 22,
                      mainAxisSpacing: 16,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 7,
                      children: _buildCalendarCells(
                          now.year, now.month, _selectedDayCurrentMonth, false),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),
            Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
                  child: Text(
                    nextMonthName,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ]),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: GridView.count(
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 22,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 7,
                      children: _buildCalendarCells(
                          now.year, now.month + 1, _selectedDayNextMonth, true),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: AppColors.whiteColor, boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(89, 27, 27, 0.05),
            offset: Offset(0, -8),
            blurRadius: 24,
          ),
        ]),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: ElevatedButton(
            onPressed: () {
              // Aksi yang akan dilakukan saat tombol ditekan
              // print('Tombol ditekan!');
            },
            child: Container(
                height: 32,
                child: Center(
                    child: Text('Select',
                        style: TextStyle(
                          fontFamily: 'Inter', // Nama jenis huruf (font) Inter
                          fontSize: 18, // Ukuran teks 18px
                          fontWeight: FontWeight.w500, // Ketebalan teks 500
                          height: 1.33, // Tinggi baris 24px (24/18=1.33)
                          letterSpacing: 0,
                        )))),
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0),
              maximumSize:
                  MaterialStateProperty.all<Size>(Size(double.infinity, 64)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                  EdgeInsets.all(16)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.primaryColor),
            )),
      ),
    );
  }

  List<Widget> _buildCalendarCells(
      int year, int month, int? selectedDay, bool isNextMonth) {
    final List<Widget> cells = [];
    final daysInMonth = DateTime(year, month + 1, 0).day;
    final firstDayOfMonth = DateTime(year, month, 1);

    // Add weekday headers
    // final DateFormat dayFormat = DateFormat('E');
    // for (int i = 0; i < 7; i++) {
    //   final weekday = (i + DateTime.monday) % 7;
    //   final weekdayName = dayFormat.format(DateTime(2023, 1, weekday));
    //   cells.add(
    //     Center(
    //       child: Text(
    //         weekdayName,
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //     ),
    //   );
    // }

    // Add empty cells for days before the first day of the month
    for (int i = 0; i < firstDayOfMonth.weekday - DateTime.monday; i++) {
      cells.add(
        ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(0),
            // backgroundColor: Colors.green,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  // color: Colors.orange,
                  width: 40,
                  child: Text(
                    '-',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.17,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Add cells for each day of the month
    for (int day = 1; day <= daysInMonth; day++) {
      cells.add(
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (isNextMonth) {
                      _selectedDayNextMonth = day;
                      _selectedDayCurrentMonth =
                          null; // Reset selected day in current month
                      _SelectedDate = _selectedDayCurrentMonth != null
                          ? 'Selected Date: ${DateFormat('d MMMM yyyy').format(DateTime(DateTime.now().year, DateTime.now().month, _selectedDayCurrentMonth!))}'
                          : '';
                    } else {
                      _selectedDayCurrentMonth = day;
                      _selectedDayNextMonth =
                          null; // Reset selected day in next month
                      _SelectedDate = _selectedDayNextMonth != null
                          ? 'Selected Date: ${DateFormat('d MMMM yyyy').format(DateTime(DateTime.now().year, DateTime.now().month, _selectedDayNextMonth!))}'
                          : '';
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0),
                  elevation: 0,
                  backgroundColor: selectedDay == day
                      ? AppColors.primaryColor
                      : Color(0xFFECF3FD).withOpacity(0.5),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          day.toString(),
                          style: TextStyle(
                            color: selectedDay == day
                                ? AppColors.whiteColor
                                : AppColors.blackColor,
                            fontFamily: 'Inter',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Add empty cells for days after the last day of the month
    final lastDayOfMonth = DateTime(year, month + 1, 0);
    for (int i = lastDayOfMonth.weekday; i < 7; i++) {
      cells.add(
        ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(0),
          ),
          child: Text(
            '-',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return cells;
  }
}
