import 'package:dartz/dartz.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/core/use_case/use_case.dart';
import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/local_storage/domain/repository/local_storage_repository.dart';

class LocalStorageSetAuthenticationStatusUseCase
    implements UseCase<void, AuthenticationStatusParams> {
  final LocalStorageRepository _localStorageRepository;

  const LocalStorageSetAuthenticationStatusUseCase(
      this._localStorageRepository);

  @override
  Future<Either<SetAuthenticationStatusFailure, void>?> call(
      AuthenticationStatusParams params) {
    return _localStorageRepository.setAuthenticationStatus(params.status);
  }
}
