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
            NavigationStack {
                            // 3
                            WebView(url: URL(string: "https://111.nhs.uk/")!)

                                .ignoresSafeArea()
                                .navigationTitle("111 online")
                                .navigationBarTitleDisplayMode(.inline)
                        }
        })
    }
}

#Preview {
    UrgentCareOnlineView()
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
