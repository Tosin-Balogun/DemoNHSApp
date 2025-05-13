//
//  ProfileWebView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 11/05/2025.
//


import SwiftUI

import WebKit

struct ProfileWebView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
                        // 3
                        WebView(url: URL(string: "https://nhsapp-prototype-ia-native-f519007018d8.herokuapp.com/pages-rnib/profile-p9")!)

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
    ProfileWebView()
}


