//
//  ViewController.swift
//  SampleApp
//

import UIKit
import ComplyCubeMobileSDK


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
    
    @IBAction func onboardClient(_ sender: Any) {
        //        let documentStage = DocumentStageBuilder()
        //            .setAllowedDocumentTypes(types: [ .passport,
        //                                              .nationalIdentityCard(["GB", "FR"])]) // Customize the document nationality
        //            .useLiveCaptureOnly(enable: false) // disable live capture only
        //            .build()
        //
        //        let selfieStage = BiometricStageBuilder()
        //            .setType(type: BiometricType.video) // Setup Video selfie
        //            .setEnableMLAssistant(enable: true) // Setup the ML assistant for the selfie stage
        //            .build()
        //
        //        // Build colour scheme
        //        let colorScheme = ComplyCubeColourScheme()
        //        colorScheme.primaryButtonBgColor = .green
        //        colorScheme.headerTitle = .red
        //        DispatchQueue.global().async (execute: {
        //            DispatchQueue.main.sync{
        //
        //                do{
        //                    let sdk = try ComplyCubeMobileSDK.FlowBuilder()
        //                        .withSDKToken("SDK_TOKEN")
        //                        .withStages([documentStage, selfieStage])
        //                        .withColorScheme(colorScheme)
        //                        .start(fromVc: self)
        //                }catch{}
        //
        //            }})
        
        
        
        
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
        
        
    } // End od IBAction
}
