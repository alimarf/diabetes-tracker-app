// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication_response.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MedicationResponse _$MedicationResponseFromJson(Map<String, dynamic> json) {
  return _MedicationResponse.fromJson(json);
}

/// @nodoc
mixin _$MedicationResponse {
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<MedicationData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicationResponseCopyWith<MedicationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationResponseCopyWith<$Res> {
  factory $MedicationResponseCopyWith(
          MedicationResponse value, $Res Function(MedicationResponse) then) =
      _$MedicationResponseCopyWithImpl<$Res, MedicationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') int statusCode,
      String message,
      List<MedicationData> data});
}

/// @nodoc
class _$MedicationResponseCopyWithImpl<$Res, $Val extends MedicationResponse>
    implements $MedicationResponseCopyWith<$Res> {
  _$MedicationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MedicationData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationResponseImplCopyWith<$Res>
    implements $MedicationResponseCopyWith<$Res> {
  factory _$$MedicationResponseImplCopyWith(_$MedicationResponseImpl value,
          $Res Function(_$MedicationResponseImpl) then) =
      __$$MedicationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') int statusCode,
      String message,
      List<MedicationData> data});
}

/// @nodoc
class __$$MedicationResponseImplCopyWithImpl<$Res>
    extends _$MedicationResponseCopyWithImpl<$Res, _$MedicationResponseImpl>
    implements _$$MedicationResponseImplCopyWith<$Res> {
  __$$MedicationResponseImplCopyWithImpl(_$MedicationResponseImpl _value,
      $Res Function(_$MedicationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$MedicationResponseImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MedicationData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationResponseImpl implements _MedicationResponse {
  const _$MedicationResponseImpl(
      {@JsonKey(name: 'status_code') required this.statusCode,
      required this.message,
      required final List<MedicationData> data})
      : _data = data;

  factory _$MedicationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String message;
  final List<MedicationData> _data;
  @override
  List<MedicationData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MedicationResponse(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationResponseImpl &&
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
  _$$MedicationResponseImplCopyWith<_$MedicationResponseImpl> get copyWith =>
      __$$MedicationResponseImplCopyWithImpl<_$MedicationResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationResponseImplToJson(
      this,
    );
  }
}

abstract class _MedicationResponse implements MedicationResponse {
  const factory _MedicationResponse(
      {@JsonKey(name: 'status_code') required final int statusCode,
      required final String message,
      required final List<MedicationData> data}) = _$MedicationResponseImpl;

  factory _MedicationResponse.fromJson(Map<String, dynamic> json) =
      _$MedicationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String get message;
  @override
  List<MedicationData> get data;
  @override
  @JsonKey(ignore: true)
  _$$MedicationResponseImplCopyWith<_$MedicationResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
