import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/feature/sign_up/data/model/user_model.dart';

abstract class FirebaseSignUpRepository {
  Future<Either<SignUpFailure, UserCredential>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<UploadAvatarFailure, String>> uploadAvatar({
    required String childName,
    required Uint8List file,
    required String uid,
  });

  Future<Either<AddUserDataFailure, void>> addUserData({
    required UserModel userModel,
    required String uid,
  });

  Future<Either<DeleteUserFailure, void>?> deleteUser();
}
