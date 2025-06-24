import 'package:flutter/material.dart';
class TextSearch extends StatelessWidget {
 final Widget? suffixIcon;
  final String? hintText;
  final Color? hintColor;
  final Color? primaryColor;
 final Color? textColor;
  final InputBorder? errorBorder;
  final Function? onChanged ;


  const TextSearch({
    super.key,
      this.onChanged,
    this.textColor = Colors.red,//
    this.hintText,
    this.primaryColor,
    this.suffixIcon,
    this.hintColor,
    this.errorBorder,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:(String newText){
        onChanged!(newText);

      },
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: hintColor ?? Colors.red),//primary
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: primaryColor ?? Colors.red),//primary
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: primaryColor ?? Colors.red),//primary
        ),
        errorBorder: errorBorder,
      ),
    );
  }
}
