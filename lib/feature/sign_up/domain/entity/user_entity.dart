import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String? photoUrl,
    required String? name,
    required String? lastName,
    required String? email,
    required String? login,
    required String? password,
  }) = _UserEntity;
}
