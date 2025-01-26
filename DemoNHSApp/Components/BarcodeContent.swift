//
//  BarcodeContent.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 26/01/2025.
//

import SwiftUI
import UIKit
import PassKit

struct BarcodeContent: View {
    
    @State private var isDisclosed = false
        
        var body: some View {
            
            VStack(spacing: 8.0) {
                Image("barcode1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("ID: 1234 5678 9101")
                    .fontWeight(.semibold)
                Text("Only show this barcode if your pharmacist asks.")
                // Add to wallet button here
                AddtoWalletButton()
                
            }
            .padding(16.0)
        }
    }


#Preview {
    BarcodeContent()
}
