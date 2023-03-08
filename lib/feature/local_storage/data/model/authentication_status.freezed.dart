// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationStatus _$AuthenticationStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'emailAndPassword':
      return _AuthenticationStatusWithEmailAndPassword.fromJson(json);
    case 'google':
      return _AuthenticationStatusWithGoogle.fromJson(json);
    case 'facebook':
      return _AuthenticationStatusWithFacebook.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'AuthenticationStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthenticationStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAndPassword,
    required TResult Function() google,
    required TResult Function() facebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emailAndPassword,
    TResult? Function()? google,
    TResult? Function()? facebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAndPassword,
    TResult Function()? google,
    TResult Function()? facebook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStatusWithEmailAndPassword value)
        emailAndPassword,
    required TResult Function(_AuthenticationStatusWithGoogle value) google,
    required TResult Function(_AuthenticationStatusWithFacebook value) facebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusWithEmailAndPassword value)?
        emailAndPassword,
    TResult? Function(_AuthenticationStatusWithGoogle value)? google,
    TResult? Function(_AuthenticationStatusWithFacebook value)? facebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusWithEmailAndPassword value)?
        emailAndPassword,
    TResult Function(_AuthenticationStatusWithGoogle value)? google,
    TResult Function(_AuthenticationStatusWithFacebook value)? facebook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStatusCopyWith<$Res> {
  factory $AuthenticationStatusCopyWith(AuthenticationStatus value,
          $Res Function(AuthenticationStatus) then) =
      _$AuthenticationStatusCopyWithImpl<$Res, AuthenticationStatus>;
}

/// @nodoc
class _$AuthenticationStatusCopyWithImpl<$Res,
        $Val extends AuthenticationStatus>
    implements $AuthenticationStatusCopyWith<$Res> {
  _$AuthenticationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthenticationStatusWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_AuthenticationStatusWithEmailAndPasswordCopyWith(
          _$_AuthenticationStatusWithEmailAndPassword value,
          $Res Function(_$_AuthenticationStatusWithEmailAndPassword) then) =
      __$$_AuthenticationStatusWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationStatusWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res,
        _$_AuthenticationStatusWithEmailAndPassword>
    implements _$$_AuthenticationStatusWithEmailAndPasswordCopyWith<$Res> {
  __$$_AuthenticationStatusWithEmailAndPasswordCopyWithImpl(
      _$_AuthenticationStatusWithEmailAndPassword _value,
      $Res Function(_$_AuthenticationStatusWithEmailAndPassword) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationStatusWithEmailAndPassword
    implements _AuthenticationStatusWithEmailAndPassword {
  const _$_AuthenticationStatusWithEmailAndPassword({final String? $type})
      : $type = $type ?? 'emailAndPassword';

  factory _$_AuthenticationStatusWithEmailAndPassword.fromJson(
          Map<String, dynamic> json) =>
      _$$_AuthenticationStatusWithEmailAndPasswordFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationStatus.emailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStatusWithEmailAndPassword);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAndPassword,
    required TResult Function() google,
    required TResult Function() facebook,
  }) {
    return emailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emailAndPassword,
    TResult? Function()? google,
    TResult? Function()? facebook,
  }) {
    return emailAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAndPassword,
    TResult Function()? google,
    TResult Function()? facebook,
    required TResult orElse(),
  }) {
    if (emailAndPassword != null) {
      return emailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStatusWithEmailAndPassword value)
        emailAndPassword,
    required TResult Function(_AuthenticationStatusWithGoogle value) google,
    required TResult Function(_AuthenticationStatusWithFacebook value) facebook,
  }) {
    return emailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusWithEmailAndPassword value)?
        emailAndPassword,
    TResult? Function(_AuthenticationStatusWithGoogle value)? google,
    TResult? Function(_AuthenticationStatusWithFacebook value)? facebook,
  }) {
    return emailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusWithEmailAndPassword value)?
        emailAndPassword,
    TResult Function(_AuthenticationStatusWithGoogle value)? google,
    TResult Function(_AuthenticationStatusWithFacebook value)? facebook,
    required TResult orElse(),
  }) {
    if (emailAndPassword != null) {
      return emailAndPassword(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationStatusWithEmailAndPasswordToJson(
      this,
    );
  }
}

abstract class _AuthenticationStatusWithEmailAndPassword
    implements AuthenticationStatus {
  const factory _AuthenticationStatusWithEmailAndPassword() =
      _$_AuthenticationStatusWithEmailAndPassword;

  factory _AuthenticationStatusWithEmailAndPassword.fromJson(
          Map<String, dynamic> json) =
      _$_AuthenticationStatusWithEmailAndPassword.fromJson;
}

/// @nodoc
abstract class _$$_AuthenticationStatusWithGoogleCopyWith<$Res> {
  factory _$$_AuthenticationStatusWithGoogleCopyWith(
          _$_AuthenticationStatusWithGoogle value,
          $Res Function(_$_AuthenticationStatusWithGoogle) then) =
      __$$_AuthenticationStatusWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationStatusWithGoogleCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res,
        _$_AuthenticationStatusWithGoogle>
    implements _$$_AuthenticationStatusWithGoogleCopyWith<$Res> {
  __$$_AuthenticationStatusWithGoogleCopyWithImpl(
      _$_AuthenticationStatusWithGoogle _value,
      $Res Function(_$_AuthenticationStatusWithGoogle) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationStatusWithGoogle
    implements _AuthenticationStatusWithGoogle {
  const _$_AuthenticationStatusWithGoogle({final String? $type})
      : $type = $type ?? 'google';

  factory _$_AuthenticationStatusWithGoogle.fromJson(
          Map<String, dynamic> json) =>
      _$$_AuthenticationStatusWithGoogleFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationStatus.google()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStatusWithGoogle);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAndPassword,
    required TResult Function() google,
    required TResult Function() facebook,
  }) {
    return google();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emailAndPassword,
    TResult? Function()? google,
    TResult? Function()? facebook,
  }) {
    return google?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAndPassword,
    TResult Function()? google,
    TResult Function()? facebook,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStatusWithEmailAndPassword value)
        emailAndPassword,
    required TResult Function(_AuthenticationStatusWithGoogle value) google,
    required TResult Function(_AuthenticationStatusWithFacebook value) facebook,
  }) {
    return google(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusWithEmailAndPassword value)?
        emailAndPassword,
    TResult? Function(_AuthenticationStatusWithGoogle value)? google,
    TResult? Function(_AuthenticationStatusWithFacebook value)? facebook,
  }) {
    return google?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusWithEmailAndPassword value)?
        emailAndPassword,
    TResult Function(_AuthenticationStatusWithGoogle value)? google,
    TResult Function(_AuthenticationStatusWithFacebook value)? facebook,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationStatusWithGoogleToJson(
      this,
    );
  }
}

