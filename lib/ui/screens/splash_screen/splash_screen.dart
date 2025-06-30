import 'dart:async';
import 'package:fitness2/ui/screens/entry_screen.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_style.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
  static const String routeName = "SplashScreen";
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Start timer to navigate after 5 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => EntryScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.logo),
            SizedBox(height: height * 0.03),
            Text(
              AppLocalizations.of(context)!.start_your_fitness_journey,
              style: AppStyle.text33BoldWhite,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
