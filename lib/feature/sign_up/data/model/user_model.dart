import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String? photoUrl,
    required String? name,
    required String? lastName,
    required String? email,
    required String? login,
    required String? password,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromFacebookJson(Map<String, Object?> json) {
    return const UserModel(
      photoUrl: null,
      name: null,
      lastName: null,
      email: null,
      login: null,
      password: null,
    );
  }

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
