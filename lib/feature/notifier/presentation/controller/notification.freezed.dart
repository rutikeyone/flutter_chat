// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Notification {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInternetConnection)
        internetConnectionNotification,
    required TResult Function(SignUpNotification notification)
        signUpNotification,
    required TResult Function(SignInNotification notification)
        signInNotification,
    required TResult Function(SignInWithGoogleNotification notification)
        signInWithGoogleNotification,
    required TResult Function(SignInWithFacebookNotification notification)
        signInWithFacebookNotification,
    required TResult Function(GetUserDataNotification notification)
        getUserDataNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult? Function(SignUpNotification notification)? signUpNotification,
    TResult? Function(SignInNotification notification)? signInNotification,
    TResult? Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult? Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult? Function(GetUserDataNotification notification)?
        getUserDataNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult Function(SignUpNotification notification)? signUpNotification,
    TResult Function(SignInNotification notification)? signInNotification,
    TResult Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult Function(GetUserDataNotification notification)?
        getUserDataNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternetConnectionNotification value)
        internetConnectionNotification,
    required TResult Function(_SignUpNotification value) signUpNotification,
    required TResult Function(_SignInNotification value) signInNotification,
    required TResult Function(_SignInWithGoogleNotification value)
        signInWithGoogleNotification,
    required TResult Function(_SignInWithFacebookNotification value)
        signInWithFacebookNotification,
    required TResult Function(_GetUserDataNotification value)
        getUserDataNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult? Function(_SignUpNotification value)? signUpNotification,
    TResult? Function(_SignInNotification value)? signInNotification,
    TResult? Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult? Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult? Function(_GetUserDataNotification value)? getUserDataNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult Function(_SignUpNotification value)? signUpNotification,
    TResult Function(_SignInNotification value)? signInNotification,
    TResult Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult Function(_GetUserDataNotification value)? getUserDataNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res, Notification>;
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res, $Val extends Notification>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InternetConnectionNotificationCopyWith<$Res> {
  factory _$$_InternetConnectionNotificationCopyWith(
          _$_InternetConnectionNotification value,
          $Res Function(_$_InternetConnectionNotification) then) =
      __$$_InternetConnectionNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasInternetConnection});
}

/// @nodoc
class __$$_InternetConnectionNotificationCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$_InternetConnectionNotification>
    implements _$$_InternetConnectionNotificationCopyWith<$Res> {
  __$$_InternetConnectionNotificationCopyWithImpl(
      _$_InternetConnectionNotification _value,
      $Res Function(_$_InternetConnectionNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasInternetConnection = null,
  }) {
    return _then(_$_InternetConnectionNotification(
      hasInternetConnection: null == hasInternetConnection
          ? _value.hasInternetConnection
          : hasInternetConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InternetConnectionNotification
    implements _InternetConnectionNotification {
  const _$_InternetConnectionNotification(
      {required this.hasInternetConnection});

  @override
  final bool hasInternetConnection;

  @override
  String toString() {
    return 'Notification.internetConnectionNotification(hasInternetConnection: $hasInternetConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InternetConnectionNotification &&
            (identical(other.hasInternetConnection, hasInternetConnection) ||
                other.hasInternetConnection == hasInternetConnection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasInternetConnection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InternetConnectionNotificationCopyWith<_$_InternetConnectionNotification>
      get copyWith => __$$_InternetConnectionNotificationCopyWithImpl<
          _$_InternetConnectionNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInternetConnection)
        internetConnectionNotification,
    required TResult Function(SignUpNotification notification)
        signUpNotification,
    required TResult Function(SignInNotification notification)
        signInNotification,
    required TResult Function(SignInWithGoogleNotification notification)
        signInWithGoogleNotification,
    required TResult Function(SignInWithFacebookNotification notification)
        signInWithFacebookNotification,
    required TResult Function(GetUserDataNotification notification)
        getUserDataNotification,
  }) {
    return internetConnectionNotification(hasInternetConnection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult? Function(SignUpNotification notification)? signUpNotification,
    TResult? Function(SignInNotification notification)? signInNotification,
    TResult? Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult? Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult? Function(GetUserDataNotification notification)?
        getUserDataNotification,
  }) {
    return internetConnectionNotification?.call(hasInternetConnection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult Function(SignUpNotification notification)? signUpNotification,
    TResult Function(SignInNotification notification)? signInNotification,
    TResult Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult Function(GetUserDataNotification notification)?
        getUserDataNotification,
    required TResult orElse(),
  }) {
    if (internetConnectionNotification != null) {
      return internetConnectionNotification(hasInternetConnection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternetConnectionNotification value)
        internetConnectionNotification,
    required TResult Function(_SignUpNotification value) signUpNotification,
    required TResult Function(_SignInNotification value) signInNotification,
    required TResult Function(_SignInWithGoogleNotification value)
        signInWithGoogleNotification,
    required TResult Function(_SignInWithFacebookNotification value)
        signInWithFacebookNotification,
    required TResult Function(_GetUserDataNotification value)
        getUserDataNotification,
  }) {
    return internetConnectionNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult? Function(_SignUpNotification value)? signUpNotification,
    TResult? Function(_SignInNotification value)? signInNotification,
    TResult? Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult? Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult? Function(_GetUserDataNotification value)? getUserDataNotification,
  }) {
    return internetConnectionNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult Function(_SignUpNotification value)? signUpNotification,
    TResult Function(_SignInNotification value)? signInNotification,
    TResult Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult Function(_GetUserDataNotification value)? getUserDataNotification,
    required TResult orElse(),
  }) {
    if (internetConnectionNotification != null) {
      return internetConnectionNotification(this);
    }
    return orElse();
  }
}

abstract class _InternetConnectionNotification implements Notification {
  const factory _InternetConnectionNotification(
          {required final bool hasInternetConnection}) =
      _$_InternetConnectionNotification;

  bool get hasInternetConnection;
  @JsonKey(ignore: true)
  _$$_InternetConnectionNotificationCopyWith<_$_InternetConnectionNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpNotificationCopyWith<$Res> {
  factory _$$_SignUpNotificationCopyWith(_$_SignUpNotification value,
          $Res Function(_$_SignUpNotification) then) =
      __$$_SignUpNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpNotification notification});

  $SignUpNotificationCopyWith<$Res> get notification;
}

