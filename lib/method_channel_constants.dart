import 'package:flutter/services.dart';

class MethodChannelConstants {
  static MethodChannelConstants? _instance;
  static MethodChannelConstants get instance {
    _instance ??= MethodChannelConstants._init();
    return _instance!;
  }

  MethodChannelConstants._init();

  final channel = MethodChannel('test.com/battery');

  String level = 'Unknown battery level.';

  Future<String> getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await MethodChannelConstants.instance.channel
          .invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    return level = batteryLevel;
  }
}
