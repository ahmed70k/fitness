import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_style.dart';

class TableCalendarWidget extends StatefulWidget {
  final Function(DateTime, DateTime)? onDaySelected;

  final DateTime? focusedDay;
  const TableCalendarWidget({
    required this.focusedDay,
    required this.onDaySelected,
    super.key,
  });

  @override
  State<TableCalendarWidget> createState() => _TableCalendarWidgetState();
}

class _TableCalendarWidgetState extends State<TableCalendarWidget> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 32, right: 32, bottom: 32),
          child: TableCalendar(
            firstDay: DateTime.now(),
            lastDay: DateTime.now().add(Duration(days: 365)),
            focusedDay: _focusedDay,
            headerStyle: HeaderStyle(
              formatButtonDecoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                border: Border.all(color: AppColors.strokeColor),
              ),
              formatButtonTextStyle: TextStyle(
                color: AppColors.strokeColor,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              leftChevronIcon: Icon(
                Icons.chevron_left,
                color: AppColors.strokeColor,
                size: 28,
              ),
              rightChevronIcon: Icon(
                Icons.chevron_right,
                color: AppColors.strokeColor,
                size: 28,
              ),
              titleCentered: true,
              titleTextStyle: TextStyle(
                fontSize: 16,
                color: AppColors.strokeColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
              setState(() {});

              //widget.onDaySelected!(selectedDay, focusedDay);
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
              setState(() {});
            },
            daysOfWeekHeight: 24,
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: AppColors.whiteColor,
              ),
              weekendStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: AppColors.whiteColor,
              ),
            ),
            calendarFormat: CalendarFormat.twoWeeks,
            calendarBuilders: CalendarBuilders(
              defaultBuilder: (context, day, focusedDay) {
                return SizedBox(
                  height: height * 0.1 / 2.2,
                  width: width * 0.1,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(65)),
                      border: Border.all(color: AppColors.strokeColor),
                    ),
                    child: Text(
                      "${day.day}",
                      style: AppStyle.text20MediumStrokeNumber,
                    ),
                  ),
                );
              },
              todayBuilder: (context, day, focusedDay) {
                return SizedBox(
                  height: height * 0.1 / 2.2,
                  width: width * 0.1,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(65)),
                      border: Border.all(color: AppColors.strokeColor),
                    ),
                    child: Text(
                      "${day.day}",
                      style: AppStyle.text20MediumStrokeNumber,
                    ),
                  ),
                );
              },
              selectedBuilder: (context, day, focusedDay) => SizedBox(
                height: height * 0.1 / 2.2,
                width: width * 0.1,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.pinkColor,
                    borderRadius: BorderRadius.all(Radius.circular(65)),
                  ),
                  child: Text("${day.day}", style: AppStyle.text20MediumBlack),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
