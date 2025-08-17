import 'package:fitness2/utils/app_assets.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/schedule_data/Schedule_data.dart';

class ListViewSchedule extends StatelessWidget {
  final DateTime? selectedDay;
  const ListViewSchedule({required this.selectedDay, super.key});

  @override
  Widget build(BuildContext context) {
    List<ScheduleData> tasks = [
      ScheduleData(
        dateTime: DateTime(2025, 11, 8),
        backgroundContainer: AppColors.pinkWhiteColor,
        title: "WarmUp",
        description: "Run 02 km",
      ),
      ScheduleData(
        dateTime: DateTime(2026, 3, 1),
        backgroundContainer: AppColors.lightYellowColor,
        title: "Pushups session",
        description: "25 rep, 3 sets with 20 sec rest",
      ),
    ];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.5,
      width: width * 0.8,
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 16, top: 16),
            child: Container(
              height: height * 0.2 / 1.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                color: AppColors.pinkColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(task.title, style: AppStyle.text16MediumPrimary),
                        SvgPicture.asset(AppAssets.run),
                      ],
                    ),
                    Column(
                      children: [Text(task.description), Text(task.title)],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
