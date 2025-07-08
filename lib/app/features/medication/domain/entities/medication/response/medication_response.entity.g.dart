// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_response.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MedicationResponseImpl _$$MedicationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MedicationResponseImpl(
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => MedicationData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MedicationResponseImplToJson(
        _$MedicationResponseImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
