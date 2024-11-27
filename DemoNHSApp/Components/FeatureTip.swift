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
    var title: Text {
        Text("Get help with services")
    }


    var message: Text? {
        Text("You access prescriptions or doctors appointments under services tab below.")
    }


    var image: Image? {
        Image(systemName: "cross.fill")
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
            Image(systemName: "cross.fill")
                .popoverTip(tip, arrowEdge: .bottom)
        }
    }
}

#Preview {
    SampleView()
}