/// @nodoc
class __$$_SignUpNotificationCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$_SignUpNotification>
    implements _$$_SignUpNotificationCopyWith<$Res> {
  __$$_SignUpNotificationCopyWithImpl(
      _$_SignUpNotification _value, $Res Function(_$_SignUpNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$_SignUpNotification(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as SignUpNotification,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpNotificationCopyWith<$Res> get notification {
    return $SignUpNotificationCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc

class _$_SignUpNotification implements _SignUpNotification {
  const _$_SignUpNotification({required this.notification});

  @override
  final SignUpNotification notification;

  @override
  String toString() {
    return 'Notification.signUpNotification(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpNotification &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpNotificationCopyWith<_$_SignUpNotification> get copyWith =>
      __$$_SignUpNotificationCopyWithImpl<_$_SignUpNotification>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInternetConnection)
        internetConnectionNotification,
    required TResult Function(SignUpNotification notification)
        signUpNotification,
    required TResult Function(SignInNotification notification)
        signInNotification,
    required TResult Function(SignInWithGoogleNotification notification)
        signInWithGoogleNotification,
    required TResult Function(SignInWithFacebookNotification notification)
        signInWithFacebookNotification,
    required TResult Function(GetUserDataNotification notification)
        getUserDataNotification,
  }) {
    return signUpNotification(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult? Function(SignUpNotification notification)? signUpNotification,
    TResult? Function(SignInNotification notification)? signInNotification,
    TResult? Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult? Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult? Function(GetUserDataNotification notification)?
        getUserDataNotification,
  }) {
    return signUpNotification?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult Function(SignUpNotification notification)? signUpNotification,
    TResult Function(SignInNotification notification)? signInNotification,
    TResult Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult Function(GetUserDataNotification notification)?
        getUserDataNotification,
    required TResult orElse(),
  }) {
    if (signUpNotification != null) {
      return signUpNotification(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternetConnectionNotification value)
        internetConnectionNotification,
    required TResult Function(_SignUpNotification value) signUpNotification,
    required TResult Function(_SignInNotification value) signInNotification,
    required TResult Function(_SignInWithGoogleNotification value)
        signInWithGoogleNotification,
    required TResult Function(_SignInWithFacebookNotification value)
        signInWithFacebookNotification,
    required TResult Function(_GetUserDataNotification value)
        getUserDataNotification,
  }) {
    return signUpNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult? Function(_SignUpNotification value)? signUpNotification,
    TResult? Function(_SignInNotification value)? signInNotification,
    TResult? Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult? Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult? Function(_GetUserDataNotification value)? getUserDataNotification,
  }) {
    return signUpNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult Function(_SignUpNotification value)? signUpNotification,
    TResult Function(_SignInNotification value)? signInNotification,
    TResult Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult Function(_GetUserDataNotification value)? getUserDataNotification,
    required TResult orElse(),
  }) {
    if (signUpNotification != null) {
      return signUpNotification(this);
    }
    return orElse();
  }
}

abstract class _SignUpNotification implements Notification {
  const factory _SignUpNotification(
      {required final SignUpNotification notification}) = _$_SignUpNotification;

  SignUpNotification get notification;
  @JsonKey(ignore: true)
  _$$_SignUpNotificationCopyWith<_$_SignUpNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInNotificationCopyWith<$Res> {
  factory _$$_SignInNotificationCopyWith(_$_SignInNotification value,
          $Res Function(_$_SignInNotification) then) =
      __$$_SignInNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInNotification notification});

  $SignInNotificationCopyWith<$Res> get notification;
}

/// @nodoc
class __$$_SignInNotificationCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$_SignInNotification>
    implements _$$_SignInNotificationCopyWith<$Res> {
  __$$_SignInNotificationCopyWithImpl(
      _$_SignInNotification _value, $Res Function(_$_SignInNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$_SignInNotification(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as SignInNotification,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInNotificationCopyWith<$Res> get notification {
    return $SignInNotificationCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc

class _$_SignInNotification implements _SignInNotification {
  const _$_SignInNotification({required this.notification});

  @override
  final SignInNotification notification;

  @override
  String toString() {
    return 'Notification.signInNotification(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInNotification &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInNotificationCopyWith<_$_SignInNotification> get copyWith =>
      __$$_SignInNotificationCopyWithImpl<_$_SignInNotification>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInternetConnection)
        internetConnectionNotification,
    required TResult Function(SignUpNotification notification)
        signUpNotification,
    required TResult Function(SignInNotification notification)
        signInNotification,
    required TResult Function(SignInWithGoogleNotification notification)
        signInWithGoogleNotification,
    required TResult Function(SignInWithFacebookNotification notification)
        signInWithFacebookNotification,
    required TResult Function(GetUserDataNotification notification)
        getUserDataNotification,
  }) {
    return signInNotification(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult? Function(SignUpNotification notification)? signUpNotification,
    TResult? Function(SignInNotification notification)? signInNotification,
    TResult? Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult? Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult? Function(GetUserDataNotification notification)?
        getUserDataNotification,
  }) {
    return signInNotification?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult Function(SignUpNotification notification)? signUpNotification,
    TResult Function(SignInNotification notification)? signInNotification,
    TResult Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult Function(GetUserDataNotification notification)?
        getUserDataNotification,
    required TResult orElse(),
  }) {
    if (signInNotification != null) {
      return signInNotification(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternetConnectionNotification value)
        internetConnectionNotification,
    required TResult Function(_SignUpNotification value) signUpNotification,
    required TResult Function(_SignInNotification value) signInNotification,
    required TResult Function(_SignInWithGoogleNotification value)
        signInWithGoogleNotification,
    required TResult Function(_SignInWithFacebookNotification value)
        signInWithFacebookNotification,
    required TResult Function(_GetUserDataNotification value)
        getUserDataNotification,
  }) {
    return signInNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult? Function(_SignUpNotification value)? signUpNotification,
    TResult? Function(_SignInNotification value)? signInNotification,
    TResult? Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult? Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult? Function(_GetUserDataNotification value)? getUserDataNotification,
  }) {
    return signInNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult Function(_SignUpNotification value)? signUpNotification,
    TResult Function(_SignInNotification value)? signInNotification,
    TResult Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult Function(_GetUserDataNotification value)? getUserDataNotification,
    required TResult orElse(),
  }) {
    if (signInNotification != null) {
      return signInNotification(this);
    }
    return orElse();
  }
}

