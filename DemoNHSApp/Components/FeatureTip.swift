//
//  FeatureTip.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 23/11/2024.
//


import SwiftUI
import TipKit


// Define your tip's content.
struct FeatureTip: Tip {
    
    @State private var turnBiometrics = false
    
    var title: Text {
        Text("Log in faster with TouchID")
    }


    var message: Text? {
        Text("TouchID lets you log into the app faster and securely using your fingerprint rather than a password")
    }


    var image: Image? {
        Image(systemName: "touchid")
    }
    
    var actions: [Action] {
        // Define action for button.
        Action(id: "turn-touchid", title: "Touch on TouchID")

    }
    
}

//Example view to show tip
struct SampleView: View {
    // Create an instance of your tip.
    var tip = FeatureTip()


    var body: some View {
        VStack {
            // Add `.popoverTip` to the view you want to modify.
            // Tips.configure(options:) must be called before your tip will be eligible for display.
            Image(systemName: "star")
                .popoverTip(tip, arrowEdge: .bottom)
        }
    }
}

#Preview {
    SampleView()
}
