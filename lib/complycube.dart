
import 'complycube_platform_interface.dart';

class Complycube {
  Future<String?> getPlatformVersion() {
    return ComplycubePlatform.instance.getPlatformVersion();
  }
}
