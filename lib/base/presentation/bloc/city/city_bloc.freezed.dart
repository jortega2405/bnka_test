// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CityEvent {
  City get city => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City city) addFavorite,
    required TResult Function(City city) removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City city)? addFavorite,
    TResult? Function(City city)? removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City city)? addFavorite,
    TResult Function(City city)? removeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CityEventAddFavorite value) addFavorite,
    required TResult Function(_CityEventRemoveFavorite value) removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CityEventAddFavorite value)? addFavorite,
    TResult? Function(_CityEventRemoveFavorite value)? removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CityEventAddFavorite value)? addFavorite,
    TResult Function(_CityEventRemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityEventCopyWith<CityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityEventCopyWith<$Res> {
  factory $CityEventCopyWith(CityEvent value, $Res Function(CityEvent) then) =
      _$CityEventCopyWithImpl<$Res, CityEvent>;
  @useResult
  $Res call({City city});
}

/// @nodoc
class _$CityEventCopyWithImpl<$Res, $Val extends CityEvent>
    implements $CityEventCopyWith<$Res> {
  _$CityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityEventAddFavoriteImplCopyWith<$Res>
    implements $CityEventCopyWith<$Res> {
  factory _$$CityEventAddFavoriteImplCopyWith(_$CityEventAddFavoriteImpl value,
          $Res Function(_$CityEventAddFavoriteImpl) then) =
      __$$CityEventAddFavoriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({City city});
}

/// @nodoc
class __$$CityEventAddFavoriteImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$CityEventAddFavoriteImpl>
    implements _$$CityEventAddFavoriteImplCopyWith<$Res> {
  __$$CityEventAddFavoriteImplCopyWithImpl(_$CityEventAddFavoriteImpl _value,
      $Res Function(_$CityEventAddFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_$CityEventAddFavoriteImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }
}

/// @nodoc

class _$CityEventAddFavoriteImpl implements _CityEventAddFavorite {
  const _$CityEventAddFavoriteImpl({required this.city});

  @override
  final City city;

  @override
  String toString() {
    return 'CityEvent.addFavorite(city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityEventAddFavoriteImpl &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityEventAddFavoriteImplCopyWith<_$CityEventAddFavoriteImpl>
      get copyWith =>
          __$$CityEventAddFavoriteImplCopyWithImpl<_$CityEventAddFavoriteImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City city) addFavorite,
    required TResult Function(City city) removeFavorite,
  }) {
    return addFavorite(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City city)? addFavorite,
    TResult? Function(City city)? removeFavorite,
  }) {
    return addFavorite?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City city)? addFavorite,
    TResult Function(City city)? removeFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CityEventAddFavorite value) addFavorite,
    required TResult Function(_CityEventRemoveFavorite value) removeFavorite,
  }) {
    return addFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CityEventAddFavorite value)? addFavorite,
    TResult? Function(_CityEventRemoveFavorite value)? removeFavorite,
  }) {
    return addFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CityEventAddFavorite value)? addFavorite,
    TResult Function(_CityEventRemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(this);
    }
    return orElse();
  }
}

abstract class _CityEventAddFavorite implements CityEvent {
  const factory _CityEventAddFavorite({required final City city}) =
      _$CityEventAddFavoriteImpl;

