//
//  SafariViewFindService.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 26/03/2025.
//

import SwiftUI
import SafariServices

struct SafariViewFindService: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
}

#Preview {
    SafariViewFindService(url: URL(string: "https://www.nhs.uk/nhs-services/services-near-you/")!)
}
