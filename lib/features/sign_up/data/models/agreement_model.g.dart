// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agreement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgreementModelImpl _$$AgreementModelImplFromJson(Map<String, dynamic> json) =>
    _$AgreementModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String?,
      sort: json['sort'] as String,
      requiredYn: $enumDecode(_$AgreementTypeEnumMap, json['requiredYn']),
    );

Map<String, dynamic> _$$AgreementModelImplToJson(
        _$AgreementModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'sort': instance.sort,
      'requiredYn': _$AgreementTypeEnumMap[instance.requiredYn]!,
    };

const _$AgreementTypeEnumMap = {
  AgreementType.y: 'Y',
  AgreementType.n: 'N',
};
