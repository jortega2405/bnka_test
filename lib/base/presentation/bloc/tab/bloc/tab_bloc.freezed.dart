// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TabEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabEventChangeTab value) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabEventChangeTab value)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabEventChangeTab value)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabEventCopyWith<TabEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabEventCopyWith<$Res> {
  factory $TabEventCopyWith(TabEvent value, $Res Function(TabEvent) then) =
      _$TabEventCopyWithImpl<$Res, TabEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$TabEventCopyWithImpl<$Res, $Val extends TabEvent>
    implements $TabEventCopyWith<$Res> {
  _$TabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabEventChangeTabImplCopyWith<$Res>
    implements $TabEventCopyWith<$Res> {
  factory _$$TabEventChangeTabImplCopyWith(_$TabEventChangeTabImpl value,
          $Res Function(_$TabEventChangeTabImpl) then) =
      __$$TabEventChangeTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$TabEventChangeTabImplCopyWithImpl<$Res>
    extends _$TabEventCopyWithImpl<$Res, _$TabEventChangeTabImpl>
    implements _$$TabEventChangeTabImplCopyWith<$Res> {
  __$$TabEventChangeTabImplCopyWithImpl(_$TabEventChangeTabImpl _value,
      $Res Function(_$TabEventChangeTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$TabEventChangeTabImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TabEventChangeTabImpl implements _TabEventChangeTab {
  const _$TabEventChangeTabImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TabEvent.changeTab(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabEventChangeTabImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabEventChangeTabImplCopyWith<_$TabEventChangeTabImpl> get copyWith =>
      __$$TabEventChangeTabImplCopyWithImpl<_$TabEventChangeTabImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTab,
  }) {
    return changeTab(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTab,
  }) {
    return changeTab?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabEventChangeTab value) changeTab,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabEventChangeTab value)? changeTab,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabEventChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class _TabEventChangeTab implements TabEvent {
  const factory _TabEventChangeTab(final int index) = _$TabEventChangeTabImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$TabEventChangeTabImplCopyWith<_$TabEventChangeTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TabState {
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabStateCopyWith<TabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabStateCopyWith<$Res> {
  factory $TabStateCopyWith(TabState value, $Res Function(TabState) then) =
      _$TabStateCopyWithImpl<$Res, TabState>;
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class _$TabStateCopyWithImpl<$Res, $Val extends TabState>
    implements $TabStateCopyWith<$Res> {
  _$TabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabStateImplCopyWith<$Res>
    implements $TabStateCopyWith<$Res> {
  factory _$$TabStateImplCopyWith(
          _$TabStateImpl value, $Res Function(_$TabStateImpl) then) =
      __$$TabStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class __$$TabStateImplCopyWithImpl<$Res>
    extends _$TabStateCopyWithImpl<$Res, _$TabStateImpl>
    implements _$$TabStateImplCopyWith<$Res> {
  __$$TabStateImplCopyWithImpl(
      _$TabStateImpl _value, $Res Function(_$TabStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_$TabStateImpl(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TabStateImpl implements _TabState {
  const _$TabStateImpl({required this.currentIndex});

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'TabState(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabStateImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabStateImplCopyWith<_$TabStateImpl> get copyWith =>
      __$$TabStateImplCopyWithImpl<_$TabStateImpl>(this, _$identity);
}

abstract class _TabState implements TabState {
  const factory _TabState({required final int currentIndex}) = _$TabStateImpl;

  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$TabStateImplCopyWith<_$TabStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
