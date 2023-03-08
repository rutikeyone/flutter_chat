import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_chat/feature/sign_up/data/model/user_model.dart';

abstract class FirebaseSignUpDataSource {
  Future<void>? deleteUser();

  Future<UserCredential> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<String> uploadAvatar({
    required String childName,
    required Uint8List file,
    required String uid,
  });

  Future<void> addUserData({
    required UserModel userModel,
    required String uid,
  });
}

class FirebaseSignUpDataSourceImpl extends FirebaseSignUpDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseStorage _firebaseStorage;
  final FirebaseFirestore _firebaseFirestore;

  FirebaseSignUpDataSourceImpl(
      this._firebaseAuth, this._firebaseStorage, this._firebaseFirestore);

  @override
  Future<UserCredential> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    return _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<String> uploadAvatar({
    required String childName,
    required Uint8List file,
    required String uid,
  }) async {
    final ref = _firebaseStorage.ref().child(childName).child(uid);
    final uploadTask = ref.putData(file);
    final snapshot = await uploadTask;
    final downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  @override
  Future<void> addUserData({
    required UserModel userModel,
    required String uid,
  }) {
    return _firebaseFirestore
        .collection('users')
        .doc(uid)
        .set(userModel.toJson());
  }

  @override
  Future<void>? deleteUser() {
    return _firebaseAuth.currentUser?.delete();
  }
}
