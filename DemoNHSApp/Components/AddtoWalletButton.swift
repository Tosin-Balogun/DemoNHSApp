//
//  AddtoWalletButton.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 25/01/2025.
//

import Foundation
import PassKit
import SwiftUI
import UIKit

struct AddtoWalletButton: View {
    
    var body: some View {
        AddPassToWalletButton {
            //Something action
        }
        .addPassToWalletButtonStyle(.black)
        .frame(height: 58.0)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}


#Preview {
    AddtoWalletButton()
}
