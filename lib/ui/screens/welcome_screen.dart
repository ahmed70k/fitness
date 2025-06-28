import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/ui/screens/entry_screen.dart';
import 'package:fitness2/utils/app_assets.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static const String routeName = "WelcomeScreen";
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppAssets.logo),
            SizedBox(height: height * 0.03),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, EntryScreen.routeName);
              },
              child: Text(
                AppLocalizations.of(context)!.start_your_fitness_journey,
                style: AppStyle.text33BoldWhite,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
