import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CollapseFAQ extends StatelessWidget {
  // final String title;
  // final Color backgroundColor;
  // final TextStyle textStyle;
  // final IconData icon;
  // final Color iconColor;
  // final VoidCallback onPressed;

  //
  final String question;
  final String answer;

  const CollapseFAQ({
    Key? key,
    // required this.title,
    // required this.backgroundColor,
    // required this.textStyle,
    // required this.icon,
    // required this.iconColor,
    // required this.onPressed,
    //
    required this.question,
    required this.answer,
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
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
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
                      Text(question, style: TextStyles.text14px600),
                      Flexible(
                        flex: 2,
                        child: Container(),
                      ),
                      CustomIcon(
                          iconName: 'icon_plus',
                          size: 16,
                          color: AppColors.grey555Color)
                    ],
                  ),
                ),
              ),
              expanded: Column(
                children: [
                  ExpandableButton(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.primaryColor,
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
                          Text(question, style: TextStyles.text14px600White),
                          Flexible(
                            flex: 2,
                            child: Container(),
                          ),
                          CustomIcon(
                              iconName: 'icon_plus',
                              size: 16,
                              color: AppColors.whiteColor)
                        ],
                      ),
                    ),
                  ),
                  Expandable(
                    collapsed: Container(),
                    expanded: Container(
                      margin: EdgeInsets.only(top: 8),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(89, 27, 27, 0.05),
                              offset: Offset(0, 5),
                              blurRadius: 10,
                            ),
                          ]),
                      child: Text(
                        answer,
                        style: TextStyles.textDetailProductDescription,
                      ),
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
