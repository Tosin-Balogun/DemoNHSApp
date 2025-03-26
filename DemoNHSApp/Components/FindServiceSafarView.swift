//
//  FindServiceSafarView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 26/03/2025.
//


import SwiftUI

import WebKit

struct FindServiceSafariView: View {
    
    @State private var isPresentSafariView = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {isPresentSafariView.toggle()}, label: {
                HStack(alignment: .center) {
                    Text("Find NHS services near you")
                        .foregroundColor(.nhsBlack)
                        .accessibilityElement(children: .ignore)
                        .accessibilityLabel("Find an NHS service near your location")
                    Spacer()
                    Image(systemName:"arrow.up.right")
                        .foregroundColor(Color.gray)
                        .accessibilityElement(children: .ignore)
                }
            })
           
            
        }
        .fullScreenCover(isPresented: $isPresentSafariView, content: {
            SafariView(url: URL(string: "https://www.nhs.uk/nhs-services/services-near-you/")!)
                .ignoresSafeArea()
            
        })
    }
}

#Preview {
    FindServiceSafariView()
}
