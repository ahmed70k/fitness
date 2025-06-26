import 'package:fitness2/ui/custom_widget/button_container/button_container.dart';
import 'package:fitness2/ui/screens/welcome_screen.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  static const routeName = "EntryScreen";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: AppColors.primaryColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/app_logo/logo.png"),
            SizedBox(height: height * 0.03),
            Text(
              AppLocalizations.of(context)!.start_your_fitness_journey,
              style: AppStyle.text33BoldWhite,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.06),
            ButtonContainer(
              text: AppLocalizations.of(context)!.login,
              onPressed: () {},
              textStyle: AppStyle.text15BoldWhite,
              buttonColor: AppColors.dimGrayColor,
            ),
            SizedBox(height: height * 0.02),
            ButtonContainer(
              onPressed: () {},
            ),
            SizedBox(height: height * 0.02),
            InkWell(
              onTap: () {},
              child: Text(
                AppLocalizations.of(context)!.continue_as_a_guest,
                style: AppStyle.text15BoldWhite.copyWith(
                  height: 2,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.whiteColor,
                  decorationThickness: 2,
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
