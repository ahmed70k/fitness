import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {

//the default button will be the register button
  String? text;
  Color? buttonColor;
  TextStyle? textStyle;
  VoidCallback onPressed; //the function that will work when the button is clicked, no default function because it depends on every screen

  ButtonContainer({
    super.key,
    this.text,
    this.buttonColor,
    required this.onPressed,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      width: width*0.88,
      height: height*0.07,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColors.whiteColor, //the default for register button is white
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27.5),
          ),
        ),
        onPressed: onPressed,
        child: Text(text??AppLocalizations.of(context)!.register,style: textStyle??AppStyle.text15SemiBoldBlack,), //the default register text style
      ),
    );
  }
}
