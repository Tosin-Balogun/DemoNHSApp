//
//  UrgentCareOnlineView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 12/03/2024.
//

import SwiftUI

import WebKit

struct UrgentCareOnlineView: View {
    
    @State private var isPresentWebView = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {isPresentWebView.toggle()}, label: {
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
        .sheet(isPresented: $isPresentWebView, content: {
            UrgentCareWebView()
            
        })
    }
}

#Preview {
    UrgentCareOnlineView()
}

