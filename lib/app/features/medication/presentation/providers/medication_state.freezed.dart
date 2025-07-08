// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MedicationState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<MedicationData> get medications => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MedicationStateCopyWith<MedicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationStateCopyWith<$Res> {
  factory $MedicationStateCopyWith(
          MedicationState value, $Res Function(MedicationState) then) =
      _$MedicationStateCopyWithImpl<$Res, MedicationState>;
  @useResult
  $Res call({bool isLoading, List<MedicationData> medications, String error});
}

/// @nodoc
class _$MedicationStateCopyWithImpl<$Res, $Val extends MedicationState>
    implements $MedicationStateCopyWith<$Res> {
  _$MedicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? medications = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      medications: null == medications
          ? _value.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<MedicationData>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationStateImplCopyWith<$Res>
    implements $MedicationStateCopyWith<$Res> {
  factory _$$MedicationStateImplCopyWith(_$MedicationStateImpl value,
          $Res Function(_$MedicationStateImpl) then) =
      __$$MedicationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<MedicationData> medications, String error});
}

/// @nodoc
class __$$MedicationStateImplCopyWithImpl<$Res>
    extends _$MedicationStateCopyWithImpl<$Res, _$MedicationStateImpl>
    implements _$$MedicationStateImplCopyWith<$Res> {
  __$$MedicationStateImplCopyWithImpl(
      _$MedicationStateImpl _value, $Res Function(_$MedicationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? medications = null,
    Object? error = null,
  }) {
    return _then(_$MedicationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      medications: null == medications
          ? _value._medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<MedicationData>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MedicationStateImpl implements _MedicationState {
  _$MedicationStateImpl(
      {this.isLoading = false,
      final List<MedicationData> medications = const [],
      this.error = ''})
      : _medications = medications;

  @override
  @JsonKey()
  final bool isLoading;
  final List<MedicationData> _medications;
  @override
  @JsonKey()
  List<MedicationData> get medications {
    if (_medications is EqualUnmodifiableListView) return _medications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medications);
  }

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'MedicationState(isLoading: $isLoading, medications: $medications, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._medications, _medications) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_medications), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationStateImplCopyWith<_$MedicationStateImpl> get copyWith =>
      __$$MedicationStateImplCopyWithImpl<_$MedicationStateImpl>(
          this, _$identity);
}

abstract class _MedicationState implements MedicationState {
  factory _MedicationState(
      {final bool isLoading,
      final List<MedicationData> medications,
      final String error}) = _$MedicationStateImpl;

  @override
  bool get isLoading;
  @override
  List<MedicationData> get medications;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$MedicationStateImplCopyWith<_$MedicationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
