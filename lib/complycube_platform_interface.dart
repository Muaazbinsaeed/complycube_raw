import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'complycube_method_channel.dart';

abstract class ComplycubePlatform extends PlatformInterface {
  /// Constructs a ComplycubePlatform.
  ComplycubePlatform() : super(token: _token);

  static final Object _token = Object();

  static ComplycubePlatform _instance = MethodChannelComplycube();

  /// The default instance of [ComplycubePlatform] to use.
  ///
  /// Defaults to [MethodChannelComplycube].
  static ComplycubePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ComplycubePlatform] when
  /// they register themselves.
  static set instance(ComplycubePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
