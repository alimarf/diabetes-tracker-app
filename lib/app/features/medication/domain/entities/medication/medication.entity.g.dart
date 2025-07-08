// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MedicationDataImpl _$$MedicationDataImplFromJson(Map<String, dynamic> json) =>
    _$MedicationDataImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      dosage: json['dosage'] as String,
      status: json['status'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      notes: json['notes'] as String?,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MedicationDataImplToJson(
        _$MedicationDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dosage': instance.dosage,
      'status': instance.status,
      'timestamp': instance.timestamp.toIso8601String(),
      'notes': instance.notes,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
