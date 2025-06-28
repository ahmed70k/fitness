import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_style.dart';
import '../../custom_widget/button_container/button_container.dart';
import '../../custom_widget/text_search/text_search.dart';
import '../../home_screens/home_screen.dart';
import '../forgot_password/forgot_password.dart';
import '../register/register_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextSearch(hintText: AppLocalizations.of(context)!.enter_your_email),
          SizedBox(height: height * 0.02),
          TextSearch(
            hintText: AppLocalizations.of(context)!.enter_your_password,
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 16),
              child: SvgPicture.asset(
                AppAssets.eyeClosed,
                color: AppColors.darkGrayColor,
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Container(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ForgotPassword.routeName);
              },
              child: Text(
                AppLocalizations.of(context)!.forgot_password,
                style: AppStyle.text15BoldWhite,
              ),
            ),
          ),
          SizedBox(height: height * 0.04),
          ButtonContainer(
            text: AppLocalizations.of(context)!.login,
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RegisterScreen.routeName);
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.dont_have_an_account_register_now,
                style: AppStyle.text11BoldWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
