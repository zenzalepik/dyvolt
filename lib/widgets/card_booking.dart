import 'package:flutter/material.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';

class CardBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(89, 27, 27, 0.05),
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      height: 86,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 11, 0, 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MID DRIVE MOTO...',
                    style: TextStyles.textLabelDark,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '05/03/2023 - 10:00 PM',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.text12px300Grey555,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.labelInfoColor,
                        ),
                        child: Text(
                          'Process',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 10.0,
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                              letterSpacing: 0.005,
                              color: AppColors.primaryColor),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        '1.000 KM Checkup',
                        style: TextStyles.text8px400GreyBc,
                      ),
                      Spacer(),
                      Expanded(
                        child: Text(
                          'IDR 320.231',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.textProductPrice,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          PopupMenuButton<String>(
            iconSize: 20,
            icon: CustomIcon(
              iconName: 'icon_more_list',
              size: 20,
              color: AppColors.primaryColor,
            ),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'menu1',
                  child: Text('Menu 1'),
                ),
                PopupMenuItem<String>(
                  value: 'menu2',
                  child: Text('Menu 2'),
                ),
                PopupMenuItem<String>(
                  value: 'menu3',
                  child: Text('Menu 3'),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
