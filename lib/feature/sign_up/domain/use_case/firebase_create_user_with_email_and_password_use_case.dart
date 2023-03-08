import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/core/use_case/use_case.dart';
import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/sign_up/domain/repository/firebase_sign_up_repository.dart';

class FirebaseCreateUserWithEmailAndPasswordUseCase
    implements UseCase<UserCredential, EmailAndPasswordParams> {
  final FirebaseSignUpRepository firebaseAuthRepository;

  const FirebaseCreateUserWithEmailAndPasswordUseCase(
      this.firebaseAuthRepository);

  @override
  Future<Either<SignUpFailure, UserCredential>> call(
      EmailAndPasswordParams params) async {
    return await firebaseAuthRepository.createUserWithEmailAndPassword(
        email: params.email, password: params.password);
  }
}
