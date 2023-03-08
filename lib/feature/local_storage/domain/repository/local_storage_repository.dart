import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/feature/local_storage/data/model/authentication_status.dart';

abstract class LocalStorageRepository {
  FutureOr<Either<GetAuthenticationStatusFailure, AuthenticationStatus?>>
      getAuthenticationStatus();

  Future<Either<SetAuthenticationStatusFailure, void>> setAuthenticationStatus(
      AuthenticationStatus status);

  Future<Either<ClearAuthenticationStatusFailure, bool>>
      clearAuthenticationStatus();
}
