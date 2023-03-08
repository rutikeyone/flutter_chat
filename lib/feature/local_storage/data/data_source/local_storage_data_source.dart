import 'dart:convert';

import 'package:flutter_chat/core/constrants/local_storage_constants.dart';
import 'package:flutter_chat/feature/local_storage/data/model/authentication_status.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class LocalStorageDataSource {
  Future<void> setAuthenticationStatus(AuthenticationStatus status);

  Future<AuthenticationStatus?> getAuthenticationStatus();

  Future<bool> cleanAuthenticationStatus();
}

class LocalStorageDataSourceImpl implements LocalStorageDataSource {
  final ProviderRef _ref;

  const LocalStorageDataSourceImpl({
    required ProviderRef ref,
  }) : _ref = ref;

  @override
  Future<AuthenticationStatus?> getAuthenticationStatus() async {
    final sharedPreference = await _ref.watch(sharedPreferenceProvider.future);
    final data =
        sharedPreference.getString(LocalStorageConstants.authorizationStatus);
    if (data != null) {
      final json = jsonDecode(data);
      final authenticationStatus = AuthenticationStatus.fromJson(json);
      return authenticationStatus;
    }
    return null;
  }

  @override
  Future<void> setAuthenticationStatus(AuthenticationStatus status) async {
    final sharedPreference = await _ref.watch(sharedPreferenceProvider.future);
    final json = jsonEncode(status.toJson());
    await sharedPreference.setString(
        LocalStorageConstants.authorizationStatus, json);
  }

  @override
  Future<bool> cleanAuthenticationStatus() async {
    final sharedPreference = await _ref.watch(sharedPreferenceProvider.future);
    return await sharedPreference
        .remove(LocalStorageConstants.authorizationStatus);
  }
}
