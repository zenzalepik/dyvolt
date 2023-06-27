import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CollapseWhite extends StatelessWidget {
  // final String title;
  // final Color backgroundColor;
  // final TextStyle textStyle;
  // final IconData icon;
  // final Color iconColor;
  // final VoidCallback onPressed;

  //
  final String title;
  final Widget content;

  const CollapseWhite({
    Key? key,
    // required this.title,
    // required this.backgroundColor,
    // required this.textStyle,
    // required this.icon,
    // required this.iconColor,
    // required this.onPressed,
    //
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ExpandableNotifier(
        child: Column(
          children: <Widget>[
            Expandable(
              collapsed: ExpandableButton(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.whiteColor,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(89, 27, 27, 0.05),
                        offset: Offset(0, 5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Text(title, style: TextStyles.text14px600),
                      Flexible(
                        flex: 2,
                        child: Container(),
                      ),
                      Transform.rotate(
                        angle: 0,
                        child: const CustomIcon(
                            iconName: 'icon_drop_down',
                            size: 16,
                            color: AppColors.grey555Color),
                      )
                    ],
                  ),
                ),
              ),
              expanded: Column(
                children: [
                  ExpandableButton(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        ),
                        color: AppColors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(89, 27, 27, 0.05),
                            offset: Offset(0, 5),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Text(title, style: TextStyles.text14px600),
                          Flexible(
                            flex: 2,
                            child: Container(),
                          ),
                          Transform.rotate(
                            angle:
                                3.14159, // Sudut rotasi dalam radian (0.5 radian = 28.65 derajat)

                            child: const CustomIcon(
                                iconName: 'icon_drop_down',
                                size: 16,
                                color: AppColors.blackColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expandable(
                    collapsed: Container(),
                    expanded: Container(
                      // margin: EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(89, 27, 27, 0.05),
                              offset: Offset(0, 5),
                              blurRadius: 10,
                            ),
                          ]),
                      child: content,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
