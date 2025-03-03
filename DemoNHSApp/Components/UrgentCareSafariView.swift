//
//  UrgentCareSafariView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 02/02/2025.
//

import SwiftUI

import WebKit

struct UrgentCareSafariView: View {
    
    @State private var isPresentSafariView = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {isPresentSafariView.toggle()}, label: {
                HStack(alignment: .center) {
                    Text("Check if you need urgent medical help using 111 online")
                        .foregroundColor(.nhsBlack)
                        .accessibilityElement(children: .ignore)
                        .accessibilityLabel("Check if you need urgent medical help using one one one online")
                    Spacer()
                    Image(systemName:"arrow.up.right")
                        .foregroundColor(Color.gray)
                        .accessibilityElement(children: .ignore)
                }
            })
           
            
        }
        .fullScreenCover(isPresented: $isPresentSafariView, content: {
            SafariView(url: URL(string: "https://111.nhs.uk/")!)
                .ignoresSafeArea()
            
        })
    }
}

#Preview {
    UrgentCareSafariView()
}
