import 'package:hive/hive.dart';

part 'hive_plan.g.dart';

@HiveType(typeId: 0)
class HivePlanModel extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  @HiveField(2)
  String type;

  @HiveField(3)
  int colorHex;

  @HiveField(4)
  Map<String, TimeRange?> selectedDates;

  HivePlanModel({
    required this.title,
    required this.description,
    required this.type,
    required this.colorHex,
    required this.selectedDates,
  });
}

@HiveType(typeId: 1)
class TimeRange extends HiveObject {
  @HiveField(0)
  DateTime startTime;

  @HiveField(1)
  DateTime endTime;

  TimeRange({
    required this.startTime,
    required this.endTime,
  });
}
