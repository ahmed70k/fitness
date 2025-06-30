import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/ui/authentication/login/login_screen.dart';
import 'package:fitness2/ui/custom_widget/button_container/button_container.dart';
import 'package:fitness2/ui/custom_widget/text_button/text_button.dart';
import 'package:fitness2/ui/custom_widget/text_search/text_search.dart';
import 'package:fitness2/utils/app_assets.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../custom_widget/arrow_back/arrow_back.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "RegisterScreen";
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.08),
            ArrowBack(),
            SizedBox(height: height * 0.04),
            Image.asset(AppAssets.logo),
            SizedBox(height: height * 0.02),
            Text(
              AppLocalizations.of(context)!.hello_register_to_get_started,
              style: AppStyle.text30BoldWhite,
            ),
            SizedBox(height: height * 0.02),
            TextSearch(
                onChanged: (){},
                hintText: AppLocalizations.of(context)!.username),
            SizedBox(height: height * 0.01),
            TextSearch(

                onChanged: (){},
                hintText: AppLocalizations.of(context)!.email),
            SizedBox(height: height * 0.01),
            TextSearch(

                onChanged: (){},
                hintText: AppLocalizations.of(context)!.password),
            SizedBox(height: height * 0.01),
            TextSearch(
              onChanged: (){},
              hintText: AppLocalizations.of(context)!.confirm_password,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 18),
                child: SvgPicture.asset(
                  AppAssets.eyeClosed,
                  color: AppColors.darkGrayColor,
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            ButtonContainer(onPressed: (){}),
            SizedBox(height: height * 0.07),
            TextButtonScreen(onPressed: (){
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
                text: AppLocalizations.of(context)!.already_have_account)
          ],
        ),
      ),
    );
  }
}
