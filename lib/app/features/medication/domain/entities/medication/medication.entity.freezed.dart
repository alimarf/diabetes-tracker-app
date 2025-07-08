// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MedicationData _$MedicationDataFromJson(Map<String, dynamic> json) {
  return _MedicationData.fromJson(json);
}

/// @nodoc
mixin _$MedicationData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get dosage => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicationDataCopyWith<MedicationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationDataCopyWith<$Res> {
  factory $MedicationDataCopyWith(
          MedicationData value, $Res Function(MedicationData) then) =
      _$MedicationDataCopyWithImpl<$Res, MedicationData>;
  @useResult
  $Res call(
      {String id,
      String name,
      String dosage,
      String status,
      DateTime timestamp,
      String? notes,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$MedicationDataCopyWithImpl<$Res, $Val extends MedicationData>
    implements $MedicationDataCopyWith<$Res> {
  _$MedicationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dosage = null,
    Object? status = null,
    Object? timestamp = null,
    Object? notes = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationDataImplCopyWith<$Res>
    implements $MedicationDataCopyWith<$Res> {
  factory _$$MedicationDataImplCopyWith(_$MedicationDataImpl value,
          $Res Function(_$MedicationDataImpl) then) =
      __$$MedicationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String dosage,
      String status,
      DateTime timestamp,
      String? notes,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$MedicationDataImplCopyWithImpl<$Res>
    extends _$MedicationDataCopyWithImpl<$Res, _$MedicationDataImpl>
    implements _$$MedicationDataImplCopyWith<$Res> {
  __$$MedicationDataImplCopyWithImpl(
      _$MedicationDataImpl _value, $Res Function(_$MedicationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dosage = null,
    Object? status = null,
    Object? timestamp = null,
    Object? notes = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MedicationDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationDataImpl implements _MedicationData {
  const _$MedicationDataImpl(
      {required this.id,
      required this.name,
      required this.dosage,
      required this.status,
      required this.timestamp,
      this.notes,
      required this.userId,
      required this.createdAt,
      required this.updatedAt});

  factory _$MedicationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationDataImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String dosage;
  @override
  final String status;
  @override
  final DateTime timestamp;
  @override
  final String? notes;
  @override
  final String userId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'MedicationData(id: $id, name: $name, dosage: $dosage, status: $status, timestamp: $timestamp, notes: $notes, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, dosage, status,
      timestamp, notes, userId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationDataImplCopyWith<_$MedicationDataImpl> get copyWith =>
      __$$MedicationDataImplCopyWithImpl<_$MedicationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationDataImplToJson(
      this,
    );
  }
}

abstract class _MedicationData implements MedicationData {
  const factory _MedicationData(
      {required final String id,
      required final String name,
      required final String dosage,
      required final String status,
      required final DateTime timestamp,
      final String? notes,
      required final String userId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$MedicationDataImpl;

  factory _MedicationData.fromJson(Map<String, dynamic> json) =
      _$MedicationDataImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get dosage;
  @override
  String get status;
  @override
  DateTime get timestamp;
  @override
  String? get notes;
  @override
  String get userId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$MedicationDataImplCopyWith<_$MedicationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
