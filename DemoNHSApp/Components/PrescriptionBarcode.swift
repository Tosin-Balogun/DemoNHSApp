//
//  PrescriptionBarcode.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 25/01/2025.
//

import SwiftUI
import UIKit
import PassKit

struct PrescriptionBarcode: View {
    
    @State private var isDisclosed = false
    @State private var trigger = false
        
        var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Label("Your prescription barcode", systemImage: isDisclosed ? "minus.circle": "plus.circle")
                        .contentTransition(.symbolEffect(.replace))
                        .fontWeight(.semibold)
                        .foregroundStyle(.nhsBlue)
                }
            }
            .padding(.vertical)
            .transition(.scale)
                .onTapGesture {
                    withAnimation {
                        isDisclosed.toggle()
                        trigger.toggle()
                    }
                }
                .sensoryFeedback(.impact, trigger: trigger)
            
            if isDisclosed {
                BarcodeContent()
                }
        }
    }


#Preview {
    PrescriptionBarcode()
}
