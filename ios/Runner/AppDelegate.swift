import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
          let batteryChannel = FlutterMethodChannel(name: "com.example.methodchanneltest",
                                                    binaryMessenger: controller.binaryMessenger)
          batteryChannel.setMethodCallHandler({
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            // Note: this method is invoked on the UI thread.
            // 배터리 메시지를 처리
              guard call.method == "getPlatformVersion" else {
                  result(FlutterMethodNotImplemented)
                  return
                }
              let mainVC = ViewController() // Your viewController
                  let navigationController = UINavigationController(rootViewController: mainVC)
                  self.window.rootViewController = navigationController
                  self.window.makeKeyAndVisible()
              
//                self?.receiveBatteryLevel(result: result)
              
          })
      
      GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
}
