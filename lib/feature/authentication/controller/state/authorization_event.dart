import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_event.freezed.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.initialization() =
      _AuthorizationInitializationEvent;
  const factory AuthorizationEvent.signIn() = _AuthorizationSignInEvent;
  const factory AuthorizationEvent.signInWithGoogle() =
      _AuthorizationSignInWithGoogleEvent;
  const factory AuthorizationEvent.signInWithFacebook() =
      _AuthorizationSignInWithFacebookEvent;
  const factory AuthorizationEvent.signOut() = _AuthorizationSignOutEvent;
  const factory AuthorizationEvent.signUp() = _AuthorizationSIgnUpEvent;
}
