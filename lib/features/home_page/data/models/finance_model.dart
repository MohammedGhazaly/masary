import 'package:hive_flutter/hive_flutter.dart';

part 'finance_model.g.dart';

@HiveType(typeId: 1)
class FinanceModel {
  @HiveField(0)
  final String financeDetail;
  @HiveField(1)
  final double financeValue;
  @HiveField(2)
  final DateTime date;
  @HiveField(3)
  final FinanceType finance;
  FinanceModel(
      {required this.financeDetail,
      required this.financeValue,
      required this.date,
      required this.finance});
}

@HiveType(typeId: 2)
enum FinanceType {
  @HiveField(0)
  add,
  @HiveField(1)
  minus,
}
