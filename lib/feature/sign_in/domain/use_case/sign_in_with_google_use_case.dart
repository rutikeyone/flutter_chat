import 'package:dartz/dartz.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/core/use_case/use_case.dart';
import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/sign_in/domain/repository/sign_in_repository.dart';

class SignInWithGoogleUseCase implements UseCase<bool, NoParams> {
  final SignInRepository _signInRepository;

  SignInWithGoogleUseCase(this._signInRepository);

  @override
  Future<Either<SignInWithGoogleFailure, bool>?> call(NoParams _) {
    return _signInRepository.signInWithGoogle();
  }
}
