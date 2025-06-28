import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/ui/custom_widget/arrow_back/arrow_back.dart';
import 'package:fitness2/utils/app_assets.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "LoginScreen";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, toolbarHeight: 16),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ArrowBack(),
            SizedBox(height: height * 0.08),
            Image.asset(AppAssets.logo),
            SizedBox(height: height * 0.02),
            Text(
              AppLocalizations.of(context)!.welcome_back_glad_to_see_you_again,
              style: AppStyle.text30BoldWhite,
            ),
            SizedBox(height: height * 0.04),
            Expanded(child: LoginForm()),
            SizedBox(height: height * 0.02),
          ],
        ),
      ),
    );
  }
}
