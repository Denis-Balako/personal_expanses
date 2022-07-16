import './transaction.dart';
// import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transactions_json.g.dart';

@JsonSerializable()
class Transactionsjson {
  final List<Transaction> user_transactions;

  Transactionsjson(this.user_transactions);

  factory Transactionsjson.fromJson(Map<String, dynamic> json) =>
      _$TransactionsjsonFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionsjsonToJson(this);
}
