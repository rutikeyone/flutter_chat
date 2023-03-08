import 'package:dartz/dartz.dart';
import 'package:flutter_chat/core/error/failure.dart';

abstract class SignInRepository {
  Future<Either<SignInFailure, void>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<SignInWithGoogleFailure, bool>> signInWithGoogle();

  Future<Either<SignInWithFacebookFailure, bool>> signInWithFacebook();
}
