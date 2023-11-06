import Flutter
import UIKit
//import ComplyCubeMobileSDK

public class ComplycubePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "complycube", binaryMessenger: registrar.messenger())
    let instance = ComplycubePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "method_1":
      result("iOS " + UIDevice.current.systemVersion)
    case "getPlatformVersion":
    
    //if let viewController = UIApplication.shared.delegate?.window??.rootViewController as? FlutterViewController {
    if let viewController = UIApplication.shared.keyWindow?.rootViewController {
        // Create an instance of your view controller
        let yourViewController = ViewController()
        //yourViewController.controller = viewController

        // Present the view controller
        viewController.present(yourViewController, animated: true, completion: nil)
        result("ViewController presented successfully")
    } else {
        result("Error: Could not present ViewController")
    }
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}

/* class PlatformViewController: UIViewController {
  //let controller: FlutterViewController?

  // init(controller: FlutterViewController) {
  //   self.controller = controller
  // }

  override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
  }

  @IBAction func onboardClient(_ sender: Any) {
      let document = DocumentStageBuilder().setCountries(countries: ["FR"])
                  .build()

              let selfieStage = BiometricStageBuilder()
                  .setType(type: BiometricType.photo) // Setup Video selfie
              //                    .setEnableMLAssistant(enable: true) // Setup the ML assistant for the selfie stage
                  .build()

              let poaStage = AddressStageBuilder()
                  .useLiveCaptureOnly(enable: false)
              // Build colour scheme
              let colorScheme = ComplyCubeColourScheme()
              //let lookAndFeel = ComplyCubeLookAndFeel()
              //                lookAndFeel.primaryButtonBgColor = .green
              //                lookAndFeel.darkTheme = true
              //                lookAndFeel.headerTitle = .red
              //                lookAndFeel.borderRadius = 20.0
              //                let lookAndFeel =
              DispatchQueue.global().async (execute: {
                  DispatchQueue.main.sync{
                      do{
                          let _: () = try ComplyCubeMobileSDK.FlowBuilder()
                              .withClientId("ClientID")
                              .withSDKToken("SDK_TOKEN")
                              .withStages([document, selfieStage])
                          //                        .withLookAndFeel(lookAndFeel)
                              .start(fromVc: self)
                      }catch {
                          print("Error: \(error)")
                      }
                  }
              })
  }
}
 */