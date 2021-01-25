
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAudioMetadata {
  static const MethodChannel _channel =
      const MethodChannel('com.alien1900.flutter_audio_metadata/flutter_audio_metadata');

  Future<String> getMetadata(String path) async {
    if (Platform.isIOS) {
      final Map<dynamic, dynamic> result =
      await playerChannel.invokeMethod('getMetadata');

      if (result.isEmpty) return null;

      return result['title'];
    } else {
      throw PlatformException(
          code: "Device is not iOS!",
          message: "Currently only iOS is supported.");
    }
  }


}
