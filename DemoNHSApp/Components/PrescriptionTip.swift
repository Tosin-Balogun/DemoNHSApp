//
//  PrescriptionTip.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 26/01/2025.
//

import SwiftUI
import TipKit


// Define your tip's content.
struct PrescriptionTip: Tip {
    var title: Text {
        Text("Request new medicine")
    }


    var message: Text? {
        Text("You can request new medicine for your GP to approve here.")
    }


    var image: Image? {
        Image(systemName: "cross.vial")
    }
}

//Example view to show tip
struct SampleView2: View {
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
    SampleView2()
}
