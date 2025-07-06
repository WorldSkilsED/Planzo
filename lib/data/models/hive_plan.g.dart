// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_plan.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HivePlanModelAdapter extends TypeAdapter<HivePlanModel> {
  @override
  final int typeId = 0;

  @override
  HivePlanModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HivePlanModel(
      title: fields[0] as String,
      description: fields[1] as String,
      type: fields[2] as String,
      colorHex: fields[3] as int,
      selectedDates: (fields[4] as Map).cast<String, TimeRange?>(),
    );
  }

  @override
  void write(BinaryWriter writer, HivePlanModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.colorHex)
      ..writeByte(4)
      ..write(obj.selectedDates);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HivePlanModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TimeRangeAdapter extends TypeAdapter<TimeRange> {
  @override
  final int typeId = 1;

  @override
  TimeRange read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TimeRange(
      startTime: fields[0] as DateTime,
      endTime: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, TimeRange obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.startTime)
      ..writeByte(1)
      ..write(obj.endTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeRangeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
