import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat/feature/sign_up/data/model/user_model.dart';

extension UserExt on User {
  UserModel toUserModel() {
    final names =
        displayName != null ? displayName!.split(' ') : const <String>[];

    return UserModel(
      photoUrl: photoURL,
      name: names.isNotEmpty ? names[0] : null,
      lastName: names.isNotEmpty && names.length >= 2 ? names[1] : null,
      email: email,
      login: null,
      password: null,
    );
  }
}
