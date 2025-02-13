import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agreement_model.freezed.dart';
part 'agreement_model.g.dart';

@freezed
class AgreementModel with _$AgreementModel {
  const factory AgreementModel({
    required int id,
    required String title,
    String? description,
    required String sort,
    required AgreementType requiredYn,
  }) = _AgreementModel;

  factory AgreementModel.fromJson(Map<String, dynamic> json) =>
      _$AgreementModelFromJson(json);
}

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum AgreementType { y, n }
