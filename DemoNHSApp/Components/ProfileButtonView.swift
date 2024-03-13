//
//  ProfileButtonView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 12/03/2024.
//

import SwiftUI

struct ProfileButtonView: View {
    
    @State private var showProfile = false
    @State private var showHelp = false
    
    var body: some View {
        
        HStack(spacing: 16.0) {
            Button(action: {
                showHelp.toggle()
            }, label: {
                Image(systemName: "questionmark.circle")
            })
            Button(action: {
                showProfile.toggle()
            }, label: {
                Image(systemName: "person.circle")
            })
            
        }
        .foregroundStyle(.nhsGrey)
        .sheet(isPresented: $showProfile, content: {
            AccountSettingsView()
                //.presentationDetents([.medium, .large])
        })
        .sheet(isPresented: $showHelp, content: {
            HelpSupportView()
                //.presentationDetents([.medium, .large])
        })

    }
    
}

#Preview {
    ProfileButtonView()
}
