import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class SignInDataSource {
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<bool> signInWithGoogle();

  Future<bool> signInWithFacebook();
}

class SignInDateSourceImpl extends SignInDataSource {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final OAuthCredential Function({String? idToken, String? accessToken})
      _oAuthCreater;
  final FacebookAuth _facebookAuth;

  SignInDateSourceImpl({
    required FirebaseAuth firebaseAuth,
    required GoogleSignIn googleSignIn,
    required OAuthCredential Function({String? idToken, String? accessToken})
        oAuthCreater,
    required FacebookAuth facebookAuth,
  })  : _firebaseAuth = firebaseAuth,
        _googleSignIn = googleSignIn,
        _oAuthCreater = oAuthCreater,
        _facebookAuth = facebookAuth;

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

  @override
  Future<bool> signInWithGoogle() async {
    final user = await _googleSignIn.signIn();
    if (user == null) return false;
    final auth = await user.authentication;
    final credential = _oAuthCreater(
      accessToken: auth.accessToken,
      idToken: auth.idToken,
    );
    await _firebaseAuth.signInWithCredential(credential);
    return true;
  }

  @override
  Future<bool> signInWithFacebook() async {
    final result =
        await _facebookAuth.login(permissions: ['public_profile', 'email']);
    return result.status == LoginStatus.success;
  }
}
