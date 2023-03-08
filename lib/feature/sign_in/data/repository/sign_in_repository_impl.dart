import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/feature/sign_in/data/data_source/sign_in_data_source.dart';
import 'package:flutter_chat/feature/sign_in/domain/repository/sign_in_repository.dart';

class SignInRepositoryImpl extends SignInRepository {
  final SignInDataSource signInDataSource;

  SignInRepositoryImpl(this.signInDataSource);

  @override
  Future<Either<SignInFailure, void>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      return Right(await signInDataSource.signInWithEmailAndPassword(
          email: email, password: password));
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          return const Left(SignInFailure.invalidEmail());
        case 'user-disabled':
          return const Left(SignInFailure.userDisabled());
        case 'user-not-found':
          return const Left(SignInFailure.userNotFound());
        case 'wrong-password':
          return const Left(SignInFailure.wrongPassword());
        default:
          return const Left(SignInFailure.unknown());
      }
    } catch (e) {
      return const Left(SignInFailure.unknown());
    }
  }

  @override
  Future<Either<SignInWithGoogleFailure, bool>> signInWithGoogle() async {
    try {
      return Right(await signInDataSource.signInWithGoogle());
    } catch (_) {
      return Left(SignInWithGoogleFailure());
    }
  }

  @override
  Future<Either<SignInWithFacebookFailure, bool>> signInWithFacebook() async {
    try {
      return Right(await signInDataSource.signInWithFacebook());
    } catch (_) {
      return Left(SignInWithFacebookFailure());
    }
  }
}
