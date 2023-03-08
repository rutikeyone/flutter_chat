import 'package:dartz/dartz.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/core/use_case/use_case.dart';
import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/sign_in/domain/repository/sign_in_repository.dart';

class SignInWithFacebookUseCase implements UseCase<bool, NoParams> {
  final SignInRepository _signInRepository;

  SignInWithFacebookUseCase(this._signInRepository);

  @override
  Future<Either<SignInWithFacebookFailure, bool>> call(NoParams _) {
    return _signInRepository.signInWithFacebook();
  }
}
