//
//  HomeWebView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 01/05/2025.
//

import SwiftUI

import WebKit

struct HomeWebView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
                        // 3
                        WebView(url: URL(string: "https://nhsapp-native-prototype-d94f8d65c0f8.herokuapp.com/pages/home-p9")!)

                            .ignoresSafeArea()
                            .navigationTitle("")
                            .navigationBarTitleDisplayMode(.inline)
                            .toolbar{ToolbarItem {
                                ProfileButtonView()
                            }}
        }
    }
}

#Preview {
    HomeWebView()
}


