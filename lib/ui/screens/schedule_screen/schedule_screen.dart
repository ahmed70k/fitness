import 'package:fitness2/ui/screens/schedule_screen/list_view_schedule.dart';
import 'package:fitness2/ui/screens/schedule_screen/table_calendar_widget.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScheduleScreen extends StatefulWidget {
  static const String routeName = "ScheduleScreen";
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  DateTime? selectedDay = DateTime.now();
  DateTime? focusedDay;

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    Color isSelected = (selectedDay == today)
        ? AppColors.pinkColor
        : Colors.transparent;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Today is", style: AppStyle.text14RegularWhite),
                SizedBox(height: height * 0.01 / 3),
                Text(
                  DateFormat(
                    "dd,MMMM \nyyyy",
                  ).format(selectedDay ?? focusedDay!),
                  style: AppStyle.text36SemiBoldWhite,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          TableCalendarWidget(
            focusedDay: focusedDay,
            onDaySelected: (selected, focused) {
              focusedDay = focused;
              selectedDay = selected;
              setState(() {});
            },
          ),
          Expanded(
            child: Container(
              width: width,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Text(
                      "Your Schedule",
                      style: AppStyle.text20SemiBoldBlack,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: AppColors.strokeColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(32),
                              ),
                            ),
                            child: Icon(Icons.check, size: 18),
                          ),
                        ),
                        ListViewSchedule(selectedDay: selectedDay),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
