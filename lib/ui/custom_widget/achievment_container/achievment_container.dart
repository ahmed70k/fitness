import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/utils/app_assets.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';

class AchievmentContainer extends StatelessWidget {
  int index;
  VoidCallback onTap;
  int? selectedIndex;

  AchievmentContainer({
    super.key,
    required this.index,
    required this.onTap,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var applocalization = AppLocalizations.of(context)!;
    List<String> achievments = [
      applocalization.strength_training_for_muscle_gain,
      applocalization.high_intensity_interval_training,
      applocalization.cardiovascular_exercise,
      applocalization.functional_training_for_overall,
    ];
    return InkWell(
      onTap: onTap,
      child: selectedIndex == index
          ? Stack(
              alignment: Alignment.topRight,
              children: [
                achievmentContainer(height, achievments),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.check, color: AppColors.whiteColor),
                ),
              ],
            )
          : achievmentContainer(height, achievments),
    );
  }

  Widget achievmentContainer(height, achievments) {
    return Container(
      height: height * 0.085,
      width: double.infinity,
      child: Center(
        child: Text(achievments[index], style: AppStyle.text12SemiBoldBlack),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: BoxBorder.all(
          width: 3,
          color: selectedIndex == index
              ? AppColors.primaryColor
              : AppColors.strokeColor,
        ),
      ),
    );
  }
}
