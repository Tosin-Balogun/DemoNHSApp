//
//  NotificationsWebView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 12/05/2025.
//


import SwiftUI

import WebKit

struct NotificationsWebView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
                        // 3
                        WebView(url: URL(string: "https://nhsapp-prototype-ia-native-f519007018d8.herokuapp.com/pages-rnib/messages/opt-in")!)

                            .ignoresSafeArea()
                            .navigationTitle("")
                            .navigationBarTitleDisplayMode(.inline)
                            .toolbar{ToolbarItem {
                                
                            }}
        }
    }
}

#Preview {
    NotificationsWebView()
}


