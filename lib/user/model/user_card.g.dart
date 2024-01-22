// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_card.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserCardModelAdapter extends TypeAdapter<UserCardModel> {
  @override
  final int typeId = 1;

  @override
  UserCardModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserCardModel()
      ..cardID = fields[0] as String?
      ..cardName = fields[1] as String?
      ..cardImage = fields[2] as String?
      ..bankID = fields[3] as String?
      ..bankName = fields[4] as String?
      ..enable = fields[5] as bool?;
  }

  @override
  void write(BinaryWriter writer, UserCardModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.cardID)
      ..writeByte(1)
      ..write(obj.cardName)
      ..writeByte(2)
      ..write(obj.cardImage)
      ..writeByte(3)
      ..write(obj.bankID)
      ..writeByte(4)
      ..write(obj.bankName)
      ..writeByte(5)
      ..write(obj.enable);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserCardModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
