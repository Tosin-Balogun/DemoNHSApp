//
//  UrgentCareWebView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 13/03/2024.
//

import SwiftUI

import WebKit

struct UrgentCareWebView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
                        // 3
                        WebView(url: URL(string: "https://111.nhs.uk/")!)

                            .ignoresSafeArea()
                            .navigationTitle("111.nhs.uk")
                            .navigationBarTitleDisplayMode(.inline)
                            .toolbar{ToolbarItem {
                                Button(action: {
                                    dismiss()
                                }, label: {
                                    Text("Done")
                                        .fontWeight(.semibold)
                                })
                            }}
        }
    }
}

#Preview {
    UrgentCareWebView()
}


struct WebView: UIViewRepresentable {
    // 1
    let url: URL

    
    // 2
    func makeUIView(context: Context) -> WKWebView {

        return WKWebView()
    }
    
    // 3
    func updateUIView(_ webView: WKWebView, context: Context) {

        let request = URLRequest(url: url)
        webView.load(request)
    }
}
