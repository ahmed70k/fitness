import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/ui/authentication/login/login_screen.dart';
import 'package:fitness2/ui/custom_widget/button_container/button_container.dart';
import 'package:fitness2/utils/app_assets.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';


class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  static const routeName = "passwordChanged";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          spacing: height * 0.04,
          children: [
            Image.asset(AppAssets.successMark),
            Text(
              AppLocalizations.of(context)!.password_changed,
              style: AppStyle.text26BoldWhite,
            ),
            Text(
              textAlign: TextAlign.justify,
              AppLocalizations.of(
                context,
              )!.your_password_has_been_changed_successfully,
              style: AppStyle.text15RegularWhite,
            ),
            ButtonContainer(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              text: AppLocalizations.of(context)!.back_to_login,
            ),
          ],
        ),
      ),
    );
  }
}
