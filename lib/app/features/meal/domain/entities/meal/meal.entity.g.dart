// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealDataImpl _$$MealDataImplFromJson(Map<String, dynamic> json) =>
    _$MealDataImpl(
      id: json['id'] as String?,
      mealType: json['mealType'] as String?,
      foodItems: json['foodItems'] as String?,
      carbsGrams: (json['carbsGrams'] as num?)?.toInt(),
      timestamp: json['timestamp'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$MealDataImplToJson(_$MealDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mealType': instance.mealType,
      'foodItems': instance.foodItems,
      'carbsGrams': instance.carbsGrams,
      'timestamp': instance.timestamp,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
