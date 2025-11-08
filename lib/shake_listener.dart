import 'package:flutter/services.dart';

class ShakeListener {
  static const EventChannel _eventChannel = EventChannel('shake_channel');

  static void startListening(void Function() onShake) {
    _eventChannel.receiveBroadcastStream().listen((event) {
      if (event == "onShakeDetected") {
        onShake();
      }
    }, onError: (error) {
      print("Shake channel error: $error");
    });
  }
}

