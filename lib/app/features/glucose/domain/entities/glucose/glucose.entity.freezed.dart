// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'glucose.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GlucoseData _$GlucoseDataFromJson(Map<String, dynamic> json) {
  return _GlucoseData.fromJson(json);
}

/// @nodoc
mixin _$GlucoseData {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  int? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlucoseDataCopyWith<GlucoseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlucoseDataCopyWith<$Res> {
  factory $GlucoseDataCopyWith(
          GlucoseData value, $Res Function(GlucoseData) then) =
      _$GlucoseDataCopyWithImpl<$Res, GlucoseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'value') int? value,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class _$GlucoseDataCopyWithImpl<$Res, $Val extends GlucoseData>
    implements $GlucoseDataCopyWith<$Res> {
  _$GlucoseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? timestamp = freezed,
    Object? note = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GlucoseDataImplCopyWith<$Res>
    implements $GlucoseDataCopyWith<$Res> {
  factory _$$GlucoseDataImplCopyWith(
          _$GlucoseDataImpl value, $Res Function(_$GlucoseDataImpl) then) =
      __$$GlucoseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'value') int? value,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class __$$GlucoseDataImplCopyWithImpl<$Res>
    extends _$GlucoseDataCopyWithImpl<$Res, _$GlucoseDataImpl>
    implements _$$GlucoseDataImplCopyWith<$Res> {
  __$$GlucoseDataImplCopyWithImpl(
      _$GlucoseDataImpl _value, $Res Function(_$GlucoseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? timestamp = freezed,
    Object? note = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GlucoseDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GlucoseDataImpl implements _GlucoseData {
  _$GlucoseDataImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'value') this.value,
      @JsonKey(name: 'timestamp') this.timestamp,
      @JsonKey(name: 'note') this.note,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt});

  factory _$GlucoseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlucoseDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'value')
  final int? value;
  @override
  @JsonKey(name: 'timestamp')
  final String? timestamp;
  @override
  @JsonKey(name: 'note')
  final String? note;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'GlucoseData(id: $id, value: $value, timestamp: $timestamp, note: $note, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlucoseDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, value, timestamp, note, userId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GlucoseDataImplCopyWith<_$GlucoseDataImpl> get copyWith =>
      __$$GlucoseDataImplCopyWithImpl<_$GlucoseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlucoseDataImplToJson(
      this,
    );
  }
}

abstract class _GlucoseData implements GlucoseData {
  factory _GlucoseData(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'value') final int? value,
      @JsonKey(name: 'timestamp') final String? timestamp,
      @JsonKey(name: 'note') final String? note,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'updatedAt') final String? updatedAt}) = _$GlucoseDataImpl;

  factory _GlucoseData.fromJson(Map<String, dynamic> json) =
      _$GlucoseDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'value')
  int? get value;
  @override
  @JsonKey(name: 'timestamp')
  String? get timestamp;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$GlucoseDataImplCopyWith<_$GlucoseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
