// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FinanceModelAdapter extends TypeAdapter<FinanceModel> {
  @override
  final int typeId = 1;

  @override
  FinanceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FinanceModel(
      financeDetail: fields[0] as String,
      financeValue: fields[1] as double,
      date: fields[2] as DateTime,
      finance: fields[3] as FinanceType,
    );
  }

  @override
  void write(BinaryWriter writer, FinanceModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.financeDetail)
      ..writeByte(1)
      ..write(obj.financeValue)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.finance);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FinanceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FinanceTypeAdapter extends TypeAdapter<FinanceType> {
  @override
  final int typeId = 2;

  @override
  FinanceType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return FinanceType.add;
      case 1:
        return FinanceType.minus;
      default:
        return FinanceType.add;
    }
  }

  @override
  void write(BinaryWriter writer, FinanceType obj) {
    switch (obj) {
      case FinanceType.add:
        writer.writeByte(0);
        break;
      case FinanceType.minus:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FinanceTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
