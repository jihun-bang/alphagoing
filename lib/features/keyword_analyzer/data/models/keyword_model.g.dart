// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyword_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeywordModelImpl _$$KeywordModelImplFromJson(Map<String, dynamic> json) =>
    _$KeywordModelImpl(
      keyword: json['keyword'] as String,
      averageSearchVolume: (json['average_search_volume'] as num).toInt(),
      pcSearchVolume: (json['pc_search_volume'] as num).toInt(),
      mobileSearchVolume: (json['mobile_search_volume'] as num).toInt(),
      pcSearchRate: (json['pc_search_rate'] as num).toDouble(),
      mobileSearchRate: (json['mobile_search_rate'] as num).toDouble(),
      pcClickCount: (json['pc_click_count'] as num).toInt(),
      mobileClickCount: (json['mobile_click_count'] as num).toInt(),
      pcClickRate: (json['pc_click_rate'] as num).toDouble(),
      mobileClickRate: (json['mobile_click_rate'] as num).toDouble(),
    );

Map<String, dynamic> _$$KeywordModelImplToJson(_$KeywordModelImpl instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'average_search_volume': instance.averageSearchVolume,
      'pc_search_volume': instance.pcSearchVolume,
      'mobile_search_volume': instance.mobileSearchVolume,
      'pc_search_rate': instance.pcSearchRate,
      'mobile_search_rate': instance.mobileSearchRate,
      'pc_click_count': instance.pcClickCount,
      'mobile_click_count': instance.mobileClickCount,
      'pc_click_rate': instance.pcClickRate,
      'mobile_click_rate': instance.mobileClickRate,
    };
