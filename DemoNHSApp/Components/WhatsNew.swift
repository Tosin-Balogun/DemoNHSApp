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
    @State var selectedTab: Int = 1
    
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                Color.nhsGrey5
                    .ignoresSafeArea()
                
                TabView(selection: $selectedTab) {
                    
                    
                    ScrollView {
                        if verticalSizeClass == .regular {
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Spacer()
                                Image("App menu image")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.bottom, 8.0)
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
                                    Image("App menu image")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.bottom, 8.0)
                                    
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

                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
            }
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.automatic)
        .toolbar (content: {
            ToolbarItem (placement: .bottomBar) {
                HStack(alignment: .center) {
                    
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Check later")
                            .fontWeight(.semibold)
                    }).sensoryFeedback(.impact, trigger: selectedTab)
                    
                    Spacer()
                    
                    Button(action: {
                        //No Action
                    }, label: {
                        Text("Go to account now")
                            .fontWeight(.semibold)
                            .padding(.horizontal, 16.0)
                            .frame(height: 44.0)
                            .foregroundStyle(.nhsWhite)
                            .background(.nhsGreen)
                            .font(.body)
                            .cornerRadius(8)
                            .shadow(color: Color("nhsDarkGreen"), radius: 0, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                    })
                    .sensoryFeedback(.impact, trigger: selectedTab)

                }
                .padding(.vertical, 64.0)
            }
            
        })

    }
}

#Preview {
    WhatsNew()
}

