// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glucose.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GlucoseDataImpl _$$GlucoseDataImplFromJson(Map<String, dynamic> json) =>
    _$GlucoseDataImpl(
      id: json['id'] as String?,
      value: (json['value'] as num?)?.toInt(),
      timestamp: json['timestamp'] as String?,
      note: json['note'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$GlucoseDataImplToJson(_$GlucoseDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'timestamp': instance.timestamp,
      'note': instance.note,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
