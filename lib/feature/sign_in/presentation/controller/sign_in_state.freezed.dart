// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  SignInProcessStatus get processStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {Email email,
      Password password,
      FormzStatus status,
      SignInProcessStatus processStatus});

  $SignInProcessStatusCopyWith<$Res> get processStatus;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? processStatus = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      processStatus: null == processStatus
          ? _value.processStatus
          : processStatus // ignore: cast_nullable_to_non_nullable
              as SignInProcessStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInProcessStatusCopyWith<$Res> get processStatus {
    return $SignInProcessStatusCopyWith<$Res>(_value.processStatus, (value) {
      return _then(_value.copyWith(processStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignInStatusCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStatusCopyWith(
          _$_SignInStatus value, $Res Function(_$_SignInStatus) then) =
      __$$_SignInStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Email email,
      Password password,
      FormzStatus status,
      SignInProcessStatus processStatus});

  @override
  $SignInProcessStatusCopyWith<$Res> get processStatus;
}

/// @nodoc
class __$$_SignInStatusCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInStatus>
    implements _$$_SignInStatusCopyWith<$Res> {
  __$$_SignInStatusCopyWithImpl(
      _$_SignInStatus _value, $Res Function(_$_SignInStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? processStatus = null,
  }) {
    return _then(_$_SignInStatus(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      processStatus: null == processStatus
          ? _value.processStatus
          : processStatus // ignore: cast_nullable_to_non_nullable
              as SignInProcessStatus,
    ));
  }
}

/// @nodoc

class _$_SignInStatus extends _SignInStatus {
  const _$_SignInStatus(
      {this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.status = FormzStatus.pure,
      this.processStatus = const SignInProcessStatus.none()})
      : super._();

  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final SignInProcessStatus processStatus;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, status: $status, processStatus: $processStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInStatus &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processStatus, processStatus) ||
                other.processStatus == processStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, status, processStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInStatusCopyWith<_$_SignInStatus> get copyWith =>
      __$$_SignInStatusCopyWithImpl<_$_SignInStatus>(this, _$identity);
}

abstract class _SignInStatus extends SignInState {
  const factory _SignInStatus(
      {final Email email,
      final Password password,
      final FormzStatus status,
      final SignInProcessStatus processStatus}) = _$_SignInStatus;
  const _SignInStatus._() : super._();

  @override
  Email get email;
  @override
  Password get password;
  @override
  FormzStatus get status;
  @override
  SignInProcessStatus get processStatus;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStatusCopyWith<_$_SignInStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
