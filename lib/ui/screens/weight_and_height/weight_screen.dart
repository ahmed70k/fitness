import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/ui/custom_widget/list_view_custom/list_view_custom.dart';
import 'package:fitness2/ui/custom_widget/slid_widget/slid_widget.dart';
import 'package:fitness2/ui/screens/weight_and_height/height_screen.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';
import '../../custom_widget/unit_picker_widget/UnitPickerWidget.dart';

class WeightScreen extends StatefulWidget {
  static const String routeName = "WeightScreen";
  const WeightScreen({super.key});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  String firstUnit = "lb";
  String secondUnit = "kg";
  String unitType = "kg";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          children: [
            SizedBox(height: height * 0.2),
            Container(
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.what_is_your_weight,
                style: AppStyle.text24SemiBoldPrimary,
              ),
            ),
            SizedBox(height: height * 0.02),
            UnitPickerWidget(
              onChanged: onChanged,
              firstUnit: firstUnit,
              secondUnit: secondUnit,
              isSelected: isSelected,
            ),
            SizedBox(height: height * 0.05),
            ListViewCustom(
              unitType: unitType,
              backgroundColor: AppColors.lightYellowColor,
            ),
            Spacer(),
            SlidWidget(onPressedNavigator: onPressedNavigator),
            SizedBox(height: height * 0.1 / 1.5),
          ],
        ),
      ),
    );
  }

  String isSelected = "";
  void onChanged(String firstUnit) {
    isSelected = firstUnit;
    setState(() {});
  }

  onPressedNavigator() {
    Navigator.pushNamed(context, HeightScreen.routeName);
  }
}
