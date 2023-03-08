import 'package:dartz/dartz.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/core/use_case/use_case.dart';
import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/local_storage/data/model/authentication_status.dart';
import 'package:flutter_chat/feature/local_storage/domain/repository/local_storage_repository.dart';

class LocalStorageGetAuthenticationStatusUseCase
    implements UseCase<AuthenticationStatus?, NoParams> {
  final LocalStorageRepository _localStorageRepository;

  const LocalStorageGetAuthenticationStatusUseCase(
      this._localStorageRepository);

  @override
  Future<Either<Failure, AuthenticationStatus?>> call(NoParams params) {
    return Future.value(_localStorageRepository.getAuthenticationStatus());
  }
}
