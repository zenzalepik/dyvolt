import 'package:barcode_widget/barcode_widget.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:dyvolt/utils/icons.dart';
import 'package:dyvolt/utils/shadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;

  const TextInput({
    required this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.textInput,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        hintText: hintText,
        labelStyle: TextStyles.textLabelInput,
      ),
      onChanged: onChanged,
    );
  }
}

class IconTextInput extends StatelessWidget {
  final String label;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const IconTextInput({
    required this.label,
    required this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyles.textInput,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        labelText: label,
        hintText: hintText,
        labelStyle: TextStyles.textLabelInput,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const CustomIcon(
              iconName: 'icon_profile',
              size: 20.0,
              color: AppColors.blackColor),
        ),
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
      ),
      onChanged: onChanged,
    );
  }
}

class IconEmailInput extends StatelessWidget {
  final String label;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const IconEmailInput({
    required this.label,
    required this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyles.textInput,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        labelText: label,
        hintText: hintText,
        labelStyle: TextStyles.textLabelInput,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const CustomIcon(
              iconName: 'icon_inbox', size: 20.0, color: AppColors.blackColor),
        ),
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
      ),
      onChanged: onChanged,
    );
  }
}

class IconPhoneInput extends StatelessWidget {
  final String label;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const IconPhoneInput({
    required this.label,
    required this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyles.textInput,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        labelText: label,
        hintText: hintText,
        labelStyle: TextStyles.textLabelInput,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const CustomIcon(
              iconName: 'icon_phone', size: 20.0, color: AppColors.blackColor),
        ),
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
      ),
      onChanged: onChanged,
    );
  }
}

class IconNameInput extends StatelessWidget {
  final String label;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const IconNameInput({
    required this.label,
    required this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyles.textInput,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        labelText: label,
        hintText: hintText,
        labelStyle: TextStyles.textLabelInput,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const CustomIcon(
              iconName: 'icon_profile',
              size: 20.0,
              color: AppColors.blackColor),
        ),
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
      ),
      onChanged: onChanged,
    );
  }
}

class IconPassportInput extends StatelessWidget {
  final String label;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const IconPassportInput({
    required this.label,
    required this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyles.textInput,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        labelText: label,
        hintText: hintText,
        labelStyle: TextStyles.textLabelInput,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const CustomIcon(
              iconName: 'icon_passport',
              size: 20.0,
              color: AppColors.blackColor),
        ),
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
      ),
      onChanged: onChanged,
    );
  }
}

class IconAddressInput extends StatelessWidget {
  final String label;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const IconAddressInput({
    required this.label,
    required this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyles.textInput,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        labelText: label,
        hintText: hintText,
        labelStyle: TextStyles.textLabelInput,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const CustomIcon(
              iconName: 'icon_address',
              size: 20.0,
              color: AppColors.blackColor),
        ),
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
      ),
      onChanged: onChanged,
    );
  }
}

class IconNameCardInput extends StatelessWidget {
  final String label;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const IconNameCardInput({
    required this.label,
    required this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyles.textInput,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        labelText: label,
        hintText: hintText,
        labelStyle: TextStyles.textLabelInput,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const CustomIcon(
              iconName: 'icon_name_card',
              size: 20.0,
              color: AppColors.blackColor),
        ),
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
      ),
      onChanged: onChanged,
    );
  }
}

class PasswordInput extends StatefulWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;

  const PasswordInput({
    required this.hintText,
    this.onChanged,
  });

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.textInput,
      obscureText: _obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        hintText: widget.hintText,
        labelStyle: TextStyles.textLabelInput,
        suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
      onChanged: widget.onChanged,
    );
  }
}

class IconPasswordInput extends StatefulWidget {
  final String labelText;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const IconPasswordInput({
    required this.labelText,
    required this.hintText,
    this.onChanged,
  });

  @override
  _IconPasswordInputState createState() => _IconPasswordInputState();
}

class _IconPasswordInputState extends State<IconPasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.textInput,
      obscureText: _obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        labelText: widget.labelText,
        hintText: widget.hintText,
        labelStyle: TextStyles.textLabelInput,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomIcon(
              iconName: 'icon_password',
              size: 20.0,
              color: AppColors.blackColor),
        ),
        suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
      ),
      onChanged: widget.onChanged,
    );
  }
}

class TextArea extends StatelessWidget {
  final String hintText;
  final String label;
  final ValueChanged<String>? onChanged;

  const TextArea({
    required this.hintText,
    required this.label,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        height: 20.0 / 12.0,
        letterSpacing: 0.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        hintText: hintText,
        labelText: label,
        labelStyle: TextStyle(
          fontFamily: 'Inter',
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          height: 20.0 / 12.0,
          letterSpacing: 0.0,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onChanged: onChanged,
      maxLines: 3,
    );
  }
}

class DateInput extends StatefulWidget {
  final String label;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const DateInput({
    required this.label,
    required this.hintText,
    this.onChanged,
  });

