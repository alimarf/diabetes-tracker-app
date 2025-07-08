// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MealState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<MealData> get meals => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealStateCopyWith<MealState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealStateCopyWith<$Res> {
  factory $MealStateCopyWith(MealState value, $Res Function(MealState) then) =
      _$MealStateCopyWithImpl<$Res, MealState>;
  @useResult
  $Res call({bool isLoading, List<MealData> meals, String error});
}

/// @nodoc
class _$MealStateCopyWithImpl<$Res, $Val extends MealState>
    implements $MealStateCopyWith<$Res> {
  _$MealStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? meals = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      meals: null == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealData>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealStateImplCopyWith<$Res>
    implements $MealStateCopyWith<$Res> {
  factory _$$MealStateImplCopyWith(
          _$MealStateImpl value, $Res Function(_$MealStateImpl) then) =
      __$$MealStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<MealData> meals, String error});
}

/// @nodoc
class __$$MealStateImplCopyWithImpl<$Res>
    extends _$MealStateCopyWithImpl<$Res, _$MealStateImpl>
    implements _$$MealStateImplCopyWith<$Res> {
  __$$MealStateImplCopyWithImpl(
      _$MealStateImpl _value, $Res Function(_$MealStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? meals = null,
    Object? error = null,
  }) {
    return _then(_$MealStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealData>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MealStateImpl implements _MealState {
  _$MealStateImpl(
      {this.isLoading = false,
      final List<MealData> meals = const [],
      this.error = ''})
      : _meals = meals;

  @override
  @JsonKey()
  final bool isLoading;
  final List<MealData> _meals;
  @override
  @JsonKey()
  List<MealData> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'MealState(isLoading: $isLoading, meals: $meals, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._meals, _meals) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_meals), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealStateImplCopyWith<_$MealStateImpl> get copyWith =>
      __$$MealStateImplCopyWithImpl<_$MealStateImpl>(this, _$identity);
}

abstract class _MealState implements MealState {
  factory _MealState(
      {final bool isLoading,
      final List<MealData> meals,
      final String error}) = _$MealStateImpl;

  @override
  bool get isLoading;
  @override
  List<MealData> get meals;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$MealStateImplCopyWith<_$MealStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
