import 'dart:typed_data';

import 'package:flutter_chat/feature/local_storage/data/model/authentication_status.dart';
import 'package:flutter_chat/feature/sign_up/data/model/user_model.dart';

abstract class UseParam {}

class NoParams extends UseParam {}

class EmailAndPasswordParams extends UseParam {
  final String email;
  final String password;

  EmailAndPasswordParams({required this.email, required this.password});
}

class UploadAvatarParams extends UseParam {
  final String childName;
  final Uint8List file;
  final String uid;

  UploadAvatarParams({
    required this.childName,
    required this.file,
    required this.uid,
  });
}

class AddUserDataParams extends UseParam {
  final UserModel userModel;
  final String uid;

  AddUserDataParams(this.userModel, this.uid);
}

class AuthenticationStatusParams extends UseParam {
  final AuthenticationStatus status;

  AuthenticationStatusParams(this.status);
}
