// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      photoUrl: json['photoUrl'] as String?,
      name: json['name'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      login: json['login'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'photoUrl': instance.photoUrl,
      'name': instance.name,
      'lastName': instance.lastName,
      'email': instance.email,
      'login': instance.login,
      'password': instance.password,
    };
