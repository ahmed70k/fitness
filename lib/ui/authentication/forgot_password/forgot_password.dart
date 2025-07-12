import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/ui/authentication/forgot_password/OTP_screen.dart';
import 'package:fitness2/ui/authentication/login/login_screen.dart';
import 'package:fitness2/ui/custom_widget/arrow_back/arrow_back.dart';
import 'package:fitness2/ui/custom_widget/button_container/button_container.dart';
import 'package:fitness2/ui/custom_widget/text_button/text_button.dart';
import 'package:fitness2/ui/custom_widget/text_search/text_search.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  static const String routeName = "ForgotPassword";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
              AppLocalizations.of(context)!.forgot_password,
              style: AppStyle.text30BoldWhite,
            ),
            SizedBox(height: height * 0.02),
            Text(
              AppLocalizations.of(context)!.dont_worry_it_occurs,
              style: AppStyle.text13MediumWhite,
            ),
            SizedBox(height: height * 0.04),
            TextSearch(
              onChanged: () {},
              hintText: AppLocalizations.of(context)!.email,
            ),
            SizedBox(height: height * 0.05),
            ButtonContainer(
              onPressed: () {
                Navigator.pushNamed(context,OtpScreen.routeName);
              },
              text: AppLocalizations.of(context)!.send_code,
            ),
            Spacer(),
            TextButtonScreen(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              text: AppLocalizations.of(context)!.remember_password,
            ),
            SizedBox(height: height * 0.04),
          ],
        ),
      ),
    );
  }
}
