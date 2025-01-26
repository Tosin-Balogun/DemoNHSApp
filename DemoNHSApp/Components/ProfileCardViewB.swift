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
            VStack(alignment: .leading, spacing: 16.0) {
                
                Image("NHS-logo-2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 24.0)


                VStack(alignment: .leading) {
                    Text("Good morning, ").font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/).fontWeight(.semibold)
                    Text("Mary Swanson").font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(.bold)
                }
                
                
                Button(action: {showProfile.toggle()}, label: {
                    HStack {
                        Text("NHS number:")
                            .foregroundColor(Color("nhsGrey"))
                        
                        Text("123 456 7890")
                            .fontWeight(.bold)
                            .foregroundColor(Color("nhsBlue"))
                    }
                }).padding(.vertical)
            }
            //.padding(.vertical, 32.0)
            

            
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
