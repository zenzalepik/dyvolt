import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/widgets/components/form_components.dart';
import 'package:flutter/material.dart';

void PopUp(BuildContext context, String title, String content) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
  
          borderRadius: BorderRadius.circular(16.0),
        ),
        title: Text(title,
            style: TextStyles.textTitleSection, textAlign: TextAlign.center),
        content: Container(
          width: 320,
          child: Text(content,
              style: TextStyles.textDetailProductDescription,
              textAlign: TextAlign.center),
        ),
        actions: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child: ButtonWhite(
                    text: 'Login',
                    onPressed: () {
                      // Aksi saat Tombol 1 ditekan
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child: ButtonLarge(
                    text: 'Register',
                    onPressed: () {
                      // Aksi saat Tombol 2 ditekan
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
