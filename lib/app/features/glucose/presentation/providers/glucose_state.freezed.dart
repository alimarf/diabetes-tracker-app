// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'glucose_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GlucoseState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<GlucoseData> get glucoseReadings => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlucoseStateCopyWith<GlucoseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlucoseStateCopyWith<$Res> {
  factory $GlucoseStateCopyWith(
          GlucoseState value, $Res Function(GlucoseState) then) =
      _$GlucoseStateCopyWithImpl<$Res, GlucoseState>;
  @useResult
  $Res call({bool isLoading, List<GlucoseData> glucoseReadings, String error});
}

/// @nodoc
class _$GlucoseStateCopyWithImpl<$Res, $Val extends GlucoseState>
    implements $GlucoseStateCopyWith<$Res> {
  _$GlucoseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? glucoseReadings = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      glucoseReadings: null == glucoseReadings
          ? _value.glucoseReadings
          : glucoseReadings // ignore: cast_nullable_to_non_nullable
              as List<GlucoseData>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GlucoseStateImplCopyWith<$Res>
    implements $GlucoseStateCopyWith<$Res> {
  factory _$$GlucoseStateImplCopyWith(
          _$GlucoseStateImpl value, $Res Function(_$GlucoseStateImpl) then) =
      __$$GlucoseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<GlucoseData> glucoseReadings, String error});
}

/// @nodoc
class __$$GlucoseStateImplCopyWithImpl<$Res>
    extends _$GlucoseStateCopyWithImpl<$Res, _$GlucoseStateImpl>
    implements _$$GlucoseStateImplCopyWith<$Res> {
  __$$GlucoseStateImplCopyWithImpl(
      _$GlucoseStateImpl _value, $Res Function(_$GlucoseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? glucoseReadings = null,
    Object? error = null,
  }) {
    return _then(_$GlucoseStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      glucoseReadings: null == glucoseReadings
          ? _value._glucoseReadings
          : glucoseReadings // ignore: cast_nullable_to_non_nullable
              as List<GlucoseData>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GlucoseStateImpl implements _GlucoseState {
  _$GlucoseStateImpl(
      {this.isLoading = false,
      final List<GlucoseData> glucoseReadings = const [],
      this.error = ''})
      : _glucoseReadings = glucoseReadings;

  @override
  @JsonKey()
  final bool isLoading;
  final List<GlucoseData> _glucoseReadings;
  @override
  @JsonKey()
  List<GlucoseData> get glucoseReadings {
    if (_glucoseReadings is EqualUnmodifiableListView) return _glucoseReadings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_glucoseReadings);
  }

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'GlucoseState(isLoading: $isLoading, glucoseReadings: $glucoseReadings, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlucoseStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._glucoseReadings, _glucoseReadings) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_glucoseReadings), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GlucoseStateImplCopyWith<_$GlucoseStateImpl> get copyWith =>
      __$$GlucoseStateImplCopyWithImpl<_$GlucoseStateImpl>(this, _$identity);
}

abstract class _GlucoseState implements GlucoseState {
  factory _GlucoseState(
      {final bool isLoading,
      final List<GlucoseData> glucoseReadings,
      final String error}) = _$GlucoseStateImpl;

  @override
  bool get isLoading;
  @override
  List<GlucoseData> get glucoseReadings;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$GlucoseStateImplCopyWith<_$GlucoseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
