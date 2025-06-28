import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: height * 0.055,
        width: width * 0.12,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.whiteColor),
        ),
        child: SvgPicture.asset(AppAssets.arrowBack,
        color: AppColors.whiteColor,),
      ),
    );
  }
}
