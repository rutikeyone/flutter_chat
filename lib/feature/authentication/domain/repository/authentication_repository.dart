import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/feature/sign_up/domain/entity/user_entity.dart';

abstract class AuthenticationRepository {
  User? get user;

  const AuthenticationRepository();

  Future<Either<SignOutFailure, void>> signOut();

  Future<Either<FacebookSignOutFailure, void>> facebookSignOut();

  Future<Either<GetUserFailure, UserEntity>> getUserData(String userId);

  Future<Either<GetUserWithGoogleFailure, UserEntity?>> getUserDataWithGoogle();

  Future<Either<GetUserWithFacebookFailure, UserEntity>> getUserWithFacebook();
}
