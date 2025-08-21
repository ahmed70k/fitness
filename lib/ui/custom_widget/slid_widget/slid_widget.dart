import 'package:fitness2/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_style.dart';

class SlidWidget extends StatelessWidget {
  VoidCallback onPressedNavigator;
  String? text;

  SlidWidget({super.key, required this.onPressedNavigator, this.text});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: width * 0.2,
            height: height * 0.2 / 2.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: AppColors.strokeColor),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: SvgPicture.asset(AppAssets.arrowBack),
            ),
          ),
        ),
        SizedBox(width: width * 0.06),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            height: height * 0.2 / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: AppColors.primaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: onPressedNavigator,
                  child: Text(
                    text != null
                        ? AppLocalizations.of(context)!.start_now
                        : AppLocalizations.of(context)!.next,
                    style: AppStyle.text24SemiBoldWhite,
                  ),
                ),
                SvgPicture.asset(AppAssets.arrowIcon),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
