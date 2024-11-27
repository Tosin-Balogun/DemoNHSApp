//
//  ProfileCardViewB.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 17/04/2024.
//

import SwiftUI

struct ProfileCardViewB: View {
    
    @State private var showProfile = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 8.0) {
                
                Image("NHS-logo-2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 76.0, height: 32.0)

                VStack(alignment: .leading) {
                    Text("Good morning, ").font(.largeTitle).fontWeight(.bold)
                    Text("Shivaya Patel-Jones").font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(.bold)
                }
                
                Button(action: {showProfile.toggle()}, label: {
                    HStack {
                        Text("NHS number:")
                        Text("123 456 7890")
                            .foregroundColor(Color("nhsBlue"))
                    }
                })
                .padding(.top, 4.0)
                .fontWeight(.medium)
            }

            
        }
        .sheet(isPresented: $showProfile, content: {
            AccountSettingsView()
//                .presentationDetents([.medium, .large])
        })
    }
}

#Preview {
    ProfileCardViewB()
}
