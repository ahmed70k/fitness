import 'package:fitness2/ui/authentication/register/register_screen.dart';
import 'package:fitness2/ui/custom_widget/button_container/button_container.dart';
import 'package:fitness2/ui/home_screens/home_screen.dart';
import 'package:fitness2/utils/app_assets.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import '../authentication/login/login_screen.dart';


class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  static const String routeName = "EntryScreen";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(AppAssets.logo),
                  SizedBox(height: height * 0.02),
                  Text(
                    AppLocalizations.of(context)!.start_your_fitness_journey,
                    style: AppStyle.text33BoldWhite,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.06),
                  ButtonContainer(
                    text: AppLocalizations.of(context)!.login,
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                    textStyle: AppStyle.text15BoldWhite,
                    buttonColor: AppColors.dimGrayColor,
                  ),
                  SizedBox(height: height * 0.02),
                  ButtonContainer(
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterScreen.routeName);
                    },
                  ),
                  SizedBox(height: height * 0.02),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
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
                  SizedBox(height: height * 0.06),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
