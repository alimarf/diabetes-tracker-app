// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'glucose_response.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GlucoseResponse _$GlucoseResponseFromJson(Map<String, dynamic> json) {
  return _GlucoseResponse.fromJson(json);
}

/// @nodoc
mixin _$GlucoseResponse {
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<GlucoseData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlucoseResponseCopyWith<GlucoseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlucoseResponseCopyWith<$Res> {
  factory $GlucoseResponseCopyWith(
          GlucoseResponse value, $Res Function(GlucoseResponse) then) =
      _$GlucoseResponseCopyWithImpl<$Res, GlucoseResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') int? statusCode,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<GlucoseData>? data});
}

/// @nodoc
class _$GlucoseResponseCopyWithImpl<$Res, $Val extends GlucoseResponse>
    implements $GlucoseResponseCopyWith<$Res> {
  _$GlucoseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GlucoseData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GlucoseResponseImplCopyWith<$Res>
    implements $GlucoseResponseCopyWith<$Res> {
  factory _$$GlucoseResponseImplCopyWith(_$GlucoseResponseImpl value,
          $Res Function(_$GlucoseResponseImpl) then) =
      __$$GlucoseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') int? statusCode,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<GlucoseData>? data});
}

/// @nodoc
class __$$GlucoseResponseImplCopyWithImpl<$Res>
    extends _$GlucoseResponseCopyWithImpl<$Res, _$GlucoseResponseImpl>
    implements _$$GlucoseResponseImplCopyWith<$Res> {
  __$$GlucoseResponseImplCopyWithImpl(
      _$GlucoseResponseImpl _value, $Res Function(_$GlucoseResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GlucoseResponseImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GlucoseData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GlucoseResponseImpl implements _GlucoseResponse {
  _$GlucoseResponseImpl(
      {@JsonKey(name: 'status_code') this.statusCode,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<GlucoseData>? data})
      : _data = data;

  factory _$GlucoseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlucoseResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<GlucoseData>? _data;
  @override
  @JsonKey(name: 'data')
  List<GlucoseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GlucoseResponse(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlucoseResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GlucoseResponseImplCopyWith<_$GlucoseResponseImpl> get copyWith =>
      __$$GlucoseResponseImplCopyWithImpl<_$GlucoseResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlucoseResponseImplToJson(
      this,
    );
  }
}

abstract class _GlucoseResponse implements GlucoseResponse {
  factory _GlucoseResponse(
          {@JsonKey(name: 'status_code') final int? statusCode,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<GlucoseData>? data}) =
      _$GlucoseResponseImpl;

  factory _GlucoseResponse.fromJson(Map<String, dynamic> json) =
      _$GlucoseResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<GlucoseData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GlucoseResponseImplCopyWith<_$GlucoseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
