//
//  WhatExistTips.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 28/03/2025.
//


import SwiftUI

struct WhatExistTips: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @State private var turnBiometrics = false
    @State var selectedTab: Int = 1
    
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                Color.nhsGrey5
                    .ignoresSafeArea()
                
                TabView(selection: $selectedTab) {
                    
                    VStack{
                        
                        ScrollView {
                            if verticalSizeClass == .regular {
                                
                                VStack(alignment: .leading, spacing: 8.0) {
                                    
                                    Spacer()
                                    Image("App biometrics image")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.bottom, 8.0)
                                    
                                    Text("Log in faster using your fingerprint")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                    Text ("""
                                      You can turn on fingerprint log in for the NHS App.
                                      
                                      It's quicker and more secure than using a password
                                      
                                      """)
                                    Spacer()
                                    
                                }
                                .accessibilityElement(children: .ignore)
                                .accessibilityLabel("No description for now.")
                                .padding(16.0)
                            } else {
                                //landscape mode here
                                VStack(alignment: .leading, spacing: 8.0) {
                                    
                                    HStack {
                                        Image("App menu image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding(.bottom, 8.0)
                                        
                                        VStack(alignment: .leading) {
                                            Spacer()
                                            Text("Log in faster using your fingerprint")
                                                .font(.title)
                                                .fontWeight(.semibold)
                                            Text ("""
                                              You can turn on fingerprint log in for the NHS App.
                                              
                                              It's quicker and more secure than using a password
                                              
                                              """)
                                            Spacer()
                                        }
                                        .padding(.leading, 16.0)
                                    }
                                    
                                }
                                .accessibilityElement(children: .ignore)
                                .accessibilityLabel("We have updated the account area of the app to bring together your personal details, health choices and app settings.")
                                .padding(16.0)
                            }
                        }
                        .tag(1)
                        VStack(spacing: 24.0) {
                            Button(action: {
                                turnBiometrics.toggle()
                            }, label: {
                                Text("Turn on fingerprint log in")
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, 16.0)
                                    .frame(height: 58.0)
                                    .frame(maxWidth: .infinity)
                                    .foregroundStyle(.nhsWhite)
                                    .background(.nhsGreen)
                                    .font(.body)
                                    .cornerRadius(8)
                                    .shadow(color: Color("nhsDarkGreen"), radius: 0, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                            })
                            .sensoryFeedback(.impact, trigger: selectedTab)
                            
                            Button(action: {
                                dismiss()
                            }, label: {
                                Text("Not now")
                                    .fontWeight(.semibold)
                            }).sensoryFeedback(.impact, trigger: selectedTab)
                        }
                        .padding(.horizontal, 16.0)
                    }
                    

                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
            }
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.automatic)
        .alert("Turn on TouchID?", isPresented: $turnBiometrics) {
        Button("Don't allow") {
            // Handle the action.
        }
            Button("Ok") {
                // Handle the action.
            }
    } message: {Text("This will turn on TouchID which lets you log in with your fingerprint")}

    }
}

#Preview {
    WhatExistTips()
}

