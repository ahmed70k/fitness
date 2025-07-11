import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_style.dart';

class SlideToStartButton extends StatefulWidget {
  final VoidCallback onSlideComplete;

  const SlideToStartButton({required this.onSlideComplete, super.key});

  @override
  State<SlideToStartButton> createState() => SlideToStartButtonState();
}

class SlideToStartButtonState extends State<SlideToStartButton> {
  double position = 0.0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(30),
          ),
          alignment: Alignment.center,
        ),
        Positioned(
          width: 350,
          left: position,
          child: GestureDetector(
            onHorizontalDragUpdate: (details) {
              setState(() {
                position += details.delta.dx;
                position = position.clamp(0.0, width - 60);
              });
            },
            onHorizontalDragEnd: (details) {
              if (position > width * 0.6) {
                widget.onSlideComplete();
              }
              setState(() {
                position = 0.0;
              });
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                ElevatedButton(
                onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(side: BorderSide.none),
            ),
            child: SvgPicture.asset(AppAssets.arrowForward),
          ),
          Text(AppLocalizations.of(context)!.lets_start,style: AppStyle.text17SemiBoldWhite,),
          Row(
            children: [
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0X40FFFFFF),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0X80FFFFFF),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0XFFFFFFFF),
              ),
            ],
          ),
          ],
        ),
    ),
        ),
      ],
    );
  }
}
