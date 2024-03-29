import Flutter
import UIKit

public class SwiftJdYoutobeApiPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "jd_youtobe_api_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftJdYoutobeApiPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
