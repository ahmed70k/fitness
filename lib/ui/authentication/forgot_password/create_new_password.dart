import 'package:fitness2/ui/authentication/forgot_password/password_changed.dart';
import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/app_style.dart';
import '../../custom_widget/arrow_back/arrow_back.dart';
import '../../custom_widget/button_container/button_container.dart';
import '../../custom_widget/text_search/text_search.dart';

class CreateNewPassword extends StatelessWidget {
  CreateNewPassword({super.key});

  static const String routeName = "newPasswordScreen";
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmNewPassword = TextEditingController();

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
              AppLocalizations.of(context)!.create_new_password,
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
              hintText: AppLocalizations.of(context)!.new_password,
            ),
            SizedBox(height: height * 0.02),
            TextSearch(
              onChanged: () {},
              hintText: AppLocalizations.of(context)!.confirm_password,
            ),
            SizedBox(height: height * 0.02),
            ButtonContainer(
              onPressed: () {
                newPassword.text == confirmNewPassword.text
                    ? Navigator.pushNamed(context, PasswordChanged.routeName)
                    : showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("password does not match"),
                          );
                        },
                      );
              },
              text: "Confirm",
            ),
          ],
        ),
      ),
    );
  }
}
