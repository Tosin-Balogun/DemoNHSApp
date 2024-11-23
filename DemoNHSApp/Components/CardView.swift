//
//  CardView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 05/03/2024.
//

import Foundation
import SwiftUI

struct CardView: View {
    
    var cardTitle: String
    
    var body: some View {
        HStack {
            Text(cardTitle)
                .fontWeight(.semibold)
            Spacer()
            Image(systemName: "chevron.right")
                .accessibilityHidden(true)
        }
        .foregroundStyle(Color("nhsBlue"))
        //.padding()
    }
}

#Preview {
    CardView(cardTitle: "Lorem Ipsum")
}
