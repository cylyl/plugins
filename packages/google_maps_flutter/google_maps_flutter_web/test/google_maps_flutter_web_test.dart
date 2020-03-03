import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter_web/google_maps_flutter_web.dart';

void main() {
  const MethodChannel channel = MethodChannel('google_maps_flutter_web');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

//  test('getPlatformVersion', () async {
//    expect(await GoogleMapsFlutterWeb.platformVersion, '42');
//  });
}
