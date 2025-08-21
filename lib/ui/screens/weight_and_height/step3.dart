import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/ui/custom_widget/achievment_container/achievment_container.dart';
import 'package:fitness2/ui/custom_widget/slid_widget/slid_widget.dart';
import 'package:fitness2/ui/home_screens/home_screen.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';

class Step3 extends StatefulWidget {
  static const String routeName = "Step3";

  Step3({super.key});

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.07),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Container(
                  child: Column(
                    spacing: height * 0.02,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        AppLocalizations.of(
                          context,
                        )!.what_do_you_want_to_achieve,
                        style: AppStyle.text24SemiBoldPrimary,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        AppLocalizations.of(
                          context,
                        )!.what_you_are_going_to_select_will_effect_your_workout_program,
                        style: AppStyle.text16MediumDarkGray,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return AchievmentContainer(
                      index: index,
                      onTap: () {
                        onTap(index);
                      },
                      selectedIndex: selectedIndex,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: height * 0.03);
                  },
                  itemCount: 4,
                ),
              ),
              SlidWidget(
                text: "start now",
                onPressedNavigator: onPressedNavigator,
              ),
              SizedBox(height: height * 0.07),
            ],
          ),
        ),
      ),
    );
  }

  void onTap(index) {
    setState(() {});
    selectedIndex = index;
  }

  onPressedNavigator() {
    Navigator.pushNamed(context, HomeScreen.routeName);
  }
}
