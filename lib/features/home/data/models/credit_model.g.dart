// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreditModelImpl _$$CreditModelImplFromJson(Map<String, dynamic> json) =>
    _$CreditModelImpl(
      name: json['name'] as String,
      amount: (json['amount'] as num).toInt(),
      price: (json['price'] as num).toInt(),
    );

Map<String, dynamic> _$$CreditModelImplToJson(_$CreditModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'price': instance.price,
    };
