// 📦 Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';

/// Abstraction for checking internet connectivity
abstract class NetworkInfoI {
  /// Checks if the device is connected to the internet.
  ///
  /// Returns [true] if the device is connected, otherwise [false].
  Future<bool> isConnected();

  /// Retrieves the current connectivity status.
  ///
  /// Returns a [ConnectivityResult] indicating the current connectivity status.
  Future<ConnectivityResult> get connectivityResult;

  /// Stream that emits [ConnectivityResult] whenever the connectivity status changes.
  Stream<ConnectivityResult> get onConnectivityChanged;
}

/// Implementation of NetworkInfoI for checking internet connectivity
class NetworkInfo implements NetworkInfoI {
  Connectivity connectivity;

  // Singleton instance of NetworkInfo
  static final NetworkInfo _networkInfo = NetworkInfo._internal(Connectivity());

  factory NetworkInfo() {
    return _networkInfo;
  }

  // Private constructor for NetworkInfo
  NetworkInfo._internal(this.connectivity) {
    connectivity = connectivity;
  }

  /// Checks if the device is connected to the internet.
  ///
  /// Returns [true] if the device is connected, otherwise [false].
  @override
  Future<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();
    if (result != ConnectivityResult.none) {
      return true;
    }
    return false;
  }

  /// Retrieves the current connectivity status.
  ///
  /// Returns a [ConnectivityResult] indicating the current connectivity status.
  @override
  Future<ConnectivityResult> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  /// Stream that emits [ConnectivityResult] whenever the connectivity status changes.
  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}