  @override
  City get city;
  @override
  @JsonKey(ignore: true)
  _$$CityEventAddFavoriteImplCopyWith<_$CityEventAddFavoriteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityEventRemoveFavoriteImplCopyWith<$Res>
    implements $CityEventCopyWith<$Res> {
  factory _$$CityEventRemoveFavoriteImplCopyWith(
          _$CityEventRemoveFavoriteImpl value,
          $Res Function(_$CityEventRemoveFavoriteImpl) then) =
      __$$CityEventRemoveFavoriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({City city});
}

/// @nodoc
class __$$CityEventRemoveFavoriteImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$CityEventRemoveFavoriteImpl>
    implements _$$CityEventRemoveFavoriteImplCopyWith<$Res> {
  __$$CityEventRemoveFavoriteImplCopyWithImpl(
      _$CityEventRemoveFavoriteImpl _value,
      $Res Function(_$CityEventRemoveFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_$CityEventRemoveFavoriteImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }
}

/// @nodoc

class _$CityEventRemoveFavoriteImpl implements _CityEventRemoveFavorite {
  const _$CityEventRemoveFavoriteImpl({required this.city});

  @override
  final City city;

  @override
  String toString() {
    return 'CityEvent.removeFavorite(city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityEventRemoveFavoriteImpl &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityEventRemoveFavoriteImplCopyWith<_$CityEventRemoveFavoriteImpl>
      get copyWith => __$$CityEventRemoveFavoriteImplCopyWithImpl<
          _$CityEventRemoveFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City city) addFavorite,
    required TResult Function(City city) removeFavorite,
  }) {
    return removeFavorite(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City city)? addFavorite,
    TResult? Function(City city)? removeFavorite,
  }) {
    return removeFavorite?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City city)? addFavorite,
    TResult Function(City city)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CityEventAddFavorite value) addFavorite,
    required TResult Function(_CityEventRemoveFavorite value) removeFavorite,
  }) {
    return removeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CityEventAddFavorite value)? addFavorite,
    TResult? Function(_CityEventRemoveFavorite value)? removeFavorite,
  }) {
    return removeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CityEventAddFavorite value)? addFavorite,
    TResult Function(_CityEventRemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(this);
    }
    return orElse();
  }
}

abstract class _CityEventRemoveFavorite implements CityEvent {
  const factory _CityEventRemoveFavorite({required final City city}) =
      _$CityEventRemoveFavoriteImpl;

  @override
  City get city;
  @override
  @JsonKey(ignore: true)
  _$$CityEventRemoveFavoriteImplCopyWith<_$CityEventRemoveFavoriteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CityState {
  List<City> get favoriteCities => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityStateCopyWith<CityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityStateCopyWith<$Res> {
  factory $CityStateCopyWith(CityState value, $Res Function(CityState) then) =
      _$CityStateCopyWithImpl<$Res, CityState>;
  @useResult
  $Res call({List<City> favoriteCities, bool isLoading, String? errorMessage});
}

/// @nodoc
class _$CityStateCopyWithImpl<$Res, $Val extends CityState>
    implements $CityStateCopyWith<$Res> {
  _$CityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteCities = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      favoriteCities: null == favoriteCities
          ? _value.favoriteCities
          : favoriteCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityStateImplCopyWith<$Res>
    implements $CityStateCopyWith<$Res> {
  factory _$$CityStateImplCopyWith(
          _$CityStateImpl value, $Res Function(_$CityStateImpl) then) =
      __$$CityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<City> favoriteCities, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$CityStateImplCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$CityStateImpl>
    implements _$$CityStateImplCopyWith<$Res> {
  __$$CityStateImplCopyWithImpl(
      _$CityStateImpl _value, $Res Function(_$CityStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteCities = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$CityStateImpl(
      favoriteCities: null == favoriteCities
          ? _value._favoriteCities
          : favoriteCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CityStateImpl implements _CityState {
  const _$CityStateImpl(
      {required final List<City> favoriteCities,
      this.isLoading = false,
      this.errorMessage})
      : _favoriteCities = favoriteCities;

  final List<City> _favoriteCities;
  @override
  List<City> get favoriteCities {
    if (_favoriteCities is EqualUnmodifiableListView) return _favoriteCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteCities);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CityState(favoriteCities: $favoriteCities, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favoriteCities, _favoriteCities) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favoriteCities),
      isLoading,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityStateImplCopyWith<_$CityStateImpl> get copyWith =>
      __$$CityStateImplCopyWithImpl<_$CityStateImpl>(this, _$identity);
}

abstract class _CityState implements CityState {
  const factory _CityState(
      {required final List<City> favoriteCities,
      final bool isLoading,
      final String? errorMessage}) = _$CityStateImpl;

  @override
  List<City> get favoriteCities;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$CityStateImplCopyWith<_$CityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
