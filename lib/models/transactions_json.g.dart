// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transactionsjson _$TransactionsjsonFromJson(Map<String, dynamic> json) =>
    Transactionsjson(
      (json['user_transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TransactionsjsonToJson(Transactionsjson instance) =>
    <String, dynamic>{
      'user_transactions': instance.user_transactions,
    };
