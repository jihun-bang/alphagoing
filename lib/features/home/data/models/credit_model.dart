import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_model.freezed.dart';
part 'credit_model.g.dart';

@freezed
class CreditModel with _$CreditModel {
  const factory CreditModel({
    required String name,
    required int amount,
    required int price,
  }) = _CreditModel;

  factory CreditModel.fromJson(Map<String, dynamic> json) =>
      _$CreditModelFromJson(json);
}
