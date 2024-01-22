// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserRecordAdapter extends TypeAdapter<UserRecord> {
  @override
  final int typeId = 0;

  @override
  UserRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserRecord()
      ..channelName = fields[0] as String?
      ..channelID = fields[1] as String?
      ..selfFillChannel = fields[2] as String?
      ..recordTime = fields[3] as DateTime?
      ..cost = fields[4] as int?
      ..cardName = fields[5] as String?
      ..cardID = fields[6] as String?
      ..cardRewardID = fields[7] as String?
      ..cardRewardName = fields[8] as String?
      ..getPercentage = fields[9] as double?
      ..getReturn = fields[10] as double?
      ..memo = fields[11] as String?;
  }

  @override
  void write(BinaryWriter writer, UserRecord obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.channelName)
      ..writeByte(1)
      ..write(obj.channelID)
      ..writeByte(2)
      ..write(obj.selfFillChannel)
      ..writeByte(3)
      ..write(obj.recordTime)
      ..writeByte(4)
      ..write(obj.cost)
      ..writeByte(5)
      ..write(obj.cardName)
      ..writeByte(6)
      ..write(obj.cardID)
      ..writeByte(7)
      ..write(obj.cardRewardID)
      ..writeByte(8)
      ..write(obj.cardRewardName)
      ..writeByte(9)
      ..write(obj.getPercentage)
      ..writeByte(10)
      ..write(obj.getReturn)
      ..writeByte(11)
      ..write(obj.memo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