abstract class _AuthenticationStatusWithGoogle implements AuthenticationStatus {
  const factory _AuthenticationStatusWithGoogle() =
      _$_AuthenticationStatusWithGoogle;

  factory _AuthenticationStatusWithGoogle.fromJson(Map<String, dynamic> json) =
      _$_AuthenticationStatusWithGoogle.fromJson;
}

/// @nodoc
abstract class _$$_AuthenticationStatusWithFacebookCopyWith<$Res> {
  factory _$$_AuthenticationStatusWithFacebookCopyWith(
          _$_AuthenticationStatusWithFacebook value,
          $Res Function(_$_AuthenticationStatusWithFacebook) then) =
      __$$_AuthenticationStatusWithFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationStatusWithFacebookCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res,
        _$_AuthenticationStatusWithFacebook>
    implements _$$_AuthenticationStatusWithFacebookCopyWith<$Res> {
  __$$_AuthenticationStatusWithFacebookCopyWithImpl(
      _$_AuthenticationStatusWithFacebook _value,
      $Res Function(_$_AuthenticationStatusWithFacebook) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationStatusWithFacebook
    implements _AuthenticationStatusWithFacebook {
  const _$_AuthenticationStatusWithFacebook({final String? $type})
      : $type = $type ?? 'facebook';

  factory _$_AuthenticationStatusWithFacebook.fromJson(
          Map<String, dynamic> json) =>
      _$$_AuthenticationStatusWithFacebookFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationStatus.facebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStatusWithFacebook);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAndPassword,
    required TResult Function() google,
    required TResult Function() facebook,
  }) {
    return facebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emailAndPassword,
    TResult? Function()? google,
    TResult? Function()? facebook,
  }) {
    return facebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAndPassword,
    TResult Function()? google,
    TResult Function()? facebook,
    required TResult orElse(),
  }) {
    if (facebook != null) {
      return facebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStatusWithEmailAndPassword value)
        emailAndPassword,
    required TResult Function(_AuthenticationStatusWithGoogle value) google,
    required TResult Function(_AuthenticationStatusWithFacebook value) facebook,
  }) {
    return facebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusWithEmailAndPassword value)?
        emailAndPassword,
    TResult? Function(_AuthenticationStatusWithGoogle value)? google,
    TResult? Function(_AuthenticationStatusWithFacebook value)? facebook,
  }) {
    return facebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusWithEmailAndPassword value)?
        emailAndPassword,
    TResult Function(_AuthenticationStatusWithGoogle value)? google,
    TResult Function(_AuthenticationStatusWithFacebook value)? facebook,
    required TResult orElse(),
  }) {
    if (facebook != null) {
      return facebook(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationStatusWithFacebookToJson(
      this,
    );
  }
}

abstract class _AuthenticationStatusWithFacebook
    implements AuthenticationStatus {
  const factory _AuthenticationStatusWithFacebook() =
      _$_AuthenticationStatusWithFacebook;

  factory _AuthenticationStatusWithFacebook.fromJson(
      Map<String, dynamic> json) = _$_AuthenticationStatusWithFacebook.fromJson;
}
