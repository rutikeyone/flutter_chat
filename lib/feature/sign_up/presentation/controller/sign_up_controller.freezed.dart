// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  File? get photoFile => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  LastName get lastName => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Login get login => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  SignUpProcessState get registrationProcessState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {File? photoFile,
      Name name,
      LastName lastName,
      Email email,
      Login login,
      Password password,
      FormzStatus status,
      SignUpProcessState registrationProcessState});

  $SignUpProcessStateCopyWith<$Res> get registrationProcessState;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoFile = freezed,
    Object? name = null,
    Object? lastName = null,
    Object? email = null,
    Object? login = null,
    Object? password = null,
    Object? status = null,
    Object? registrationProcessState = null,
  }) {
    return _then(_value.copyWith(
      photoFile: freezed == photoFile
          ? _value.photoFile
          : photoFile // ignore: cast_nullable_to_non_nullable
              as File?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      registrationProcessState: null == registrationProcessState
          ? _value.registrationProcessState
          : registrationProcessState // ignore: cast_nullable_to_non_nullable
              as SignUpProcessState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpProcessStateCopyWith<$Res> get registrationProcessState {
    return $SignUpProcessStateCopyWith<$Res>(_value.registrationProcessState,
        (value) {
      return _then(_value.copyWith(registrationProcessState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {File? photoFile,
      Name name,
      LastName lastName,
      Email email,
      Login login,
      Password password,
      FormzStatus status,
      SignUpProcessState registrationProcessState});

  @override
  $SignUpProcessStateCopyWith<$Res> get registrationProcessState;
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_SignUpState>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoFile = freezed,
    Object? name = null,
    Object? lastName = null,
    Object? email = null,
    Object? login = null,
    Object? password = null,
    Object? status = null,
    Object? registrationProcessState = null,
  }) {
    return _then(_$_SignUpState(
      photoFile: freezed == photoFile
          ? _value.photoFile
          : photoFile // ignore: cast_nullable_to_non_nullable
              as File?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      registrationProcessState: null == registrationProcessState
          ? _value.registrationProcessState
          : registrationProcessState // ignore: cast_nullable_to_non_nullable
              as SignUpProcessState,
    ));
  }
}

/// @nodoc

class _$_SignUpState extends _SignUpState {
  const _$_SignUpState(
      {this.photoFile = null,
      this.name = const Name.pure(),
      this.lastName = const LastName.pure(),
      this.email = const Email.pure(),
      this.login = const Login.pure(),
      this.password = const Password.pure(),
      this.status = FormzStatus.pure,
      this.registrationProcessState = const SignUpProcessState.pure()})
      : super._();

  @override
  @JsonKey()
  final File? photoFile;
  @override
  @JsonKey()
  final Name name;
  @override
  @JsonKey()
  final LastName lastName;
  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Login login;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final SignUpProcessState registrationProcessState;

  @override
  String toString() {
    return 'SignUpState(photoFile: $photoFile, name: $name, lastName: $lastName, email: $email, login: $login, password: $password, status: $status, registrationProcessState: $registrationProcessState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            (identical(other.photoFile, photoFile) ||
                other.photoFile == photoFile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(
                    other.registrationProcessState, registrationProcessState) ||
                other.registrationProcessState == registrationProcessState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photoFile, name, lastName, email,
      login, password, status, registrationProcessState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState extends SignUpState {
  const factory _SignUpState(
      {final File? photoFile,
      final Name name,
      final LastName lastName,
      final Email email,
      final Login login,
      final Password password,
      final FormzStatus status,
      final SignUpProcessState registrationProcessState}) = _$_SignUpState;
  const _SignUpState._() : super._();

  @override
  File? get photoFile;
  @override
  Name get name;
  @override
  LastName get lastName;
  @override
  Email get email;
  @override
  Login get login;
  @override
  Password get password;
  @override
  FormzStatus get status;
  @override
  SignUpProcessState get registrationProcessState;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpProcessPure value) pure,
    required TResult Function(_SignUpProcessLoading value) loading,
    required TResult Function(_SignUpProcessSuccess value) success,
    required TResult Function(_SignUpProcessFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpProcessPure value)? pure,
    TResult? Function(_SignUpProcessLoading value)? loading,
    TResult? Function(_SignUpProcessSuccess value)? success,
    TResult? Function(_SignUpProcessFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpProcessPure value)? pure,
    TResult Function(_SignUpProcessLoading value)? loading,
    TResult Function(_SignUpProcessSuccess value)? success,
    TResult Function(_SignUpProcessFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpProcessStateCopyWith<$Res> {
  factory $SignUpProcessStateCopyWith(
          SignUpProcessState value, $Res Function(SignUpProcessState) then) =
      _$SignUpProcessStateCopyWithImpl<$Res, SignUpProcessState>;
}

/// @nodoc
class _$SignUpProcessStateCopyWithImpl<$Res, $Val extends SignUpProcessState>
    implements $SignUpProcessStateCopyWith<$Res> {
  _$SignUpProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignUpProcessPureCopyWith<$Res> {
  factory _$$_SignUpProcessPureCopyWith(_$_SignUpProcessPure value,
          $Res Function(_$_SignUpProcessPure) then) =
      __$$_SignUpProcessPureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpProcessPureCopyWithImpl<$Res>
    extends _$SignUpProcessStateCopyWithImpl<$Res, _$_SignUpProcessPure>
    implements _$$_SignUpProcessPureCopyWith<$Res> {
  __$$_SignUpProcessPureCopyWithImpl(
      _$_SignUpProcessPure _value, $Res Function(_$_SignUpProcessPure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUpProcessPure implements _SignUpProcessPure {
  const _$_SignUpProcessPure();

  @override
  String toString() {
    return 'SignUpProcessState.pure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUpProcessPure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return pure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return pure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpProcessPure value) pure,
    required TResult Function(_SignUpProcessLoading value) loading,
    required TResult Function(_SignUpProcessSuccess value) success,
    required TResult Function(_SignUpProcessFailure value) failure,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpProcessPure value)? pure,
    TResult? Function(_SignUpProcessLoading value)? loading,
    TResult? Function(_SignUpProcessSuccess value)? success,
    TResult? Function(_SignUpProcessFailure value)? failure,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpProcessPure value)? pure,
    TResult Function(_SignUpProcessLoading value)? loading,
    TResult Function(_SignUpProcessSuccess value)? success,
    TResult Function(_SignUpProcessFailure value)? failure,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }
}

abstract class _SignUpProcessPure implements SignUpProcessState {
  const factory _SignUpProcessPure() = _$_SignUpProcessPure;
}

/// @nodoc
abstract class _$$_SignUpProcessLoadingCopyWith<$Res> {
  factory _$$_SignUpProcessLoadingCopyWith(_$_SignUpProcessLoading value,
          $Res Function(_$_SignUpProcessLoading) then) =
      __$$_SignUpProcessLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpProcessLoadingCopyWithImpl<$Res>
    extends _$SignUpProcessStateCopyWithImpl<$Res, _$_SignUpProcessLoading>
    implements _$$_SignUpProcessLoadingCopyWith<$Res> {
  __$$_SignUpProcessLoadingCopyWithImpl(_$_SignUpProcessLoading _value,
      $Res Function(_$_SignUpProcessLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUpProcessLoading implements _SignUpProcessLoading {
  const _$_SignUpProcessLoading();

  @override
  String toString() {
    return 'SignUpProcessState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUpProcessLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpProcessPure value) pure,
    required TResult Function(_SignUpProcessLoading value) loading,
    required TResult Function(_SignUpProcessSuccess value) success,
    required TResult Function(_SignUpProcessFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpProcessPure value)? pure,
    TResult? Function(_SignUpProcessLoading value)? loading,
    TResult? Function(_SignUpProcessSuccess value)? success,
    TResult? Function(_SignUpProcessFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpProcessPure value)? pure,
    TResult Function(_SignUpProcessLoading value)? loading,
    TResult Function(_SignUpProcessSuccess value)? success,
    TResult Function(_SignUpProcessFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SignUpProcessLoading implements SignUpProcessState {
  const factory _SignUpProcessLoading() = _$_SignUpProcessLoading;
}

/// @nodoc
abstract class _$$_SignUpProcessSuccessCopyWith<$Res> {
  factory _$$_SignUpProcessSuccessCopyWith(_$_SignUpProcessSuccess value,
          $Res Function(_$_SignUpProcessSuccess) then) =
      __$$_SignUpProcessSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpProcessSuccessCopyWithImpl<$Res>
    extends _$SignUpProcessStateCopyWithImpl<$Res, _$_SignUpProcessSuccess>
    implements _$$_SignUpProcessSuccessCopyWith<$Res> {
  __$$_SignUpProcessSuccessCopyWithImpl(_$_SignUpProcessSuccess _value,
      $Res Function(_$_SignUpProcessSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUpProcessSuccess implements _SignUpProcessSuccess {
  const _$_SignUpProcessSuccess();

  @override
  String toString() {
    return 'SignUpProcessState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUpProcessSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
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
    required TResult Function(_SignUpProcessPure value) pure,
    required TResult Function(_SignUpProcessLoading value) loading,
    required TResult Function(_SignUpProcessSuccess value) success,
    required TResult Function(_SignUpProcessFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpProcessPure value)? pure,
    TResult? Function(_SignUpProcessLoading value)? loading,
    TResult? Function(_SignUpProcessSuccess value)? success,
    TResult? Function(_SignUpProcessFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpProcessPure value)? pure,
    TResult Function(_SignUpProcessLoading value)? loading,
    TResult Function(_SignUpProcessSuccess value)? success,
    TResult Function(_SignUpProcessFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SignUpProcessSuccess implements SignUpProcessState {
  const factory _SignUpProcessSuccess() = _$_SignUpProcessSuccess;
}

/// @nodoc
abstract class _$$_SignUpProcessFailureCopyWith<$Res> {
  factory _$$_SignUpProcessFailureCopyWith(_$_SignUpProcessFailure value,
          $Res Function(_$_SignUpProcessFailure) then) =
      __$$_SignUpProcessFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpProcessFailureCopyWithImpl<$Res>
    extends _$SignUpProcessStateCopyWithImpl<$Res, _$_SignUpProcessFailure>
    implements _$$_SignUpProcessFailureCopyWith<$Res> {
  __$$_SignUpProcessFailureCopyWithImpl(_$_SignUpProcessFailure _value,
      $Res Function(_$_SignUpProcessFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUpProcessFailure implements _SignUpProcessFailure {
  const _$_SignUpProcessFailure();

  @override
  String toString() {
    return 'SignUpProcessState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUpProcessFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpProcessPure value) pure,
    required TResult Function(_SignUpProcessLoading value) loading,
    required TResult Function(_SignUpProcessSuccess value) success,
    required TResult Function(_SignUpProcessFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpProcessPure value)? pure,
    TResult? Function(_SignUpProcessLoading value)? loading,
    TResult? Function(_SignUpProcessSuccess value)? success,
    TResult? Function(_SignUpProcessFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpProcessPure value)? pure,
    TResult Function(_SignUpProcessLoading value)? loading,
    TResult Function(_SignUpProcessSuccess value)? success,
    TResult Function(_SignUpProcessFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SignUpProcessFailure implements SignUpProcessState {
  const factory _SignUpProcessFailure() = _$_SignUpProcessFailure;
}
