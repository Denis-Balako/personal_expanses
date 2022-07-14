import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction.g.dart';

@JsonSerializable()
class Transaction {
  final String id;
  final String tittle;
  final double amount;
  final DateTime date;

  Transaction(
      {required this.id,
      required this.tittle,
      required this.amount,
      required this.date});

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}