  @override
  _DateInputState createState() => _DateInputState();
}

class _DateInputState extends State<DateInput> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      style: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        height: 20.0 / 12.0,
        letterSpacing: 0.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        labelText: widget.label,
        hintText: widget.hintText,
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
      ),
      onChanged: widget.onChanged,
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        ).then((selectedDate) {
          if (selectedDate != null) {
            setState(() {
              _textEditingController.text =
                  DateFormat.yMd().format(selectedDate);
            });
          }
        });
      },
    );
  }
}

class IconDateInput extends StatefulWidget {
  final String label;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const IconDateInput({
    required this.label,
    required this.hintText,
    this.onChanged,
  });

  @override
  _IconDateInputState createState() => _IconDateInputState();
}

class _IconDateInputState extends State<IconDateInput> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      style: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        height: 20.0 / 12.0,
        letterSpacing: 0.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        labelText: widget.label,
        hintText: widget.hintText,
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const CustomIcon(
            iconName: 'icon_dob',
            size: 20.0,
            color: Colors.black,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const CustomIcon(
            iconName: 'icon_date',
            size: 20.0,
            color: Colors.black,
          ),
        ),
      ),
      onChanged: widget.onChanged,
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        ).then((selectedDate) {
          if (selectedDate != null) {
            setState(() {
              _textEditingController.text =
                  DateFormat.yMd().format(selectedDate);
            });
          }
        });
      },
    );
  }
}

class IconDateSingleInput extends StatefulWidget {
  final String label;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const IconDateSingleInput({
    required this.label,
    required this.hintText,
    this.onChanged,
  });

  @override
  _IconDateSingleInputState createState() => _IconDateSingleInputState();
}

class _IconDateSingleInputState extends State<IconDateSingleInput> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      style: TextStyles.textInput,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        labelText: widget.label,
        hintText: widget.hintText,
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
      onChanged: widget.onChanged,
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        ).then((selectedDate) {
          if (selectedDate != null) {
            setState(() {
              _textEditingController.text =
                  DateFormat.yMd().format(selectedDate);
            });
          }
        });
      },
    );
  }
}

class IconTimeInput extends StatefulWidget {
  final String label;
  final ValueChanged<TimeOfDay>? onChanged;

  const IconTimeInput({
    required this.label,
    this.onChanged,
  });

  @override
  _IconTimeInputState createState() => _IconTimeInputState();
}

class _IconTimeInputState extends State<IconTimeInput> {
  late TimeOfDay _selectedTime;
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _selectedTime = TimeOfDay.now();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _textEditingController,
          readOnly: true,
          style: TextStyles.textInput,
          onTap: () async {
            final TimeOfDay? pickedTime = await showTimePicker(
              context: context,
              initialTime: _selectedTime,
            );
            if (pickedTime != null) {
              setState(() {
                _selectedTime = pickedTime;
                _textEditingController.text = _selectedTime.format(context);
              });
              widget.onChanged?.call(pickedTime);
            }
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
            border: OutlineInputBorder(),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelAlignment: FloatingLabelAlignment.start,
            labelText: widget.label,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const CustomIcon(
                iconName: 'icon_clock',
                size: 20.0,
                color: Colors.black,
              ),
            ),
            hintText: '09.30',
          ),
        ),
      ],
    );
  }
}

class IconDropdownInput extends StatefulWidget {
  final String label;
  final String hintText;
  final IconData leftIcon;
  final IconData rightIcon;
  final List<String> options;
  final ValueChanged<String>? onChanged;

  const IconDropdownInput({
    required this.label,
    required this.hintText,
    required this.leftIcon,
    required this.rightIcon,
    required this.options,
    this.onChanged,
  });

  @override
  _IconDropdownInputState createState() => _IconDropdownInputState();
}

class _IconDropdownInputState extends State<IconDropdownInput> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedOption,
      items: widget.options.map((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
      icon: null, // Menghilangkan ikon panah di tepi kanan dropdown
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        labelText: widget.label,
        hintText: widget.hintText,
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const CustomIcon(
            iconName: 'icon_globe',
            size: 20.0,
            color: Colors.black,
          ),
        ),
        // suffixIcon: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Icon(
        //     widget.rightIcon,
        //     size: 20.0,
        //     color: Colors.black,
        //   ),
        // ),
      ),
      onChanged: (String? value) {
        setState(() {
          selectedOption = value;
        });
        if (widget.onChanged != null) {
          widget.onChanged!(value!);
        }
      },
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const Button({
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.all(12.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        primary: AppColors.primaryColor,
        minimumSize: Size(double.infinity, 48.0),
      ),
      child: Container(
          height: 32,
          child: Center(child: Text(text, style: TextStyles.textButton))),
    );
  }
}

class ButtonWhite extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ButtonWhite({
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.all(12.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        primary: AppColors.whiteColor,
        minimumSize: Size(double.infinity, 48.0),
      ),
      child: Container(
          height: 32,
          child: Center(child: Text(text, style: TextStyles.textButtonWhite))),
    );
  }
}

