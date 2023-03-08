import 'package:flutter_chat/feature/sign_up/data/model/user_model.dart';
import 'package:flutter_chat/feature/sign_up/domain/entity/user_entity.dart';

extension UserModelExt on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      photoUrl: photoUrl,
      name: name,
      lastName: lastName,
      email: email,
      login: login,
      password: password,
    );
  }
}
