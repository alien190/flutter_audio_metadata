
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAudioMetadata {
  static const MethodChannel _channel =
      const MethodChannel('flutter_audio_metadata');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
