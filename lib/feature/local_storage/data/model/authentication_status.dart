import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_status.freezed.dart';
part 'authentication_status.g.dart';

@freezed
class AuthenticationStatus with _$AuthenticationStatus {
  const factory AuthenticationStatus.emailAndPassword() =
      _AuthenticationStatusWithEmailAndPassword;
  const factory AuthenticationStatus.google() = _AuthenticationStatusWithGoogle;
  const factory AuthenticationStatus.facebook() =
      _AuthenticationStatusWithFacebook;

  factory AuthenticationStatus.fromJson(Map<String, Object?> json) =>
      _$AuthenticationStatusFromJson(json);
}
