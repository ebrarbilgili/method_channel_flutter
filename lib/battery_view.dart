import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:method_channel_flutter/method_channel_constants.dart';

class BatteryView extends StatefulWidget {
  BatteryView({Key? key}) : super(key: key);

  @override
  _BatteryViewState createState() => _BatteryViewState();
}

class _BatteryViewState extends State<BatteryView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Text('Get Battery Level'),
              onPressed: () {
                MethodChannelConstants.instance
                    .getBatteryLevel()
                    .whenComplete(() {
                  setState(() {});
                });
              },
            ),
            Text(MethodChannelConstants.instance.level),
          ],
        ),
      ),
    );
  }
}