abstract class _SignInNotification implements Notification {
  const factory _SignInNotification(
      {required final SignInNotification notification}) = _$_SignInNotification;

  SignInNotification get notification;
  @JsonKey(ignore: true)
  _$$_SignInNotificationCopyWith<_$_SignInNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInWithGoogleNotificationCopyWith<$Res> {
  factory _$$_SignInWithGoogleNotificationCopyWith(
          _$_SignInWithGoogleNotification value,
          $Res Function(_$_SignInWithGoogleNotification) then) =
      __$$_SignInWithGoogleNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInWithGoogleNotification notification});

  $SignInWithGoogleNotificationCopyWith<$Res> get notification;
}

/// @nodoc
class __$$_SignInWithGoogleNotificationCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$_SignInWithGoogleNotification>
    implements _$$_SignInWithGoogleNotificationCopyWith<$Res> {
  __$$_SignInWithGoogleNotificationCopyWithImpl(
      _$_SignInWithGoogleNotification _value,
      $Res Function(_$_SignInWithGoogleNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$_SignInWithGoogleNotification(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as SignInWithGoogleNotification,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInWithGoogleNotificationCopyWith<$Res> get notification {
    return $SignInWithGoogleNotificationCopyWith<$Res>(_value.notification,
        (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc

class _$_SignInWithGoogleNotification implements _SignInWithGoogleNotification {
  const _$_SignInWithGoogleNotification({required this.notification});

  @override
  final SignInWithGoogleNotification notification;

  @override
  String toString() {
    return 'Notification.signInWithGoogleNotification(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithGoogleNotification &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInWithGoogleNotificationCopyWith<_$_SignInWithGoogleNotification>
      get copyWith => __$$_SignInWithGoogleNotificationCopyWithImpl<
          _$_SignInWithGoogleNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInternetConnection)
        internetConnectionNotification,
    required TResult Function(SignUpNotification notification)
        signUpNotification,
    required TResult Function(SignInNotification notification)
        signInNotification,
    required TResult Function(SignInWithGoogleNotification notification)
        signInWithGoogleNotification,
    required TResult Function(SignInWithFacebookNotification notification)
        signInWithFacebookNotification,
    required TResult Function(GetUserDataNotification notification)
        getUserDataNotification,
  }) {
    return signInWithGoogleNotification(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult? Function(SignUpNotification notification)? signUpNotification,
    TResult? Function(SignInNotification notification)? signInNotification,
    TResult? Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult? Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult? Function(GetUserDataNotification notification)?
        getUserDataNotification,
  }) {
    return signInWithGoogleNotification?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult Function(SignUpNotification notification)? signUpNotification,
    TResult Function(SignInNotification notification)? signInNotification,
    TResult Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult Function(GetUserDataNotification notification)?
        getUserDataNotification,
    required TResult orElse(),
  }) {
    if (signInWithGoogleNotification != null) {
      return signInWithGoogleNotification(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternetConnectionNotification value)
        internetConnectionNotification,
    required TResult Function(_SignUpNotification value) signUpNotification,
    required TResult Function(_SignInNotification value) signInNotification,
    required TResult Function(_SignInWithGoogleNotification value)
        signInWithGoogleNotification,
    required TResult Function(_SignInWithFacebookNotification value)
        signInWithFacebookNotification,
    required TResult Function(_GetUserDataNotification value)
        getUserDataNotification,
  }) {
    return signInWithGoogleNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult? Function(_SignUpNotification value)? signUpNotification,
    TResult? Function(_SignInNotification value)? signInNotification,
    TResult? Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult? Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult? Function(_GetUserDataNotification value)? getUserDataNotification,
  }) {
    return signInWithGoogleNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult Function(_SignUpNotification value)? signUpNotification,
    TResult Function(_SignInNotification value)? signInNotification,
    TResult Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult Function(_GetUserDataNotification value)? getUserDataNotification,
    required TResult orElse(),
  }) {
    if (signInWithGoogleNotification != null) {
      return signInWithGoogleNotification(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogleNotification implements Notification {
  const factory _SignInWithGoogleNotification(
          {required final SignInWithGoogleNotification notification}) =
      _$_SignInWithGoogleNotification;

  SignInWithGoogleNotification get notification;
  @JsonKey(ignore: true)
  _$$_SignInWithGoogleNotificationCopyWith<_$_SignInWithGoogleNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInWithFacebookNotificationCopyWith<$Res> {
  factory _$$_SignInWithFacebookNotificationCopyWith(
          _$_SignInWithFacebookNotification value,
          $Res Function(_$_SignInWithFacebookNotification) then) =
      __$$_SignInWithFacebookNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInWithFacebookNotification notification});

  $SignInWithFacebookNotificationCopyWith<$Res> get notification;
}

/// @nodoc
class __$$_SignInWithFacebookNotificationCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$_SignInWithFacebookNotification>
    implements _$$_SignInWithFacebookNotificationCopyWith<$Res> {
  __$$_SignInWithFacebookNotificationCopyWithImpl(
      _$_SignInWithFacebookNotification _value,
      $Res Function(_$_SignInWithFacebookNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$_SignInWithFacebookNotification(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as SignInWithFacebookNotification,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInWithFacebookNotificationCopyWith<$Res> get notification {
    return $SignInWithFacebookNotificationCopyWith<$Res>(_value.notification,
        (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc

class _$_SignInWithFacebookNotification
    implements _SignInWithFacebookNotification {
  const _$_SignInWithFacebookNotification({required this.notification});

  @override
  final SignInWithFacebookNotification notification;

  @override
  String toString() {
    return 'Notification.signInWithFacebookNotification(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithFacebookNotification &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInWithFacebookNotificationCopyWith<_$_SignInWithFacebookNotification>
      get copyWith => __$$_SignInWithFacebookNotificationCopyWithImpl<
          _$_SignInWithFacebookNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInternetConnection)
        internetConnectionNotification,
    required TResult Function(SignUpNotification notification)
        signUpNotification,
    required TResult Function(SignInNotification notification)
        signInNotification,
    required TResult Function(SignInWithGoogleNotification notification)
        signInWithGoogleNotification,
    required TResult Function(SignInWithFacebookNotification notification)
        signInWithFacebookNotification,
    required TResult Function(GetUserDataNotification notification)
        getUserDataNotification,
  }) {
    return signInWithFacebookNotification(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult? Function(SignUpNotification notification)? signUpNotification,
    TResult? Function(SignInNotification notification)? signInNotification,
    TResult? Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult? Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult? Function(GetUserDataNotification notification)?
        getUserDataNotification,
  }) {
    return signInWithFacebookNotification?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult Function(SignUpNotification notification)? signUpNotification,
    TResult Function(SignInNotification notification)? signInNotification,
    TResult Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult Function(GetUserDataNotification notification)?
        getUserDataNotification,
    required TResult orElse(),
  }) {
    if (signInWithFacebookNotification != null) {
      return signInWithFacebookNotification(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternetConnectionNotification value)
        internetConnectionNotification,
    required TResult Function(_SignUpNotification value) signUpNotification,
    required TResult Function(_SignInNotification value) signInNotification,
    required TResult Function(_SignInWithGoogleNotification value)
        signInWithGoogleNotification,
    required TResult Function(_SignInWithFacebookNotification value)
        signInWithFacebookNotification,
    required TResult Function(_GetUserDataNotification value)
        getUserDataNotification,
  }) {
    return signInWithFacebookNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult? Function(_SignUpNotification value)? signUpNotification,
    TResult? Function(_SignInNotification value)? signInNotification,
    TResult? Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult? Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult? Function(_GetUserDataNotification value)? getUserDataNotification,
  }) {
    return signInWithFacebookNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult Function(_SignUpNotification value)? signUpNotification,
    TResult Function(_SignInNotification value)? signInNotification,
    TResult Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult Function(_GetUserDataNotification value)? getUserDataNotification,
    required TResult orElse(),
  }) {
    if (signInWithFacebookNotification != null) {
      return signInWithFacebookNotification(this);
    }
    return orElse();
  }
}

abstract class _SignInWithFacebookNotification implements Notification {
  const factory _SignInWithFacebookNotification(
          {required final SignInWithFacebookNotification notification}) =
      _$_SignInWithFacebookNotification;

  SignInWithFacebookNotification get notification;
  @JsonKey(ignore: true)
  _$$_SignInWithFacebookNotificationCopyWith<_$_SignInWithFacebookNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetUserDataNotificationCopyWith<$Res> {
  factory _$$_GetUserDataNotificationCopyWith(_$_GetUserDataNotification value,
          $Res Function(_$_GetUserDataNotification) then) =
      __$$_GetUserDataNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({GetUserDataNotification notification});

  $GetUserDataNotificationCopyWith<$Res> get notification;
}

/// @nodoc
class __$$_GetUserDataNotificationCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$_GetUserDataNotification>
    implements _$$_GetUserDataNotificationCopyWith<$Res> {
  __$$_GetUserDataNotificationCopyWithImpl(_$_GetUserDataNotification _value,
      $Res Function(_$_GetUserDataNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$_GetUserDataNotification(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as GetUserDataNotification,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GetUserDataNotificationCopyWith<$Res> get notification {
    return $GetUserDataNotificationCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc

class _$_GetUserDataNotification implements _GetUserDataNotification {
  const _$_GetUserDataNotification({required this.notification});

  @override
  final GetUserDataNotification notification;

  @override
  String toString() {
    return 'Notification.getUserDataNotification(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUserDataNotification &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetUserDataNotificationCopyWith<_$_GetUserDataNotification>
      get copyWith =>
          __$$_GetUserDataNotificationCopyWithImpl<_$_GetUserDataNotification>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInternetConnection)
        internetConnectionNotification,
    required TResult Function(SignUpNotification notification)
        signUpNotification,
    required TResult Function(SignInNotification notification)
        signInNotification,
    required TResult Function(SignInWithGoogleNotification notification)
        signInWithGoogleNotification,
    required TResult Function(SignInWithFacebookNotification notification)
        signInWithFacebookNotification,
    required TResult Function(GetUserDataNotification notification)
        getUserDataNotification,
  }) {
    return getUserDataNotification(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult? Function(SignUpNotification notification)? signUpNotification,
    TResult? Function(SignInNotification notification)? signInNotification,
    TResult? Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult? Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult? Function(GetUserDataNotification notification)?
        getUserDataNotification,
  }) {
    return getUserDataNotification?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInternetConnection)?
        internetConnectionNotification,
    TResult Function(SignUpNotification notification)? signUpNotification,
    TResult Function(SignInNotification notification)? signInNotification,
    TResult Function(SignInWithGoogleNotification notification)?
        signInWithGoogleNotification,
    TResult Function(SignInWithFacebookNotification notification)?
        signInWithFacebookNotification,
    TResult Function(GetUserDataNotification notification)?
        getUserDataNotification,
    required TResult orElse(),
  }) {
    if (getUserDataNotification != null) {
      return getUserDataNotification(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternetConnectionNotification value)
        internetConnectionNotification,
    required TResult Function(_SignUpNotification value) signUpNotification,
    required TResult Function(_SignInNotification value) signInNotification,
    required TResult Function(_SignInWithGoogleNotification value)
        signInWithGoogleNotification,
    required TResult Function(_SignInWithFacebookNotification value)
        signInWithFacebookNotification,
    required TResult Function(_GetUserDataNotification value)
        getUserDataNotification,
  }) {
    return getUserDataNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult? Function(_SignUpNotification value)? signUpNotification,
    TResult? Function(_SignInNotification value)? signInNotification,
    TResult? Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult? Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult? Function(_GetUserDataNotification value)? getUserDataNotification,
  }) {
    return getUserDataNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternetConnectionNotification value)?
        internetConnectionNotification,
    TResult Function(_SignUpNotification value)? signUpNotification,
    TResult Function(_SignInNotification value)? signInNotification,
    TResult Function(_SignInWithGoogleNotification value)?
        signInWithGoogleNotification,
    TResult Function(_SignInWithFacebookNotification value)?
        signInWithFacebookNotification,
    TResult Function(_GetUserDataNotification value)? getUserDataNotification,
    required TResult orElse(),
  }) {
    if (getUserDataNotification != null) {
      return getUserDataNotification(this);
    }
    return orElse();
  }
}

abstract class _GetUserDataNotification implements Notification {
  const factory _GetUserDataNotification(
          {required final GetUserDataNotification notification}) =
      _$_GetUserDataNotification;

  GetUserDataNotification get notification;
  @JsonKey(ignore: true)
  _$$_GetUserDataNotificationCopyWith<_$_GetUserDataNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpNotification {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SignUpFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SignUpFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SignUpFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpNotificationSuccess value) success,
    required TResult Function(_SignUpNotificationFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpNotificationSuccess value)? success,
    TResult? Function(_SignUpNotificationFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpNotificationSuccess value)? success,
    TResult Function(_SignUpNotificationFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpNotificationCopyWith<$Res> {
  factory $SignUpNotificationCopyWith(
          SignUpNotification value, $Res Function(SignUpNotification) then) =
      _$SignUpNotificationCopyWithImpl<$Res, SignUpNotification>;
}

/// @nodoc
class _$SignUpNotificationCopyWithImpl<$Res, $Val extends SignUpNotification>
    implements $SignUpNotificationCopyWith<$Res> {
  _$SignUpNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignUpNotificationSuccessCopyWith<$Res> {
  factory _$$_SignUpNotificationSuccessCopyWith(
          _$_SignUpNotificationSuccess value,
          $Res Function(_$_SignUpNotificationSuccess) then) =
      __$$_SignUpNotificationSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpNotificationSuccessCopyWithImpl<$Res>
    extends _$SignUpNotificationCopyWithImpl<$Res, _$_SignUpNotificationSuccess>
    implements _$$_SignUpNotificationSuccessCopyWith<$Res> {
  __$$_SignUpNotificationSuccessCopyWithImpl(
      _$_SignUpNotificationSuccess _value,
      $Res Function(_$_SignUpNotificationSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUpNotificationSuccess implements _SignUpNotificationSuccess {
  const _$_SignUpNotificationSuccess();

  @override
  String toString() {
    return 'SignUpNotification.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpNotificationSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SignUpFailure failure) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SignUpFailure failure)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SignUpFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpNotificationSuccess value) success,
    required TResult Function(_SignUpNotificationFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpNotificationSuccess value)? success,
    TResult? Function(_SignUpNotificationFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpNotificationSuccess value)? success,
    TResult Function(_SignUpNotificationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SignUpNotificationSuccess implements SignUpNotification {
  const factory _SignUpNotificationSuccess() = _$_SignUpNotificationSuccess;
}

/// @nodoc
abstract class _$$_SignUpNotificationFailureCopyWith<$Res> {
  factory _$$_SignUpNotificationFailureCopyWith(
          _$_SignUpNotificationFailure value,
          $Res Function(_$_SignUpNotificationFailure) then) =
      __$$_SignUpNotificationFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpFailure failure});

  $SignUpFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_SignUpNotificationFailureCopyWithImpl<$Res>
    extends _$SignUpNotificationCopyWithImpl<$Res, _$_SignUpNotificationFailure>
    implements _$$_SignUpNotificationFailureCopyWith<$Res> {
  __$$_SignUpNotificationFailureCopyWithImpl(
      _$_SignUpNotificationFailure _value,
      $Res Function(_$_SignUpNotificationFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_SignUpNotificationFailure(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SignUpFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpFailureCopyWith<$Res> get failure {
    return $SignUpFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_SignUpNotificationFailure implements _SignUpNotificationFailure {
  const _$_SignUpNotificationFailure({required this.failure});

  @override
  final SignUpFailure failure;

  @override
  String toString() {
    return 'SignUpNotification.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpNotificationFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpNotificationFailureCopyWith<_$_SignUpNotificationFailure>
      get copyWith => __$$_SignUpNotificationFailureCopyWithImpl<
          _$_SignUpNotificationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SignUpFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SignUpFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SignUpFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpNotificationSuccess value) success,
    required TResult Function(_SignUpNotificationFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpNotificationSuccess value)? success,
    TResult? Function(_SignUpNotificationFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpNotificationSuccess value)? success,
    TResult Function(_SignUpNotificationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SignUpNotificationFailure implements SignUpNotification {
  const factory _SignUpNotificationFailure(
      {required final SignUpFailure failure}) = _$_SignUpNotificationFailure;

  SignUpFailure get failure;
  @JsonKey(ignore: true)
  _$$_SignUpNotificationFailureCopyWith<_$_SignUpNotificationFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInNotification {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SignInFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SignInFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SignInFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInNotificationSuccess value) success,
    required TResult Function(_SignInNotificationFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInNotificationSuccess value)? success,
    TResult? Function(_SignInNotificationFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInNotificationSuccess value)? success,
    TResult Function(_SignInNotificationFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInNotificationCopyWith<$Res> {
  factory $SignInNotificationCopyWith(
          SignInNotification value, $Res Function(SignInNotification) then) =
      _$SignInNotificationCopyWithImpl<$Res, SignInNotification>;
}

/// @nodoc
class _$SignInNotificationCopyWithImpl<$Res, $Val extends SignInNotification>
    implements $SignInNotificationCopyWith<$Res> {
  _$SignInNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignInNotificationSuccessCopyWith<$Res> {
  factory _$$_SignInNotificationSuccessCopyWith(
          _$_SignInNotificationSuccess value,
          $Res Function(_$_SignInNotificationSuccess) then) =
      __$$_SignInNotificationSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInNotificationSuccessCopyWithImpl<$Res>
    extends _$SignInNotificationCopyWithImpl<$Res, _$_SignInNotificationSuccess>
    implements _$$_SignInNotificationSuccessCopyWith<$Res> {
  __$$_SignInNotificationSuccessCopyWithImpl(
      _$_SignInNotificationSuccess _value,
      $Res Function(_$_SignInNotificationSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInNotificationSuccess implements _SignInNotificationSuccess {
  const _$_SignInNotificationSuccess();

  @override
  String toString() {
    return 'SignInNotification.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInNotificationSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SignInFailure failure) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SignInFailure failure)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SignInFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInNotificationSuccess value) success,
    required TResult Function(_SignInNotificationFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInNotificationSuccess value)? success,
    TResult? Function(_SignInNotificationFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInNotificationSuccess value)? success,
    TResult Function(_SignInNotificationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SignInNotificationSuccess implements SignInNotification {
  const factory _SignInNotificationSuccess() = _$_SignInNotificationSuccess;
}

/// @nodoc
abstract class _$$_SignInNotificationFailureCopyWith<$Res> {
  factory _$$_SignInNotificationFailureCopyWith(
          _$_SignInNotificationFailure value,
          $Res Function(_$_SignInNotificationFailure) then) =
      __$$_SignInNotificationFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInFailure failure});

  $SignInFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_SignInNotificationFailureCopyWithImpl<$Res>
    extends _$SignInNotificationCopyWithImpl<$Res, _$_SignInNotificationFailure>
    implements _$$_SignInNotificationFailureCopyWith<$Res> {
  __$$_SignInNotificationFailureCopyWithImpl(
      _$_SignInNotificationFailure _value,
      $Res Function(_$_SignInNotificationFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_SignInNotificationFailure(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SignInFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInFailureCopyWith<$Res> get failure {
    return $SignInFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_SignInNotificationFailure implements _SignInNotificationFailure {
  const _$_SignInNotificationFailure({required this.failure});

  @override
  final SignInFailure failure;

  @override
  String toString() {
    return 'SignInNotification.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInNotificationFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInNotificationFailureCopyWith<_$_SignInNotificationFailure>
      get copyWith => __$$_SignInNotificationFailureCopyWithImpl<
          _$_SignInNotificationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SignInFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SignInFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SignInFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInNotificationSuccess value) success,
    required TResult Function(_SignInNotificationFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInNotificationSuccess value)? success,
    TResult? Function(_SignInNotificationFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInNotificationSuccess value)? success,
    TResult Function(_SignInNotificationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SignInNotificationFailure implements SignInNotification {
  const factory _SignInNotificationFailure(
      {required final SignInFailure failure}) = _$_SignInNotificationFailure;

  SignInFailure get failure;
  @JsonKey(ignore: true)
  _$$_SignInNotificationFailureCopyWith<_$_SignInNotificationFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInWithGoogleNotification {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SignInWithGoogleFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SignInWithGoogleFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SignInWithGoogleFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogleSuccess value) success,
    required TResult Function(_SignInWithGoogleNotificationFailure value)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithGoogleSuccess value)? success,
    TResult? Function(_SignInWithGoogleNotificationFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogleSuccess value)? success,
    TResult Function(_SignInWithGoogleNotificationFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithGoogleNotificationCopyWith<$Res> {
  factory $SignInWithGoogleNotificationCopyWith(
          SignInWithGoogleNotification value,
          $Res Function(SignInWithGoogleNotification) then) =
      _$SignInWithGoogleNotificationCopyWithImpl<$Res,
          SignInWithGoogleNotification>;
}

/// @nodoc
class _$SignInWithGoogleNotificationCopyWithImpl<$Res,
        $Val extends SignInWithGoogleNotification>
    implements $SignInWithGoogleNotificationCopyWith<$Res> {
  _$SignInWithGoogleNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignInWithGoogleSuccessCopyWith<$Res> {
  factory _$$_SignInWithGoogleSuccessCopyWith(_$_SignInWithGoogleSuccess value,
          $Res Function(_$_SignInWithGoogleSuccess) then) =
      __$$_SignInWithGoogleSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithGoogleSuccessCopyWithImpl<$Res>
    extends _$SignInWithGoogleNotificationCopyWithImpl<$Res,
        _$_SignInWithGoogleSuccess>
    implements _$$_SignInWithGoogleSuccessCopyWith<$Res> {
  __$$_SignInWithGoogleSuccessCopyWithImpl(_$_SignInWithGoogleSuccess _value,
      $Res Function(_$_SignInWithGoogleSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInWithGoogleSuccess implements _SignInWithGoogleSuccess {
  const _$_SignInWithGoogleSuccess();

  @override
  String toString() {
    return 'SignInWithGoogleNotification.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithGoogleSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SignInWithGoogleFailure failure) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SignInWithGoogleFailure failure)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SignInWithGoogleFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogleSuccess value) success,
    required TResult Function(_SignInWithGoogleNotificationFailure value)
        failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithGoogleSuccess value)? success,
    TResult? Function(_SignInWithGoogleNotificationFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogleSuccess value)? success,
    TResult Function(_SignInWithGoogleNotificationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogleSuccess
    implements SignInWithGoogleNotification {
  const factory _SignInWithGoogleSuccess() = _$_SignInWithGoogleSuccess;
}

/// @nodoc
abstract class _$$_SignInWithGoogleNotificationFailureCopyWith<$Res> {
  factory _$$_SignInWithGoogleNotificationFailureCopyWith(
          _$_SignInWithGoogleNotificationFailure value,
          $Res Function(_$_SignInWithGoogleNotificationFailure) then) =
      __$$_SignInWithGoogleNotificationFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInWithGoogleFailure failure});
}

/// @nodoc
class __$$_SignInWithGoogleNotificationFailureCopyWithImpl<$Res>
    extends _$SignInWithGoogleNotificationCopyWithImpl<$Res,
        _$_SignInWithGoogleNotificationFailure>
    implements _$$_SignInWithGoogleNotificationFailureCopyWith<$Res> {
  __$$_SignInWithGoogleNotificationFailureCopyWithImpl(
      _$_SignInWithGoogleNotificationFailure _value,
      $Res Function(_$_SignInWithGoogleNotificationFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_SignInWithGoogleNotificationFailure(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SignInWithGoogleFailure,
    ));
  }
}

/// @nodoc

class _$_SignInWithGoogleNotificationFailure
    implements _SignInWithGoogleNotificationFailure {
  const _$_SignInWithGoogleNotificationFailure({required this.failure});

  @override
  final SignInWithGoogleFailure failure;

  @override
  String toString() {
    return 'SignInWithGoogleNotification.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithGoogleNotificationFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInWithGoogleNotificationFailureCopyWith<
          _$_SignInWithGoogleNotificationFailure>
      get copyWith => __$$_SignInWithGoogleNotificationFailureCopyWithImpl<
          _$_SignInWithGoogleNotificationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SignInWithGoogleFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SignInWithGoogleFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SignInWithGoogleFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogleSuccess value) success,
    required TResult Function(_SignInWithGoogleNotificationFailure value)
        failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithGoogleSuccess value)? success,
    TResult? Function(_SignInWithGoogleNotificationFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogleSuccess value)? success,
    TResult Function(_SignInWithGoogleNotificationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogleNotificationFailure
    implements SignInWithGoogleNotification {
  const factory _SignInWithGoogleNotificationFailure(
          {required final SignInWithGoogleFailure failure}) =
      _$_SignInWithGoogleNotificationFailure;

  SignInWithGoogleFailure get failure;
  @JsonKey(ignore: true)
  _$$_SignInWithGoogleNotificationFailureCopyWith<
          _$_SignInWithGoogleNotificationFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInWithFacebookNotification {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SignInWithFacebookFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SignInWithFacebookFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SignInWithFacebookFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithFacebookSuccess value) success,
    required TResult Function(_SignInWithFacebookFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithFacebookSuccess value)? success,
    TResult? Function(_SignInWithFacebookFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithFacebookSuccess value)? success,
    TResult Function(_SignInWithFacebookFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithFacebookNotificationCopyWith<$Res> {
  factory $SignInWithFacebookNotificationCopyWith(
          SignInWithFacebookNotification value,
          $Res Function(SignInWithFacebookNotification) then) =
      _$SignInWithFacebookNotificationCopyWithImpl<$Res,
          SignInWithFacebookNotification>;
}

/// @nodoc
class _$SignInWithFacebookNotificationCopyWithImpl<$Res,
        $Val extends SignInWithFacebookNotification>
    implements $SignInWithFacebookNotificationCopyWith<$Res> {
  _$SignInWithFacebookNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignInWithFacebookSuccessCopyWith<$Res> {
  factory _$$_SignInWithFacebookSuccessCopyWith(
          _$_SignInWithFacebookSuccess value,
          $Res Function(_$_SignInWithFacebookSuccess) then) =
      __$$_SignInWithFacebookSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithFacebookSuccessCopyWithImpl<$Res>
    extends _$SignInWithFacebookNotificationCopyWithImpl<$Res,
        _$_SignInWithFacebookSuccess>
    implements _$$_SignInWithFacebookSuccessCopyWith<$Res> {
  __$$_SignInWithFacebookSuccessCopyWithImpl(
      _$_SignInWithFacebookSuccess _value,
      $Res Function(_$_SignInWithFacebookSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInWithFacebookSuccess implements _SignInWithFacebookSuccess {
  const _$_SignInWithFacebookSuccess();

  @override
  String toString() {
    return 'SignInWithFacebookNotification.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithFacebookSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SignInWithFacebookFailure failure) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SignInWithFacebookFailure failure)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SignInWithFacebookFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithFacebookSuccess value) success,
    required TResult Function(_SignInWithFacebookFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithFacebookSuccess value)? success,
    TResult? Function(_SignInWithFacebookFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithFacebookSuccess value)? success,
    TResult Function(_SignInWithFacebookFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SignInWithFacebookSuccess
    implements SignInWithFacebookNotification {
  const factory _SignInWithFacebookSuccess() = _$_SignInWithFacebookSuccess;
}

/// @nodoc
abstract class _$$_SignInWithFacebookFailureCopyWith<$Res> {
  factory _$$_SignInWithFacebookFailureCopyWith(
          _$_SignInWithFacebookFailure value,
          $Res Function(_$_SignInWithFacebookFailure) then) =
      __$$_SignInWithFacebookFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInWithFacebookFailure failure});
}

/// @nodoc
class __$$_SignInWithFacebookFailureCopyWithImpl<$Res>
    extends _$SignInWithFacebookNotificationCopyWithImpl<$Res,
        _$_SignInWithFacebookFailure>
    implements _$$_SignInWithFacebookFailureCopyWith<$Res> {
  __$$_SignInWithFacebookFailureCopyWithImpl(
      _$_SignInWithFacebookFailure _value,
      $Res Function(_$_SignInWithFacebookFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_SignInWithFacebookFailure(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SignInWithFacebookFailure,
    ));
  }
}

/// @nodoc

class _$_SignInWithFacebookFailure implements _SignInWithFacebookFailure {
  const _$_SignInWithFacebookFailure({required this.failure});

  @override
  final SignInWithFacebookFailure failure;

  @override
  String toString() {
    return 'SignInWithFacebookNotification.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithFacebookFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInWithFacebookFailureCopyWith<_$_SignInWithFacebookFailure>
      get copyWith => __$$_SignInWithFacebookFailureCopyWithImpl<
          _$_SignInWithFacebookFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SignInWithFacebookFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SignInWithFacebookFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SignInWithFacebookFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithFacebookSuccess value) success,
    required TResult Function(_SignInWithFacebookFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithFacebookSuccess value)? success,
    TResult? Function(_SignInWithFacebookFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithFacebookSuccess value)? success,
    TResult Function(_SignInWithFacebookFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SignInWithFacebookFailure
    implements SignInWithFacebookNotification {
  const factory _SignInWithFacebookFailure(
          {required final SignInWithFacebookFailure failure}) =
      _$_SignInWithFacebookFailure;

  SignInWithFacebookFailure get failure;
  @JsonKey(ignore: true)
  _$$_SignInWithFacebookFailureCopyWith<_$_SignInWithFacebookFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetUserDataNotification {
  Failure get failure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUserFailure failure) failure,
    required TResult Function(GetUserWithGoogleFailure failure)
        failureWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetUserFailure failure)? failure,
    TResult? Function(GetUserWithGoogleFailure failure)? failureWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUserFailure failure)? failure,
    TResult Function(GetUserWithGoogleFailure failure)? failureWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDataFailure value) failure,
    required TResult Function(_GetUserDataWithGoogleFailure value)
        failureWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserDataFailure value)? failure,
    TResult? Function(_GetUserDataWithGoogleFailure value)? failureWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDataFailure value)? failure,
    TResult Function(_GetUserDataWithGoogleFailure value)? failureWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserDataNotificationCopyWith<$Res> {
  factory $GetUserDataNotificationCopyWith(GetUserDataNotification value,
          $Res Function(GetUserDataNotification) then) =
      _$GetUserDataNotificationCopyWithImpl<$Res, GetUserDataNotification>;
}

/// @nodoc
class _$GetUserDataNotificationCopyWithImpl<$Res,
        $Val extends GetUserDataNotification>
    implements $GetUserDataNotificationCopyWith<$Res> {
  _$GetUserDataNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetUserDataFailureCopyWith<$Res> {
  factory _$$_GetUserDataFailureCopyWith(_$_GetUserDataFailure value,
          $Res Function(_$_GetUserDataFailure) then) =
      __$$_GetUserDataFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({GetUserFailure failure});

  $GetUserFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_GetUserDataFailureCopyWithImpl<$Res>
    extends _$GetUserDataNotificationCopyWithImpl<$Res, _$_GetUserDataFailure>
    implements _$$_GetUserDataFailureCopyWith<$Res> {
  __$$_GetUserDataFailureCopyWithImpl(
      _$_GetUserDataFailure _value, $Res Function(_$_GetUserDataFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_GetUserDataFailure(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GetUserFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GetUserFailureCopyWith<$Res> get failure {
    return $GetUserFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_GetUserDataFailure implements _GetUserDataFailure {
  const _$_GetUserDataFailure({required this.failure});

  @override
  final GetUserFailure failure;

  @override
  String toString() {
    return 'GetUserDataNotification.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUserDataFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetUserDataFailureCopyWith<_$_GetUserDataFailure> get copyWith =>
      __$$_GetUserDataFailureCopyWithImpl<_$_GetUserDataFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUserFailure failure) failure,
    required TResult Function(GetUserWithGoogleFailure failure)
        failureWithGoogle,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetUserFailure failure)? failure,
    TResult? Function(GetUserWithGoogleFailure failure)? failureWithGoogle,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUserFailure failure)? failure,
    TResult Function(GetUserWithGoogleFailure failure)? failureWithGoogle,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDataFailure value) failure,
    required TResult Function(_GetUserDataWithGoogleFailure value)
        failureWithGoogle,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserDataFailure value)? failure,
    TResult? Function(_GetUserDataWithGoogleFailure value)? failureWithGoogle,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDataFailure value)? failure,
    TResult Function(_GetUserDataWithGoogleFailure value)? failureWithGoogle,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _GetUserDataFailure implements GetUserDataNotification {
  const factory _GetUserDataFailure({required final GetUserFailure failure}) =
      _$_GetUserDataFailure;

  @override
  GetUserFailure get failure;
  @JsonKey(ignore: true)
  _$$_GetUserDataFailureCopyWith<_$_GetUserDataFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetUserDataWithGoogleFailureCopyWith<$Res> {
  factory _$$_GetUserDataWithGoogleFailureCopyWith(
          _$_GetUserDataWithGoogleFailure value,
          $Res Function(_$_GetUserDataWithGoogleFailure) then) =
      __$$_GetUserDataWithGoogleFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({GetUserWithGoogleFailure failure});
}

/// @nodoc
class __$$_GetUserDataWithGoogleFailureCopyWithImpl<$Res>
    extends _$GetUserDataNotificationCopyWithImpl<$Res,
        _$_GetUserDataWithGoogleFailure>
    implements _$$_GetUserDataWithGoogleFailureCopyWith<$Res> {
  __$$_GetUserDataWithGoogleFailureCopyWithImpl(
      _$_GetUserDataWithGoogleFailure _value,
      $Res Function(_$_GetUserDataWithGoogleFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_GetUserDataWithGoogleFailure(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GetUserWithGoogleFailure,
    ));
  }
}

/// @nodoc

class _$_GetUserDataWithGoogleFailure implements _GetUserDataWithGoogleFailure {
  const _$_GetUserDataWithGoogleFailure({required this.failure});

  @override
  final GetUserWithGoogleFailure failure;

  @override
  String toString() {
    return 'GetUserDataNotification.failureWithGoogle(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUserDataWithGoogleFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetUserDataWithGoogleFailureCopyWith<_$_GetUserDataWithGoogleFailure>
      get copyWith => __$$_GetUserDataWithGoogleFailureCopyWithImpl<
          _$_GetUserDataWithGoogleFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUserFailure failure) failure,
    required TResult Function(GetUserWithGoogleFailure failure)
        failureWithGoogle,
  }) {
    return failureWithGoogle(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetUserFailure failure)? failure,
    TResult? Function(GetUserWithGoogleFailure failure)? failureWithGoogle,
  }) {
    return failureWithGoogle?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUserFailure failure)? failure,
    TResult Function(GetUserWithGoogleFailure failure)? failureWithGoogle,
    required TResult orElse(),
  }) {
    if (failureWithGoogle != null) {
      return failureWithGoogle(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDataFailure value) failure,
    required TResult Function(_GetUserDataWithGoogleFailure value)
        failureWithGoogle,
  }) {
    return failureWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserDataFailure value)? failure,
    TResult? Function(_GetUserDataWithGoogleFailure value)? failureWithGoogle,
  }) {
    return failureWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDataFailure value)? failure,
    TResult Function(_GetUserDataWithGoogleFailure value)? failureWithGoogle,
    required TResult orElse(),
  }) {
    if (failureWithGoogle != null) {
      return failureWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _GetUserDataWithGoogleFailure
    implements GetUserDataNotification {
  const factory _GetUserDataWithGoogleFailure(
          {required final GetUserWithGoogleFailure failure}) =
      _$_GetUserDataWithGoogleFailure;

  @override
  GetUserWithGoogleFailure get failure;
  @JsonKey(ignore: true)
  _$$_GetUserDataWithGoogleFailureCopyWith<_$_GetUserDataWithGoogleFailure>
      get copyWith => throw _privateConstructorUsedError;
}
