//
//  FloatingActionButton.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 26/01/2025.
//
import SwiftUI

struct FloatingActionButton: View {
    
    @State private var trigger = false
    let tip = PrescriptionTip()
    
    var body: some View {
        Button(action: {
            //Action here
            trigger.toggle()
        }, label: {
            Label("Request new medicines", systemImage: "cross.vial")
                .labelStyle(.iconOnly)
                .font(.title.weight(.semibold))
                .padding()
                .background(.nhsGreen)
                .foregroundColor(.nhsWhite)
                .clipShape(Circle())
                .shadow(radius: 4, x: 0, y: 4)
        })
        .padding()
        .sensoryFeedback(.impact, trigger: trigger)
        .popoverTip(tip, arrowEdge: .top)
    }
    
}

#Preview {
    FloatingActionButton()
}

