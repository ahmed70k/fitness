import 'dart:ui';

class  ScheduleData{
  DateTime dateTime;
  String title;
  String description;
  Color backgroundContainer;
  ScheduleData ({
   required this.dateTime,
   required this.backgroundContainer,
   required this.title,
   required this.description,});
}