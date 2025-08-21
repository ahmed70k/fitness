import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/ui/custom_widget/chart_container/chart_container.dart';
import 'package:fitness2/ui/custom_widget/slider_button/slider_button.dart';
import 'package:fitness2/ui/screens/weight_and_height/weight_screen.dart';
import 'package:fitness2/utils/app_assets.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 0.07 * width,
              vertical: 0.03 * height,
            ),
            child: Stack(
              alignment: Alignment.topRight,

              children: [
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        width: width * 0.7,
                        child: Text(
                          textAlign: TextAlign.left,
                          AppLocalizations.of(
                            context,
                          )!.start_your_fitness_journey,
                          style: AppStyle.text33BoldWhite,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.12),
                      child: Image.asset(AppAssets.blurCircleMedium),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Image.asset(AppAssets.blurCircleBig),
                        Image.asset(AppAssets.blurCircleSmall),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 654,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.girl),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 0.07 * width,
                vertical: 0.03 * height,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AppAssets.arrow),
                  SizedBox(height: height * 0.13),
                  Center(
                    child: Container(
                      height: height * 0.24,
                      width: width * 0.42,
                      decoration: BoxDecoration(
                        color: AppColors.darkWhiteColor,
                        borderRadius: BorderRadius.circular(37),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.04,
                          vertical: height * 0.02,
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: width * 0.14,
                                  height: height * 0.07,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      width * 0.07,
                                    ),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(AppAssets.moon),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.drink,
                                      style: AppStyle.text14RegularBlack,
                                    ),
                                    SizedBox(height: height * 0.005),
                                    Text(
                                      "150 ml",
                                      style: AppStyle.text16SemiBoldBlack,
                                    ),
                                    SizedBox(height: height * 0.019),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.07,
                              child: ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  if (index % 2 == 0) {
                                    //used the align widgets so the container takes the given length not the length of the sized box
                                    return Align(
                                      alignment: Alignment.bottomCenter,
                                      child: ChartContainer(
                                        height: height * 0.02,
                                      ),
                                    );
                                  } else {
                                    return Align(
                                      alignment: Alignment.bottomCenter,
                                      child: ChartContainer(
                                        height: height * 0.05,
                                      ),
                                    );
                                  }
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: width * 0.01);
                                },
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                 SlideToStartButton(onSlideComplete: (){
                   Navigator.pushNamed(context,WeightScreen.routeName);
                 })

                 /* SliderButton(
                    action: () async{
                      Navigator.pushNamed(context, Step1.routeName);
                    },
                    label: Center(
                      child: Text(
                        AppLocalizations.of(context)!.lets_start,
                        style: AppStyle.text17SemiBoldWhite,
                      ),
                    ),
                    backgroundColor: Color(0X6D000000),
                    width: double.infinity,
                    shimmer: false,
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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                          child: Row(
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
                        ),

                      ],
                    ),
                  ),*/

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
