import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/feature/sign_up/data/datasource/firebase_sign_up_data_source.dart';
import 'package:flutter_chat/feature/sign_up/data/model/user_model.dart';
import 'package:flutter_chat/feature/sign_up/domain/repository/firebase_sign_up_repository.dart';

class FirebaseSignUpRepositoryImpl extends FirebaseSignUpRepository {
  final FirebaseSignUpDataSource _firebaseAuthDataSource;

  FirebaseSignUpRepositoryImpl(this._firebaseAuthDataSource);

  @override
  Future<Either<SignUpFailure, UserCredential>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final createUserResult = await _firebaseAuthDataSource
          .createUserWithEmailAndPassword(email: email, password: password);
      return Right(createUserResult);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          return const Left(SignUpFailure.emailAlreadyInUse());
        case 'invalid-email':
          return const Left(SignUpFailure.invalidEmail());
        case 'operation-not-allowed':
          return const Left(SignUpFailure.operationNotAllowed());
        case 'weak-password':
          return const Left(SignUpFailure.weakPassword());
        default:
          return const Left(SignUpFailure.unknown());
      }
    } catch (e) {
      return const Left(SignUpFailure.unknown());
    }
  }

  @override
  Future<Either<UploadAvatarFailure, String>> uploadAvatar({
    required String childName,
    required Uint8List file,
    required String uid,
  }) async {
    try {
      final downloadedUrl = await _firebaseAuthDataSource.uploadAvatar(
          childName: childName, file: file, uid: uid);
      return Right(downloadedUrl);
    } catch (_) {
      return Left(UploadAvatarFailure());
    }
  }

  @override
  Future<Either<AddUserDataFailure, void>> addUserData({
    required UserModel userModel,
    required String uid,
  }) async {
    try {
      final result = await _firebaseAuthDataSource.addUserData(
          userModel: userModel, uid: uid);
      return Right(result);
    } catch (_) {
      return Left(AddUserDataFailure());
    }
  }

  @override
  Future<Either<DeleteUserFailure, void>?> deleteUser() async {
    try {
      final deleteUserResult = await _firebaseAuthDataSource.deleteUser();
      return Right(deleteUserResult);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'requires-recent-login':
          return const Left(DeleteUserFailure.requiresRecentLogin());
      }
    } catch (_) {
      return const Left(DeleteUserFailure.unknown());
    }

    return null;
  }
}
