import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_style.dart';

class UnitPickerWidget extends StatelessWidget {
  static const String routeName = "buildUnitBottom";
   String firstUnit;
   String secondUnit;
   String isSelected;
   Function(String) onChanged;
     UnitPickerWidget({
    super.key,
    required this.isSelected,
    required this.onChanged,
    required this.firstUnit,
    required this.secondUnit,
  });
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.6, // Full Screen
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        border: Border.all(color: AppColors.strokeColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  onChanged(firstUnit);
                },
                child: buildSelectableUnits(
                  text: firstUnit,
                  bottomColor: isSelected == firstUnit
                      ? AppColors.primaryColor
                      : Colors.transparent,
                ),
              ),
            ),
            SizedBox(width: width * 0.02),
            Expanded(
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  onChanged(secondUnit);
                },
                child: buildSelectableUnits(
                  text: secondUnit,
                  bottomColor: isSelected == secondUnit
                      ? AppColors.primaryColor
                      : Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSelectableUnits({required String text, required Color bottomColor}) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: bottomColor,
        borderRadius: BorderRadius.circular(44),
      ),
      alignment: Alignment.center,
      child: Text(text, style: AppStyle.text16MediumStrokeGray),
    );
  }
}