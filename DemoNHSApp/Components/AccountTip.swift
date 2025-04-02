//
//  AccountTip.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 28/03/2025.
//


import SwiftUI
import TipKit


// Define your tip's content.
struct AccountTip: Tip {
    
    @State private var turnBiometrics = false
    
    var title: Text {
        Text("New in the app")
    }


    var message: Text? {
        Text("Your account now includes GP surgery details and health choices ")
    }


    var image: Image? {
        Image(systemName: "person.crop.circle")
    }
    
}

//Example view to show tip
struct SampleViewB: View {
    // Create an instance of your tip.
    var tip = AccountTip()


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
    SampleViewB()
}
