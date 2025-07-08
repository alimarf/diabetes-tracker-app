// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_response.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealResponseImpl _$$MealResponseImplFromJson(Map<String, dynamic> json) =>
    _$MealResponseImpl(
      statusCode: (json['status_code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MealData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MealResponseImplToJson(_$MealResponseImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
