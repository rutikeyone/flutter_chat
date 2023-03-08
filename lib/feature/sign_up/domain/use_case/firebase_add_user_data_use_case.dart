import 'package:dartz/dartz.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/core/use_case/use_case.dart';
import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/sign_up/data/repository/firebase_sign_up_repository_impl.dart';

class FirebaseAddUserDataUseCase implements UseCase<void, AddUserDataParams> {
  final FirebaseSignUpRepositoryImpl _firebaseSignUpRepositoryImpl;

  const FirebaseAddUserDataUseCase(this._firebaseSignUpRepositoryImpl);

  @override
  Future<Either<Failure, void>> call(AddUserDataParams params) {
    return _firebaseSignUpRepositoryImpl.addUserData(
        userModel: params.userModel, uid: params.uid);
  }
}
