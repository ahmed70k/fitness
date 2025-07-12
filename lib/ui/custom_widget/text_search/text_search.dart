import 'package:fitness2/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_style.dart';

class TextSearch extends StatelessWidget {
  final Widget? suffixIcon;
  final String? hintText;
  final Color? hintColor;
  final Color? borderPrimaryColor;
  final Color? textColor;
  final InputBorder? errorBorder;
  final Function onChanged;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;

  const TextSearch({
    this.hintStyle,
    super.key,
    required this.onChanged,
    this.textColor,
    this.hintText,
    this.borderPrimaryColor,
    this.suffixIcon,
    this.hintColor,
    this.errorBorder,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.07,
      child: TextFormField(
        style: TextStyle(color: AppColors.primaryColor),
        validator: validator,
        onChanged: (String newText) {
          onChanged(newText);
        },
        cursorColor: Colors.black,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.darkWhiteColor,
          hintText: hintText,
          hintStyle: hintStyle ?? AppStyle.text16MediumDarkGray,
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(
              color: borderPrimaryColor ?? AppColors.dimGrayColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(
              color: borderPrimaryColor ?? AppColors.dimGrayColor,
            ),
          ),
          errorBorder: errorBorder,
        ),
      ),
    );
  }
}
