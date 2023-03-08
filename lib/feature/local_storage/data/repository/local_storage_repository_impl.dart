import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/feature/local_storage/data/data_source/local_storage_data_source.dart';
import 'package:flutter_chat/feature/local_storage/data/model/authentication_status.dart';
import 'package:flutter_chat/feature/local_storage/domain/repository/local_storage_repository.dart';

class LocalStorageRepositoryImpl implements LocalStorageRepository {
  final LocalStorageDataSource _localStorageDataSource;

  const LocalStorageRepositoryImpl(this._localStorageDataSource);

  @override
  FutureOr<Either<GetAuthenticationStatusFailure, AuthenticationStatus?>>
      getAuthenticationStatus() async {
    try {
      return Right(await _localStorageDataSource.getAuthenticationStatus());
    } catch (_) {
      return Left(GetAuthenticationStatusFailure());
    }
  }

  @override
  Future<Either<SetAuthenticationStatusFailure, void>> setAuthenticationStatus(
      AuthenticationStatus status) async {
    try {
      return Right(
          await _localStorageDataSource.setAuthenticationStatus(status));
    } catch (_) {
      return Left(SetAuthenticationStatusFailure());
    }
  }

  @override
  Future<Either<ClearAuthenticationStatusFailure, bool>>
      clearAuthenticationStatus() async {
    try {
      return Right(await _localStorageDataSource.cleanAuthenticationStatus());
    } catch (_) {
      return Left(ClearAuthenticationStatusFailure());
    }
  }
}
