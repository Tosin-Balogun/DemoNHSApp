//
//  ProfileCardView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 11/03/2024.
//

import SwiftUI

struct ProfileCardView: View {
    
    @State private var showProfile = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 16.0) {
                Image("Profile-photo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 94.0, height: 94.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay{
                        Circle()
                            .stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 4)

                VStack(alignment: .leading) {
                    Text("Good morning, ").font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/).fontWeight(.semibold)
                    Text("Mary Swanson").font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(.bold)
                }
                
                
                HStack {
                    Text("NHS number:")
                    
                    Text("123 456 7890")
                        .fontWeight(.bold)
                        .foregroundColor(Color("nhsBlue"))
                }
            }
            .padding(.vertical, 32.0)
            
            Divider()
            
            Button(action: {showProfile.toggle()}, label: {
                Text("See profile details")
            }).padding(.vertical)
        }
        .sheet(isPresented: $showProfile, content: {
            AccountSettingsView()
                //.presentationDetents([.medium, .large])
        })
        
    }
}

#Preview {
    ProfileCardView()
}