class ButtonLarge extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ButtonLarge({
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        primary: AppColors.primaryColor,
        minimumSize: Size(double.infinity, 48.0),
      ),
      child: Container(
          height: 32,
          child: Center(child: Text(text, style: TextStyles.textButton))),
    );
  }
}

class ButtonWhiteLarge extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ButtonWhiteLarge({
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        primary: AppColors.whiteColor,
        minimumSize: Size(double.infinity, 48.0),
      ),
      child: Container(
          height: 32,
          child: Center(child: Text(text, style: TextStyles.textButtonWhite))),
    );
  }
}

class ButtonWhiteOutlineLarge extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ButtonWhiteOutlineLarge({
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(
            color: AppColors.blackColor,
            width: 1.0,
          ),
        ),
        primary: AppColors.whiteColor,
        minimumSize: Size(double.infinity, 48.0),
      ),
      child: Container(
        height: 32,
        child: Center(
          child: Text(
            text,
            style: TextStyles.textButtonWhiteOutline,
          ),
        ),
      ),
    );
  }
}

class TextLink16 extends StatelessWidget {
  final String text;
  final GestureTapCallback? onTap;

  const TextLink16({
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyles.textMenuDrawer,
      ),
    );
  }
}

class LabelCircle extends StatelessWidget {
  final Color circleColor;

  const LabelCircle({
    Key? key,
    this.circleColor = Colors.blue, // warna default
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: circleColor,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Container(
            height: 22, child: Text('Selected', style: TextStyles.textLabel))
      ],
    );
  }
}

class ButtonSeat extends StatelessWidget {
  final Color seatColor;
  final String seatNumber;

  const ButtonSeat({
    Key? key,
    this.seatColor = AppColors.seatWhite, // warna default
    this.seatNumber = '1A',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: seatColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Center(child: Text(seatNumber, style: TextStyles.textMenuDrawer)),
    );
  }
}

class CardTicket extends StatelessWidget {
  // final Color seatColor;
  // final String seatNumber;

  const CardTicket({
    Key? key,
    // this.seatColor = AppColors.seatWhite, // warna default
    // this.seatNumber = '1A',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [Shadows.boxShadow1],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 32,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.whiteColor,
                    border: Border.all(
                      color: AppColors.f6Color,
                      width: 1,
                    )),
                child: Image.asset(''),
              ),
              SizedBox(width: 8),
              SizedBox(
                child: Text(
                  'IN 230',
                  style: TextStyles.textLabelDark,
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.red,
                  // Isi konten di sini
                ),
              ),
              Text('01 hr 40min', style: TextStyles.textLabelSmall)
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 68,
                // color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Text(
                        '5.50',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.text16px600,
                      ),
                    ),
                    Text(
                      'DEL (Delhi) ',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.textLabelVerySmall,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.red,
                  // Isi konten di sini
                ),
              ),
              SizedBox(width: 8),
              SvgPicture.asset(
                'assets/images/img_plane_ticket.svg', // Ubah path dengan lokasi file SVG Anda
                // width:
                //     200, // Sesuaikan ukuran gambar sesuai kebutuhan Anda
                height: 36,
              ),
              SizedBox(width: 8),
              Flexible(
                child: Container(
                  color: Colors.red,
                  // Isi konten di sini
                ),
              ),
              Container(
                width: 68,
                // color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      child: Text(
                        '7.30',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.text16px600,
                      ),
                    ),
                    Text(
                      'CCU (Kolkata) ',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.textLabelVerySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Divider(
            color: AppColors.borderDrawerColor,
            height: 1,
            thickness: 1,
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Container(
                width: 16,
                height: 16,
                child: CustomIcon(
                    iconName: 'icon_chair', color: AppColors.grey555Color),
              ),
              SizedBox(width: 8),
              SizedBox(
                child: Text(
                  'Business Class',
                  style: TextStyles.textLabelVerySmall,
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.red,
                  // Isi konten di sini
                ),
              ),
              Text('From', style: TextStyles.textLabelSmall),
              SizedBox(width: 4),
              Text(
                '\$230',
                style: TextStyles.text16px600,
              ),
            ],
          ),
          SizedBox(height: 24),
          ButtonLarge(
              text: 'Check',
              onPressed: () {
                // Logika yang ingin Anda jalankan saat tombol ditekan
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(builder: (context) => MainPage()),
                // );
              }),
        ],
      ),
    );
  }
}


class BarcodeScreen extends StatelessWidget {
  final String barcodeData;

  const BarcodeScreen({required this.barcodeData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Example'),
      ),
      body: Center(
        child: Column(
          children: [
            // Tampilkan barcode dengan barcodeData
            BarcodeWidget(
              data: barcodeData,
              barcode: Barcode.code128(),
              color: Colors.black,
              width: 200,
              height: 100,
              style: TextStyle(),
              drawText: false,
            ),
            // Tampilkan data string di bawah barcode
            Text(barcodeData),
          ],
        ),
      ),
    );
  }
}
