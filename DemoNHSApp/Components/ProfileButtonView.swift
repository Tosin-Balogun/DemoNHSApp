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
    @State var isButtonHidden = true
    let tip = AccountTip()
    
    var body: some View {
        
        HStack(spacing: 16.0) {
            Button(action: {
                showHelp.toggle()
            }, label: {
                Image(systemName: "questionmark.circle")
                    .accessibilityLabel("Get help")
//                    .resizable()
//                    .frame(width: 34, height: 34)
//                    .aspectRatio(contentMode: .fit)
            })
            
            Group{
                if isButtonHidden {
                    Button(action: {
                        showProfile.toggle()
                    }, label: {
                        Image(systemName: "person.circle")
                            .accessibilityLabel("Account")
        //                    .resizable()
        //                    .frame(width: 34, height: 34)
        //                    .aspectRatio(contentMode: .fit)
                    })
                } else {
                    Button(action: {
                        showProfile.toggle()
                    }, label: {
                        Image(systemName: "person.circle")
                            .accessibilityLabel("Account")
        //                    .resizable()
        //                    .frame(width: 34, height: 34)
        //                    .aspectRatio(contentMode: .fit)
                    })
                    .popoverTip(tip, arrowEdge: .bottom)
                }
            }
            .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 20.5) {
                            self.isButtonHidden = false
                        }
                    }
            
        }
        .foregroundStyle(.nhsGrey)
        .sheet(isPresented: $showProfile, content: {
            AccountSettingsView()
//                .presentationDetents([ .medium, .large])
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
