import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/ui/authentication/forgot_password/create_new_password.dart';
import 'package:fitness2/ui/custom_widget/arrow_back/arrow_back.dart';
import 'package:fitness2/ui/custom_widget/button_container/button_container.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  static const String routeName = "OTPScreen";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.08),
            ArrowBack(),
            SizedBox(height: height * 0.06),
            Text(
              AppLocalizations.of(context)!.otp_verification,
              style: AppStyle.text30BoldWhite,
            ),
            SizedBox(height: height * 0.02),
            Text(
              AppLocalizations.of(context)!.enter_the_verification_code,
              style: AppStyle.text13RegularWhite,
            ),
            SizedBox(height: height * 0.04),
            SizedBox(
              height: height * 0.07,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: width * 0.18,
                      height: height * 0.07,
                      child: otpTextFormField(),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: width * 0.04);
                  },
                  itemCount: 4,
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            ButtonContainer(
              onPressed: () {
                Navigator.pushNamed(context, CreateNewPassword.routeName);
              },
              text: AppLocalizations.of(context)!.verify,
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Didn’t received code? ",
                        style: AppStyle.text15RegularWhite,
                      ),
                      TextSpan(text: "Resend", style: AppStyle.text15BoldWhite),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.04),
          ],
        ),
      ),
    );
  }

  otpTextFormField() {
    return TextFormField(
      onChanged: (value) {},
      style: AppStyle.text22BoldWhite,
      textAlign: TextAlign.center,
      maxLength: 1,

      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        counterText: '',
        filled: true,
        fillColor: AppColors.dimGrayColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.whiteColor, width: 2),
        ),
      ),
    );
  }
}
