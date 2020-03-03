import Flutter
import UIKit

public class SwiftGoogleMapsFlutterWebPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "google_maps_flutter_web", binaryMessenger: registrar.messenger())
    let instance = SwiftGoogleMapsFlutterWebPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
