import 'package:dartz/dartz.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/core/use_case/use_case.dart';
import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/sign_in/domain/repository/sign_in_repository.dart';

class SignInWithEmailAndPasswordUseCase
    implements UseCase<void, EmailAndPasswordParams> {
  final SignInRepository _signInRepository;

  SignInWithEmailAndPasswordUseCase(this._signInRepository);

  @override
  Future<Either<SignInFailure, void>> call(EmailAndPasswordParams params) =>
      _signInRepository.signInWithEmailAndPassword(
          email: params.email, password: params.password);
}
