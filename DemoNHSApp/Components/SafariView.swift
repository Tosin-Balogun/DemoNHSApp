//
//  SafariView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 02/02/2025.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
}

#Preview {
    SafariView(url: URL(string: "https://111.nhs.uk/")!)
}
