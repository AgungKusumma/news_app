import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    GMSServices.provideAPIKey("AIzaSyA-qpkS97GJlweviw_oQvoGyhiALa9ktKY")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
