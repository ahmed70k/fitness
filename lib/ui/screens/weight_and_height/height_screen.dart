import 'package:fitness2/ui/custom_widget/list_view_custom/list_view_custom.dart';
import 'package:fitness2/ui/screens/weight_and_height/step3.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/app_style.dart';
import '../../custom_widget/unit_picker_widget/UnitPickerWidget.dart';
import '../../custom_widget/slid_widget/slid_widget.dart';

class HeightScreen extends StatefulWidget {
  static const String routeName = "HeightScreen";
  const HeightScreen({super.key});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  String firstUnit = "inches";
  String secondUnit = "cm";
  String unitType = "cm";
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
                AppLocalizations.of(context)!.what_is_your_height,
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
              backgroundColor: AppColors.lightCyanColor,
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
  onChanged(String firstUnit) {
    isSelected = firstUnit;
    setState(() {});
  }

  onPressedNavigator() {
    Navigator.pushNamed(context, Step3.routeName);
  }
}
