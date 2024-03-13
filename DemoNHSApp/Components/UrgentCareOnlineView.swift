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
                Text("Check if you need urgent medical help using 111 online")
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

