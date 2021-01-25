import Flutter
import UIKit

public class SwiftFlutterAudioMetadataPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.alien1900.flutter_audio_metadata/flutter_audio_metadata", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterAudioMetadataPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if(call.method == "getMetadata"){
        
        
        let data: [String: Any] = [
            "title": "Song title",
        ]
        result(data)
    }
  }
}
