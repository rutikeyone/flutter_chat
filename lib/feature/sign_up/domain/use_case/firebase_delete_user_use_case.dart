import 'package:dartz/dartz.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/core/use_case/use_case.dart';
import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/sign_up/domain/repository/firebase_sign_up_repository.dart';

class FirebaseDeleteUserUseCase implements UseCase<void, NoParams> {
  final FirebaseSignUpRepository _firebaseSignUpRepository;

  FirebaseDeleteUserUseCase(this._firebaseSignUpRepository);

  @override
  Future<Either<Failure, void>?> call(NoParams params) {
    return _firebaseSignUpRepository.deleteUser();
  }
}
