// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChannalModelAdapter extends TypeAdapter<ChannalModel> {
  @override
  final int typeId = 0;

  @override
  ChannalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChannalModel(
      name: fields[0] as String,
      imageUrl: fields[1] as String?,
      number: fields[2] as int,
      streamId: fields[3] as int,
      streamType: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ChannalModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.number)
      ..writeByte(3)
      ..write(obj.streamId)
      ..writeByte(4)
      ..write(obj.streamType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChannalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
