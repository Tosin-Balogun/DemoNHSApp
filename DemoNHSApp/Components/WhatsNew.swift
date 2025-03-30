//
//  WhatsNew.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 27/03/2025.
//

import SwiftUI

struct WhatsNew: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @State private var showAccount = false
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
                                    
//                                    Spacer()
                                    SampleAnimation()
                                    Text("Introducing your new account area")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                    Text ("""
                                      We've updated the account area to bring together your:
                                      • personal details
                                      • health choices
                                      • app settings
                                      """)
                                    Spacer()
                                    
                                }
                                .accessibilityElement(children: .ignore)
                                .accessibilityLabel("We have updated the account area of the app to bring together your personal details, health choices and app settings.")
                                .padding(16.0)
                            } else {
                                //landscape mode here
                                VStack(alignment: .leading, spacing: 8.0) {
                                    
                                    HStack {
                                        SampleAnimation()
                                        
                                        VStack(alignment: .leading) {
                                            Spacer()
                                            Text("Introducing your new account area")
                                                .font(.title)
                                                .fontWeight(.semibold)
                                            Text ("""
                                              We've updated the account area to bring together your:
                                              • personal details
                                              • health choices
                                              • app settings
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
                                showAccount.toggle()
                            }, label: {
                                Text("Go to account now")
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
                                Text("Check later")
                                    .fontWeight(.semibold)
                            }).sensoryFeedback(.impact, trigger: selectedTab)
                        }
                        .padding(.horizontal, 16.0)
                        .padding(.vertical, 24.0)
                    }
                    

                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
            }
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.automatic)
        .sheet(isPresented: $showAccount, content: {
            AccountSettingsView()
//                .presentationDetents([ .medium, .large])
        })

    }
}

#Preview {
    WhatsNew()
}

