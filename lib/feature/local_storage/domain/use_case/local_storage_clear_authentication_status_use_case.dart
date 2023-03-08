import 'package:dartz/dartz.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/core/use_case/use_case.dart';
import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/local_storage/domain/repository/local_storage_repository.dart';

class LocalStorageClearAuthenticationStatusUseCase
    implements UseCase<bool, NoParams> {
  final LocalStorageRepository _localStorageRepository;

  const LocalStorageClearAuthenticationStatusUseCase(
      this._localStorageRepository);

  @override
  Future<Either<Failure, bool>?> call(NoParams params) async {
    return await _localStorageRepository.clearAuthenticationStatus();
  }
}
