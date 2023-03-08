import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/feature/authentication/data/data_source/authentication_data_source.dart';
import 'package:flutter_chat/feature/authentication/domain/repository/authentication_repository.dart';
import 'package:flutter_chat/feature/sign_up/domain/entity/user_entity.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final AuthenticationDataSource _authenticationDataSource;

  const AuthenticationRepositoryImpl(this._authenticationDataSource);

  @override
  Future<Either<SignOutFailure, void>> signOut() async {
    try {
      return Right(await Future.value(_authenticationDataSource.signOut()));
    } catch (_) {
      return Left(SignOutFailure());
    }
  }

  @override
  User? get user => _authenticationDataSource.user;

  @override
  Future<Either<GetUserFailure, UserEntity>> getUserData(String userId) async {
    try {
      final userEntity = await _authenticationDataSource.getUserData(userId);
      if (userEntity != null) {
        return Right(userEntity);
      } else {
        return const Left(GetUserFailure.notData());
      }
    } catch (_) {
      return const Left(GetUserFailure.unknown());
    }
  }

  @override
  Future<Either<GetUserWithGoogleFailure, UserEntity?>>
      getUserDataWithGoogle() async {
    try {
      final userEntity =
          await _authenticationDataSource.getUserDataWithGoogle();
      return Right(userEntity);
    } catch (_) {
      return Left(GetUserWithGoogleFailure());
    }
  }

  @override
  Future<Either<GetUserWithFacebookFailure, UserEntity>>
      getUserWithFacebook() async {
    try {
      return Right(await _authenticationDataSource.getUserDataWithFacebook());
    } catch (_) {
      return Left(GetUserWithFacebookFailure());
    }
  }
}
