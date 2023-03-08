// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_navigator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainNavigatorScreenState {
  MainNavigatorState get currentState => throw _privateConstructorUsedError;
  MainNavigatorState? get previousState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainNavigatorScreenStateCopyWith<MainNavigatorScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNavigatorScreenStateCopyWith<$Res> {
  factory $MainNavigatorScreenStateCopyWith(MainNavigatorScreenState value,
          $Res Function(MainNavigatorScreenState) then) =
      _$MainNavigatorScreenStateCopyWithImpl<$Res, MainNavigatorScreenState>;
  @useResult
  $Res call(
      {MainNavigatorState currentState, MainNavigatorState? previousState});

  $MainNavigatorStateCopyWith<$Res> get currentState;
  $MainNavigatorStateCopyWith<$Res>? get previousState;
}

/// @nodoc
class _$MainNavigatorScreenStateCopyWithImpl<$Res,
        $Val extends MainNavigatorScreenState>
    implements $MainNavigatorScreenStateCopyWith<$Res> {
  _$MainNavigatorScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentState = null,
    Object? previousState = freezed,
  }) {
    return _then(_value.copyWith(
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as MainNavigatorState,
      previousState: freezed == previousState
          ? _value.previousState
          : previousState // ignore: cast_nullable_to_non_nullable
              as MainNavigatorState?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainNavigatorStateCopyWith<$Res> get currentState {
    return $MainNavigatorStateCopyWith<$Res>(_value.currentState, (value) {
      return _then(_value.copyWith(currentState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MainNavigatorStateCopyWith<$Res>? get previousState {
    if (_value.previousState == null) {
      return null;
    }

    return $MainNavigatorStateCopyWith<$Res>(_value.previousState!, (value) {
      return _then(_value.copyWith(previousState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MainNavigatorScreenStateCopyWith<$Res>
    implements $MainNavigatorScreenStateCopyWith<$Res> {
  factory _$$_MainNavigatorScreenStateCopyWith(
          _$_MainNavigatorScreenState value,
          $Res Function(_$_MainNavigatorScreenState) then) =
      __$$_MainNavigatorScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MainNavigatorState currentState, MainNavigatorState? previousState});

  @override
  $MainNavigatorStateCopyWith<$Res> get currentState;
  @override
  $MainNavigatorStateCopyWith<$Res>? get previousState;
}

/// @nodoc
class __$$_MainNavigatorScreenStateCopyWithImpl<$Res>
    extends _$MainNavigatorScreenStateCopyWithImpl<$Res,
        _$_MainNavigatorScreenState>
    implements _$$_MainNavigatorScreenStateCopyWith<$Res> {
  __$$_MainNavigatorScreenStateCopyWithImpl(_$_MainNavigatorScreenState _value,
      $Res Function(_$_MainNavigatorScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentState = null,
    Object? previousState = freezed,
  }) {
    return _then(_$_MainNavigatorScreenState(
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as MainNavigatorState,
      previousState: freezed == previousState
          ? _value.previousState
          : previousState // ignore: cast_nullable_to_non_nullable
              as MainNavigatorState?,
    ));
  }
}

/// @nodoc

class _$_MainNavigatorScreenState implements _MainNavigatorScreenState {
  const _$_MainNavigatorScreenState(
      {required this.currentState, this.previousState = null});

  @override
  final MainNavigatorState currentState;
  @override
  @JsonKey()
  final MainNavigatorState? previousState;

  @override
  String toString() {
    return 'MainNavigatorScreenState(currentState: $currentState, previousState: $previousState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainNavigatorScreenState &&
            (identical(other.currentState, currentState) ||
                other.currentState == currentState) &&
            (identical(other.previousState, previousState) ||
                other.previousState == previousState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentState, previousState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainNavigatorScreenStateCopyWith<_$_MainNavigatorScreenState>
      get copyWith => __$$_MainNavigatorScreenStateCopyWithImpl<
          _$_MainNavigatorScreenState>(this, _$identity);
}

abstract class _MainNavigatorScreenState implements MainNavigatorScreenState {
  const factory _MainNavigatorScreenState(
      {required final MainNavigatorState currentState,
      final MainNavigatorState? previousState}) = _$_MainNavigatorScreenState;

  @override
  MainNavigatorState get currentState;
  @override
  MainNavigatorState? get previousState;
  @override
  @JsonKey(ignore: true)
  _$$_MainNavigatorScreenStateCopyWith<_$_MainNavigatorScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainNavigatorState {
  MainNavigatorFirstRoute get firstRoute => throw _privateConstructorUsedError;
  List<MainNavigatorRoute> get routes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainNavigatorStateCopyWith<MainNavigatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNavigatorStateCopyWith<$Res> {
  factory $MainNavigatorStateCopyWith(
          MainNavigatorState value, $Res Function(MainNavigatorState) then) =
      _$MainNavigatorStateCopyWithImpl<$Res, MainNavigatorState>;
  @useResult
  $Res call(
      {MainNavigatorFirstRoute firstRoute, List<MainNavigatorRoute> routes});

  $MainNavigatorFirstRouteCopyWith<$Res> get firstRoute;
}

/// @nodoc
class _$MainNavigatorStateCopyWithImpl<$Res, $Val extends MainNavigatorState>
    implements $MainNavigatorStateCopyWith<$Res> {
  _$MainNavigatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstRoute = null,
    Object? routes = null,
  }) {
    return _then(_value.copyWith(
      firstRoute: null == firstRoute
          ? _value.firstRoute
          : firstRoute // ignore: cast_nullable_to_non_nullable
              as MainNavigatorFirstRoute,
      routes: null == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<MainNavigatorRoute>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainNavigatorFirstRouteCopyWith<$Res> get firstRoute {
    return $MainNavigatorFirstRouteCopyWith<$Res>(_value.firstRoute, (value) {
      return _then(_value.copyWith(firstRoute: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MainNavigatorStateCopyWith<$Res>
    implements $MainNavigatorStateCopyWith<$Res> {
  factory _$$_MainNavigatorStateCopyWith(_$_MainNavigatorState value,
          $Res Function(_$_MainNavigatorState) then) =
      __$$_MainNavigatorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MainNavigatorFirstRoute firstRoute, List<MainNavigatorRoute> routes});

  @override
  $MainNavigatorFirstRouteCopyWith<$Res> get firstRoute;
}

/// @nodoc
class __$$_MainNavigatorStateCopyWithImpl<$Res>
    extends _$MainNavigatorStateCopyWithImpl<$Res, _$_MainNavigatorState>
    implements _$$_MainNavigatorStateCopyWith<$Res> {
  __$$_MainNavigatorStateCopyWithImpl(
      _$_MainNavigatorState _value, $Res Function(_$_MainNavigatorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstRoute = null,
    Object? routes = null,
  }) {
    return _then(_$_MainNavigatorState(
      firstRoute: null == firstRoute
          ? _value.firstRoute
          : firstRoute // ignore: cast_nullable_to_non_nullable
              as MainNavigatorFirstRoute,
      routes: null == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<MainNavigatorRoute>,
    ));
  }
}

/// @nodoc

class _$_MainNavigatorState extends _MainNavigatorState {
  const _$_MainNavigatorState(
      {required this.firstRoute,
      final List<MainNavigatorRoute> routes = const <MainNavigatorRoute>[]})
      : _routes = routes,
        super._();

  @override
  final MainNavigatorFirstRoute firstRoute;
  final List<MainNavigatorRoute> _routes;
  @override
  @JsonKey()
  List<MainNavigatorRoute> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  @override
  String toString() {
    return 'MainNavigatorState(firstRoute: $firstRoute, routes: $routes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainNavigatorState &&
            (identical(other.firstRoute, firstRoute) ||
                other.firstRoute == firstRoute) &&
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, firstRoute, const DeepCollectionEquality().hash(_routes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainNavigatorStateCopyWith<_$_MainNavigatorState> get copyWith =>
      __$$_MainNavigatorStateCopyWithImpl<_$_MainNavigatorState>(
          this, _$identity);
}

abstract class _MainNavigatorState extends MainNavigatorState {
  const factory _MainNavigatorState(
      {required final MainNavigatorFirstRoute firstRoute,
      final List<MainNavigatorRoute> routes}) = _$_MainNavigatorState;
  const _MainNavigatorState._() : super._();

  @override
  MainNavigatorFirstRoute get firstRoute;
  @override
  List<MainNavigatorRoute> get routes;
  @override
  @JsonKey(ignore: true)
  _$$_MainNavigatorStateCopyWith<_$_MainNavigatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainNavigatorRoute {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registrationRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registrationRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registrationRoute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainNavigatorRegistrationRoute value)
        registrationRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainNavigatorRegistrationRoute value)? registrationRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainNavigatorRegistrationRoute value)? registrationRoute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNavigatorRouteCopyWith<$Res> {
  factory $MainNavigatorRouteCopyWith(
          MainNavigatorRoute value, $Res Function(MainNavigatorRoute) then) =
      _$MainNavigatorRouteCopyWithImpl<$Res, MainNavigatorRoute>;
}

/// @nodoc
class _$MainNavigatorRouteCopyWithImpl<$Res, $Val extends MainNavigatorRoute>
    implements $MainNavigatorRouteCopyWith<$Res> {
  _$MainNavigatorRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MainNavigatorRegistrationRouteCopyWith<$Res> {
  factory _$$_MainNavigatorRegistrationRouteCopyWith(
          _$_MainNavigatorRegistrationRoute value,
          $Res Function(_$_MainNavigatorRegistrationRoute) then) =
      __$$_MainNavigatorRegistrationRouteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainNavigatorRegistrationRouteCopyWithImpl<$Res>
    extends _$MainNavigatorRouteCopyWithImpl<$Res,
        _$_MainNavigatorRegistrationRoute>
    implements _$$_MainNavigatorRegistrationRouteCopyWith<$Res> {
  __$$_MainNavigatorRegistrationRouteCopyWithImpl(
      _$_MainNavigatorRegistrationRoute _value,
      $Res Function(_$_MainNavigatorRegistrationRoute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainNavigatorRegistrationRoute
    implements _MainNavigatorRegistrationRoute {
  const _$_MainNavigatorRegistrationRoute();

  @override
  String toString() {
    return 'MainNavigatorRoute.registrationRoute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainNavigatorRegistrationRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registrationRoute,
  }) {
    return registrationRoute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registrationRoute,
  }) {
    return registrationRoute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registrationRoute,
    required TResult orElse(),
  }) {
    if (registrationRoute != null) {
      return registrationRoute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainNavigatorRegistrationRoute value)
        registrationRoute,
  }) {
    return registrationRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainNavigatorRegistrationRoute value)? registrationRoute,
  }) {
    return registrationRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainNavigatorRegistrationRoute value)? registrationRoute,
    required TResult orElse(),
  }) {
    if (registrationRoute != null) {
      return registrationRoute(this);
    }
    return orElse();
  }
}

abstract class _MainNavigatorRegistrationRoute implements MainNavigatorRoute {
  const factory _MainNavigatorRegistrationRoute() =
      _$_MainNavigatorRegistrationRoute;
}

/// @nodoc
mixin _$MainNavigatorFirstRoute {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notInternetConnectionFirstRoute,
    required TResult Function() notAuthenticatedFirstRoute,
    required TResult Function(int index) authenticatedFirstRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? notInternetConnectionFirstRoute,
    TResult? Function()? notAuthenticatedFirstRoute,
    TResult? Function(int index)? authenticatedFirstRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notInternetConnectionFirstRoute,
    TResult Function()? notAuthenticatedFirstRoute,
    TResult Function(int index)? authenticatedFirstRoute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainNavigationUnknownFirstRoute value) unknown,
    required TResult Function(
            _MainNavigatorNotInternetConnectionFirstRoute value)
        notInternetConnectionFirstRoute,
    required TResult Function(_MainNavigatorNotAuthenticatedFirstRoute value)
        notAuthenticatedFirstRoute,
    required TResult Function(_MainNavigatorAuthenticatedFirstRoute value)
        authenticatedFirstRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainNavigationUnknownFirstRoute value)? unknown,
    TResult? Function(_MainNavigatorNotInternetConnectionFirstRoute value)?
        notInternetConnectionFirstRoute,
    TResult? Function(_MainNavigatorNotAuthenticatedFirstRoute value)?
        notAuthenticatedFirstRoute,
    TResult? Function(_MainNavigatorAuthenticatedFirstRoute value)?
        authenticatedFirstRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainNavigationUnknownFirstRoute value)? unknown,
    TResult Function(_MainNavigatorNotInternetConnectionFirstRoute value)?
        notInternetConnectionFirstRoute,
    TResult Function(_MainNavigatorNotAuthenticatedFirstRoute value)?
        notAuthenticatedFirstRoute,
    TResult Function(_MainNavigatorAuthenticatedFirstRoute value)?
        authenticatedFirstRoute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNavigatorFirstRouteCopyWith<$Res> {
  factory $MainNavigatorFirstRouteCopyWith(MainNavigatorFirstRoute value,
          $Res Function(MainNavigatorFirstRoute) then) =
      _$MainNavigatorFirstRouteCopyWithImpl<$Res, MainNavigatorFirstRoute>;
}

/// @nodoc
class _$MainNavigatorFirstRouteCopyWithImpl<$Res,
        $Val extends MainNavigatorFirstRoute>
    implements $MainNavigatorFirstRouteCopyWith<$Res> {
  _$MainNavigatorFirstRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MainNavigationUnknownFirstRouteCopyWith<$Res> {
  factory _$$_MainNavigationUnknownFirstRouteCopyWith(
          _$_MainNavigationUnknownFirstRoute value,
          $Res Function(_$_MainNavigationUnknownFirstRoute) then) =
      __$$_MainNavigationUnknownFirstRouteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainNavigationUnknownFirstRouteCopyWithImpl<$Res>
    extends _$MainNavigatorFirstRouteCopyWithImpl<$Res,
        _$_MainNavigationUnknownFirstRoute>
    implements _$$_MainNavigationUnknownFirstRouteCopyWith<$Res> {
  __$$_MainNavigationUnknownFirstRouteCopyWithImpl(
      _$_MainNavigationUnknownFirstRoute _value,
      $Res Function(_$_MainNavigationUnknownFirstRoute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainNavigationUnknownFirstRoute
    implements _MainNavigationUnknownFirstRoute {
  const _$_MainNavigationUnknownFirstRoute();

  @override
  String toString() {
    return 'MainNavigatorFirstRoute.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainNavigationUnknownFirstRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notInternetConnectionFirstRoute,
    required TResult Function() notAuthenticatedFirstRoute,
    required TResult Function(int index) authenticatedFirstRoute,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? notInternetConnectionFirstRoute,
    TResult? Function()? notAuthenticatedFirstRoute,
    TResult? Function(int index)? authenticatedFirstRoute,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notInternetConnectionFirstRoute,
    TResult Function()? notAuthenticatedFirstRoute,
    TResult Function(int index)? authenticatedFirstRoute,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainNavigationUnknownFirstRoute value) unknown,
    required TResult Function(
            _MainNavigatorNotInternetConnectionFirstRoute value)
        notInternetConnectionFirstRoute,
    required TResult Function(_MainNavigatorNotAuthenticatedFirstRoute value)
        notAuthenticatedFirstRoute,
    required TResult Function(_MainNavigatorAuthenticatedFirstRoute value)
        authenticatedFirstRoute,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainNavigationUnknownFirstRoute value)? unknown,
    TResult? Function(_MainNavigatorNotInternetConnectionFirstRoute value)?
        notInternetConnectionFirstRoute,
    TResult? Function(_MainNavigatorNotAuthenticatedFirstRoute value)?
        notAuthenticatedFirstRoute,
    TResult? Function(_MainNavigatorAuthenticatedFirstRoute value)?
        authenticatedFirstRoute,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainNavigationUnknownFirstRoute value)? unknown,
    TResult Function(_MainNavigatorNotInternetConnectionFirstRoute value)?
        notInternetConnectionFirstRoute,
    TResult Function(_MainNavigatorNotAuthenticatedFirstRoute value)?
        notAuthenticatedFirstRoute,
    TResult Function(_MainNavigatorAuthenticatedFirstRoute value)?
        authenticatedFirstRoute,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _MainNavigationUnknownFirstRoute
    implements MainNavigatorFirstRoute {
  const factory _MainNavigationUnknownFirstRoute() =
      _$_MainNavigationUnknownFirstRoute;
}

/// @nodoc
abstract class _$$_MainNavigatorNotInternetConnectionFirstRouteCopyWith<$Res> {
  factory _$$_MainNavigatorNotInternetConnectionFirstRouteCopyWith(
          _$_MainNavigatorNotInternetConnectionFirstRoute value,
          $Res Function(_$_MainNavigatorNotInternetConnectionFirstRoute) then) =
      __$$_MainNavigatorNotInternetConnectionFirstRouteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainNavigatorNotInternetConnectionFirstRouteCopyWithImpl<$Res>
    extends _$MainNavigatorFirstRouteCopyWithImpl<$Res,
        _$_MainNavigatorNotInternetConnectionFirstRoute>
    implements _$$_MainNavigatorNotInternetConnectionFirstRouteCopyWith<$Res> {
  __$$_MainNavigatorNotInternetConnectionFirstRouteCopyWithImpl(
      _$_MainNavigatorNotInternetConnectionFirstRoute _value,
      $Res Function(_$_MainNavigatorNotInternetConnectionFirstRoute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainNavigatorNotInternetConnectionFirstRoute
    implements _MainNavigatorNotInternetConnectionFirstRoute {
  const _$_MainNavigatorNotInternetConnectionFirstRoute();

  @override
  String toString() {
    return 'MainNavigatorFirstRoute.notInternetConnectionFirstRoute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainNavigatorNotInternetConnectionFirstRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notInternetConnectionFirstRoute,
    required TResult Function() notAuthenticatedFirstRoute,
    required TResult Function(int index) authenticatedFirstRoute,
  }) {
    return notInternetConnectionFirstRoute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? notInternetConnectionFirstRoute,
    TResult? Function()? notAuthenticatedFirstRoute,
    TResult? Function(int index)? authenticatedFirstRoute,
  }) {
    return notInternetConnectionFirstRoute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notInternetConnectionFirstRoute,
    TResult Function()? notAuthenticatedFirstRoute,
    TResult Function(int index)? authenticatedFirstRoute,
    required TResult orElse(),
  }) {
    if (notInternetConnectionFirstRoute != null) {
      return notInternetConnectionFirstRoute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainNavigationUnknownFirstRoute value) unknown,
    required TResult Function(
            _MainNavigatorNotInternetConnectionFirstRoute value)
        notInternetConnectionFirstRoute,
    required TResult Function(_MainNavigatorNotAuthenticatedFirstRoute value)
        notAuthenticatedFirstRoute,
    required TResult Function(_MainNavigatorAuthenticatedFirstRoute value)
        authenticatedFirstRoute,
  }) {
    return notInternetConnectionFirstRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainNavigationUnknownFirstRoute value)? unknown,
    TResult? Function(_MainNavigatorNotInternetConnectionFirstRoute value)?
        notInternetConnectionFirstRoute,
    TResult? Function(_MainNavigatorNotAuthenticatedFirstRoute value)?
        notAuthenticatedFirstRoute,
    TResult? Function(_MainNavigatorAuthenticatedFirstRoute value)?
        authenticatedFirstRoute,
  }) {
    return notInternetConnectionFirstRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainNavigationUnknownFirstRoute value)? unknown,
    TResult Function(_MainNavigatorNotInternetConnectionFirstRoute value)?
        notInternetConnectionFirstRoute,
    TResult Function(_MainNavigatorNotAuthenticatedFirstRoute value)?
        notAuthenticatedFirstRoute,
    TResult Function(_MainNavigatorAuthenticatedFirstRoute value)?
        authenticatedFirstRoute,
    required TResult orElse(),
  }) {
    if (notInternetConnectionFirstRoute != null) {
      return notInternetConnectionFirstRoute(this);
    }
    return orElse();
  }
}

abstract class _MainNavigatorNotInternetConnectionFirstRoute
    implements MainNavigatorFirstRoute {
  const factory _MainNavigatorNotInternetConnectionFirstRoute() =
      _$_MainNavigatorNotInternetConnectionFirstRoute;
}

/// @nodoc
abstract class _$$_MainNavigatorNotAuthenticatedFirstRouteCopyWith<$Res> {
  factory _$$_MainNavigatorNotAuthenticatedFirstRouteCopyWith(
          _$_MainNavigatorNotAuthenticatedFirstRoute value,
          $Res Function(_$_MainNavigatorNotAuthenticatedFirstRoute) then) =
      __$$_MainNavigatorNotAuthenticatedFirstRouteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainNavigatorNotAuthenticatedFirstRouteCopyWithImpl<$Res>
    extends _$MainNavigatorFirstRouteCopyWithImpl<$Res,
        _$_MainNavigatorNotAuthenticatedFirstRoute>
    implements _$$_MainNavigatorNotAuthenticatedFirstRouteCopyWith<$Res> {
  __$$_MainNavigatorNotAuthenticatedFirstRouteCopyWithImpl(
      _$_MainNavigatorNotAuthenticatedFirstRoute _value,
      $Res Function(_$_MainNavigatorNotAuthenticatedFirstRoute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainNavigatorNotAuthenticatedFirstRoute
    implements _MainNavigatorNotAuthenticatedFirstRoute {
  const _$_MainNavigatorNotAuthenticatedFirstRoute();

  @override
  String toString() {
    return 'MainNavigatorFirstRoute.notAuthenticatedFirstRoute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainNavigatorNotAuthenticatedFirstRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notInternetConnectionFirstRoute,
    required TResult Function() notAuthenticatedFirstRoute,
    required TResult Function(int index) authenticatedFirstRoute,
  }) {
    return notAuthenticatedFirstRoute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? notInternetConnectionFirstRoute,
    TResult? Function()? notAuthenticatedFirstRoute,
    TResult? Function(int index)? authenticatedFirstRoute,
  }) {
    return notAuthenticatedFirstRoute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notInternetConnectionFirstRoute,
    TResult Function()? notAuthenticatedFirstRoute,
    TResult Function(int index)? authenticatedFirstRoute,
    required TResult orElse(),
  }) {
    if (notAuthenticatedFirstRoute != null) {
      return notAuthenticatedFirstRoute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainNavigationUnknownFirstRoute value) unknown,
    required TResult Function(
            _MainNavigatorNotInternetConnectionFirstRoute value)
        notInternetConnectionFirstRoute,
    required TResult Function(_MainNavigatorNotAuthenticatedFirstRoute value)
        notAuthenticatedFirstRoute,
    required TResult Function(_MainNavigatorAuthenticatedFirstRoute value)
        authenticatedFirstRoute,
  }) {
    return notAuthenticatedFirstRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainNavigationUnknownFirstRoute value)? unknown,
    TResult? Function(_MainNavigatorNotInternetConnectionFirstRoute value)?
        notInternetConnectionFirstRoute,
    TResult? Function(_MainNavigatorNotAuthenticatedFirstRoute value)?
        notAuthenticatedFirstRoute,
    TResult? Function(_MainNavigatorAuthenticatedFirstRoute value)?
        authenticatedFirstRoute,
  }) {
    return notAuthenticatedFirstRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainNavigationUnknownFirstRoute value)? unknown,
    TResult Function(_MainNavigatorNotInternetConnectionFirstRoute value)?
        notInternetConnectionFirstRoute,
    TResult Function(_MainNavigatorNotAuthenticatedFirstRoute value)?
        notAuthenticatedFirstRoute,
    TResult Function(_MainNavigatorAuthenticatedFirstRoute value)?
        authenticatedFirstRoute,
    required TResult orElse(),
  }) {
    if (notAuthenticatedFirstRoute != null) {
      return notAuthenticatedFirstRoute(this);
    }
    return orElse();
  }
}

abstract class _MainNavigatorNotAuthenticatedFirstRoute
    implements MainNavigatorFirstRoute {
  const factory _MainNavigatorNotAuthenticatedFirstRoute() =
      _$_MainNavigatorNotAuthenticatedFirstRoute;
}

/// @nodoc
abstract class _$$_MainNavigatorAuthenticatedFirstRouteCopyWith<$Res> {
  factory _$$_MainNavigatorAuthenticatedFirstRouteCopyWith(
          _$_MainNavigatorAuthenticatedFirstRoute value,
          $Res Function(_$_MainNavigatorAuthenticatedFirstRoute) then) =
      __$$_MainNavigatorAuthenticatedFirstRouteCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_MainNavigatorAuthenticatedFirstRouteCopyWithImpl<$Res>
    extends _$MainNavigatorFirstRouteCopyWithImpl<$Res,
        _$_MainNavigatorAuthenticatedFirstRoute>
    implements _$$_MainNavigatorAuthenticatedFirstRouteCopyWith<$Res> {
  __$$_MainNavigatorAuthenticatedFirstRouteCopyWithImpl(
      _$_MainNavigatorAuthenticatedFirstRoute _value,
      $Res Function(_$_MainNavigatorAuthenticatedFirstRoute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_MainNavigatorAuthenticatedFirstRoute(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MainNavigatorAuthenticatedFirstRoute
    implements _MainNavigatorAuthenticatedFirstRoute {
  const _$_MainNavigatorAuthenticatedFirstRoute({this.index = 0});

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'MainNavigatorFirstRoute.authenticatedFirstRoute(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainNavigatorAuthenticatedFirstRoute &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainNavigatorAuthenticatedFirstRouteCopyWith<
          _$_MainNavigatorAuthenticatedFirstRoute>
      get copyWith => __$$_MainNavigatorAuthenticatedFirstRouteCopyWithImpl<
          _$_MainNavigatorAuthenticatedFirstRoute>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notInternetConnectionFirstRoute,
    required TResult Function() notAuthenticatedFirstRoute,
    required TResult Function(int index) authenticatedFirstRoute,
  }) {
    return authenticatedFirstRoute(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? notInternetConnectionFirstRoute,
    TResult? Function()? notAuthenticatedFirstRoute,
    TResult? Function(int index)? authenticatedFirstRoute,
  }) {
    return authenticatedFirstRoute?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notInternetConnectionFirstRoute,
    TResult Function()? notAuthenticatedFirstRoute,
    TResult Function(int index)? authenticatedFirstRoute,
    required TResult orElse(),
  }) {
    if (authenticatedFirstRoute != null) {
      return authenticatedFirstRoute(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainNavigationUnknownFirstRoute value) unknown,
    required TResult Function(
            _MainNavigatorNotInternetConnectionFirstRoute value)
        notInternetConnectionFirstRoute,
    required TResult Function(_MainNavigatorNotAuthenticatedFirstRoute value)
        notAuthenticatedFirstRoute,
    required TResult Function(_MainNavigatorAuthenticatedFirstRoute value)
        authenticatedFirstRoute,
  }) {
    return authenticatedFirstRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainNavigationUnknownFirstRoute value)? unknown,
    TResult? Function(_MainNavigatorNotInternetConnectionFirstRoute value)?
        notInternetConnectionFirstRoute,
    TResult? Function(_MainNavigatorNotAuthenticatedFirstRoute value)?
        notAuthenticatedFirstRoute,
    TResult? Function(_MainNavigatorAuthenticatedFirstRoute value)?
        authenticatedFirstRoute,
  }) {
    return authenticatedFirstRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainNavigationUnknownFirstRoute value)? unknown,
    TResult Function(_MainNavigatorNotInternetConnectionFirstRoute value)?
        notInternetConnectionFirstRoute,
    TResult Function(_MainNavigatorNotAuthenticatedFirstRoute value)?
        notAuthenticatedFirstRoute,
    TResult Function(_MainNavigatorAuthenticatedFirstRoute value)?
        authenticatedFirstRoute,
    required TResult orElse(),
  }) {
    if (authenticatedFirstRoute != null) {
      return authenticatedFirstRoute(this);
    }
    return orElse();
  }
}

abstract class _MainNavigatorAuthenticatedFirstRoute
    implements MainNavigatorFirstRoute {
  const factory _MainNavigatorAuthenticatedFirstRoute({final int index}) =
      _$_MainNavigatorAuthenticatedFirstRoute;

  int get index;
  @JsonKey(ignore: true)
  _$$_MainNavigatorAuthenticatedFirstRouteCopyWith<
          _$_MainNavigatorAuthenticatedFirstRoute>
      get copyWith => throw _privateConstructorUsedError;
}
