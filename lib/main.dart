import 'package:flutter/material.dart';
import 'package:method_channel_flutter/battery_view.dart';
import 'package:method_channel_flutter/method_channel_constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: BatteryView());
  }
}
