import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat/core/extension/user_ext.dart';
import 'package:flutter_chat/core/extension/user_model_ext.dart';
import 'package:flutter_chat/feature/sign_up/data/model/user_model.dart';
import 'package:flutter_chat/feature/sign_up/domain/entity/user_entity.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

abstract class AuthenticationDataSource {
  const AuthenticationDataSource();

  User? get user;

  Future<void> signOut();

  Future<void> facebookSignOut();

  FutureOr<UserEntity?> getUserData(String userId);

  Future<UserEntity?> getUserDataWithGoogle();

  Future<UserEntity> getUserDataWithFacebook();
}

class AuthenticationDataSourceImpl extends AuthenticationDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFireStore;
  final FacebookAuth _facebookAuth;

  AuthenticationDataSourceImpl({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firebaseFireStore,
    required FacebookAuth facebookAuth,
  })  : _firebaseAuth = firebaseAuth,
        _firebaseFireStore = firebaseFireStore,
        _facebookAuth = facebookAuth;

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  User? get user => _firebaseAuth.currentUser;

  @override
  FutureOr<UserEntity?> getUserData(String userId) async {
    final snapshot =
        await _firebaseFireStore.collection('users').doc(userId).get();
    final data = snapshot.data();
    if (data != null) {
      final userModel = UserModel.fromJson(data);
      final userEntity = userModel.toEntity();
      return userEntity;
    }
    return null;
  }

  @override
  Future<UserEntity?> getUserDataWithGoogle() async {
    final currentUser = user;
    if (user == null) return null;
    final userModel = currentUser!.toUserModel();
    final userEntity = userModel.toEntity();
    return userEntity;
  }

  @override
  Future<UserEntity> getUserDataWithFacebook() async {
    final userData = await _facebookAuth.getUserData();
    final userModel = UserModel.fromFacebookJson(userData);
    final userEntity = userModel.toEntity();
    return userEntity;
  }

  @override
  Future<void> facebookSignOut() {
    return _facebookAuth.logOut();
  }
}
