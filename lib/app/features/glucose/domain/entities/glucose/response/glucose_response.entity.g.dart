// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glucose_response.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GlucoseResponseImpl _$$GlucoseResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GlucoseResponseImpl(
      statusCode: (json['status_code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GlucoseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GlucoseResponseImplToJson(
        _$GlucoseResponseImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
