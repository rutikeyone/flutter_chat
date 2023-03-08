import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  final Connectivity _connectivity;

  const NetworkInfo(this._connectivity);

  Stream<ConnectivityResult> get connectivityChangedStream =>
      _connectivity.onConnectivityChanged.asBroadcastStream();

  Future<bool> get hasConnection async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }
}

class NetworkInfoImpl extends NetworkInfo {
  NetworkInfoImpl(super.connectivity);
}
