// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnknownFailureImpl _$$UnknownFailureImplFromJson(Map<String, dynamic> json) =>
    _$UnknownFailureImpl(
      $enumDecodeNullable(_$ServerCodeEnumMap, json['code']) ??
          ServerCode.unknown,
      json['message'] as String? ?? 'Unknown error occurred.',
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnknownFailureImplToJson(
        _$UnknownFailureImpl instance) =>
    <String, dynamic>{
      'code': _$ServerCodeEnumMap[instance.code]!,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

const _$ServerCodeEnumMap = {
  ServerCode.internalServerError: 'internalServerError',
  ServerCode.unknown: 'unknown',
  ServerCode.timeout: 'timeout',
};

_$ServerFailureImpl _$$ServerFailureImplFromJson(Map<String, dynamic> json) =>
    _$ServerFailureImpl(
      code: $enumDecode(_$ServerCodeEnumMap, json['code']),
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerFailureImplToJson(_$ServerFailureImpl instance) =>
    <String, dynamic>{
      'code': _$ServerCodeEnumMap[instance.code]!,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$TimeoutFailureImpl _$$TimeoutFailureImplFromJson(Map<String, dynamic> json) =>
    _$TimeoutFailureImpl(
      code: $enumDecodeNullable(_$ServerCodeEnumMap, json['code']) ??
          ServerCode.timeout,
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TimeoutFailureImplToJson(
        _$TimeoutFailureImpl instance) =>
    <String, dynamic>{
      'code': _$ServerCodeEnumMap[instance.code]!,
      'message': instance.message,
      'runtimeType': instance.$type,
    };
