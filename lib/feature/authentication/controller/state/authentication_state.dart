import 'package:flutter_chat/feature/sign_up/domain/entity/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unknown() = _AuthenticationUnknownState;
  const factory AuthenticationState.unAuthenticated() =
      _AuthenticationUnAuthenticatedState;
  const factory AuthenticationState.authenticated({required UserEntity user}) =
      _AuthenticatedState;
  const factory AuthenticationState.authenticatedWithGoogle({
    required UserEntity user,
  }) = _AuthenticationWithGoogleState;
  const factory AuthenticationState.authenticatedWithFacebook({
    required UserEntity user,
  }) = _AuthenticationWithFacebookState;
}
