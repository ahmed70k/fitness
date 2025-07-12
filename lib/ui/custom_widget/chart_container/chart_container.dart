import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class ChartContainer extends StatelessWidget {
  double height;
  ChartContainer({super.key,required this.height});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context)!.size.width;
    return Container(
      height: height,
      width: width*0.046,
      decoration: BoxDecoration(color: AppColors.mediumGrayColor,borderRadius: BorderRadius.only(topLeft: Radius.circular(3),topRight:Radius.circular(3) )),

    );
  }
}
