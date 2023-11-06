import 'package:flutter_test/flutter_test.dart';
import 'package:complycube/complycube.dart';
import 'package:complycube/complycube_platform_interface.dart';
import 'package:complycube/complycube_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockComplycubePlatform
    with MockPlatformInterfaceMixin
    implements ComplycubePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ComplycubePlatform initialPlatform = ComplycubePlatform.instance;

  test('$MethodChannelComplycube is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelComplycube>());
  });

  test('getPlatformVersion', () async {
    Complycube complycubePlugin = Complycube();
    MockComplycubePlatform fakePlatform = MockComplycubePlatform();
    ComplycubePlatform.instance = fakePlatform;

    expect(await complycubePlugin.getPlatformVersion(), '42');
  });
}
