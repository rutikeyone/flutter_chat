import 'package:dartz/dartz.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/core/use_case/use_case.dart';
import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/sign_up/domain/repository/firebase_sign_up_repository.dart';

class FirebaseUploadAvatarUseCase
    implements UseCase<String, UploadAvatarParams> {
  final FirebaseSignUpRepository _firebaseSignUpRepository;

  const FirebaseUploadAvatarUseCase(this._firebaseSignUpRepository);

  @override
  Future<Either<Failure, String>> call(UploadAvatarParams params) {
    return _firebaseSignUpRepository.uploadAvatar(
        childName: params.childName, file: params.file, uid: params.uid);
  }
}
