import 'package:flutter/material.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';

class CardInvoice extends StatelessWidget {
  const CardInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 16),
      padding: const EdgeInsets.fromLTRB(0, 4, 16, 0),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(89, 27, 27, 0.05),
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      height: 67,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 11, 0, 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'No Invoice',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.text12px300Grey555,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.labelInfoColor,
                        ),
                        child: const Text(
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
                  const SizedBox(height: 6),
                  const Row(
                    children: [
                      Text(
                        'INV2032123',
                        style: TextStyles.textProductPrice,
                      ),
                      Spacer(),
                      Expanded(
                        child: Text(
                          '24 Desember 2023',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 8.0,
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                              letterSpacing: 0.005,
                              color: AppColors.bcColor),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // PopupMenuButton<String>(
          //   iconSize: 20,
          //   icon: CustomIcon(
          //     iconName: 'icon_more_list',
          //     size: 20,
          //     color: AppColors.primaryColor,
          //   ),
          //   itemBuilder: (BuildContext context) {
          //     return <PopupMenuEntry<String>>[
          //       PopupMenuItem<String>(
          //         value: 'menu1',
          //         child: Text('Menu 1'),
          //       ),
          //       PopupMenuItem<String>(
          //         value: 'menu2',
          //         child: Text('Menu 2'),
          //       ),
          //       PopupMenuItem<String>(
          //         value: 'menu3',
          //         child: Text('Menu 3'),
          //       ),
          //     ];
          //   },
          // ),
        ],
      ),
    );
  }
}
