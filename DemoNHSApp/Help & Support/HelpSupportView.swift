//
//  HelpSupportView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 12/03/2024.
//

import SwiftUI

struct HelpSupportView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Help and support")
                .font(.title)
            .fontWeight(.semibold)
            Text("This is the screen where we provide contextual help, FAQ's and support contact etc.")
        }
    }
}

#Preview {
    HelpSupportView()
}
