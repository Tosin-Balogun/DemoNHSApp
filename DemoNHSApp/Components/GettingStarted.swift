//
//  GettingStarted.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 09/12/2024.
//

import SwiftUI

struct GettingStarted: View {
    
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
                    
                    VStack(alignment: .leading, spacing: 8.0) {
                        Spacer()
                        VStack{
                            Image("NHS-logo-2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 24.0)
                        }
             
                        Text("Welcome to the NHS App")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding(.bottom, 8.0)
                        Text("Before you start, here are some tips about finding your way around. ")
                        Spacer()
                        
                    }
                    .padding(16.0)
                    .tag(1)
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel("Welcome to the NHS App. Before you start, here are some tips to help you find your way around.")
                    
                    ScrollView {
                        if verticalSizeClass == .regular {
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Spacer()
                                Image("App menu image")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.bottom, 8.0)
                                Text("Moving around")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Text("Use the menus at the top and bottom of the screen to reach different areas of the app.")
                                Spacer()
                                
                            }
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel("When you start using the app, you'll be able to move between areas using the menu buttons at the top and bottom of the app.")
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
                                        Text("Moving around")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                        Text("Use the menus at the top and bottom of the screen to reach different areas of the app.")
                                        Spacer()
                                    }
                                    .padding(.leading, 16.0)
                                }
                                
                            }
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel("When you start using the app, you'll be able to move between areas using the menu buttons at the top and bottom of the app.")
                            .padding(16.0)
                        }
                    }
                    .tag(2)
                    
                    ScrollView {
                        
                        if verticalSizeClass == .regular {
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Spacer()
                                Image("App services image 1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.bottom, 8.0)
                                Text("Services")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Text("Select **Services** to start using NHS services or take steps to look after your health.")
                                    .padding(.bottom, 8.0)
                                Text ("""
                              You can:
                              • find services near you
                              • browse health information
                              """)
                                Spacer()
                                
                            }
                            .padding(16.0)
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel("Use the services area in the bottom menu to start using NHS services or take steps to look after your health. In that area, you can request prescriptions, check for available GP appointments, find services near you and browse health information.")
                        } else {
                            //landscape mode here
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                HStack {
                                    Image("App services image 1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.bottom, 8.0)
                                    
                                    VStack(alignment: .leading) {
                                        Spacer()
                                        Text("Services")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                        Text("Select **Services** to start using NHS services or take steps to look after your health.")
                                            .padding(.bottom, 8.0)
                                        Text ("""
                                      You can:
                                      • find services near you
                                      • browse health information
                                      """)
                                        Spacer()
                                    }
                                    .padding(.leading, 16.0)
                                }
                                
                            }
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel("Use the services area in the bottom menu to start using NHS services or take steps to look after your health. In that area, you can request prescriptions, check for available GP appointments, find services near you and browse health information.")
                            .padding(16.0)
                        }
                        
                    }
                    .tag(3)
                    
                    ScrollView {
                        
                        if verticalSizeClass == .regular {
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Spacer()
                                Image("App your health image 1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.bottom, 8.0)
                                Text("Your health")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Text("Select **Your health** to view records and manage your healthcare.")
                                    .padding(.bottom, 8.0)
                                Text ("""
                                  You can:
                                  • check on your prescription requests
                                  • manage GP and hospital appointments
                                  """)
                                Spacer()
                                
                            }
                            .padding(16.0)
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel("Use the 'your health' area in the bottom menu to view records and manage your healthcare. In that area, you can access your GP health record, manage GP and hospital appointments and check on your prescription requests.")
                        } else {
                            //landscape mode here
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                HStack {
                                    Image("App your health image 1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.bottom, 8.0)
                                    
                                    VStack(alignment: .leading) {
                                        Spacer()
                                        Text("Your health")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                        Text("Select **Your health** to view records and manage your healthcare.")
                                            .padding(.bottom, 8.0)
                                        Text ("""
                                          You can:
                                          • check on your prescription requests
                                          • manage GP and hospital appointments
                                          """)
                                        Spacer()
                                    }
                                    .padding(.leading, 16.0)
                                }
                                
                            }
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel("Use the 'your health' area in the bottom menu to view records and manage your healthcare. In that area, you can access your GP health record, manage GP and hospital appointments and check on your prescription requests.")
                            .padding(16.0)
                        }
                        
                    }
                    .tag(4)
                    
                    ScrollView {
                        
                        if verticalSizeClass == .regular {
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Spacer()
                                Image("App messages image 1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.bottom, 8.0)
                                Text("Messages")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Text("Select **Messages** to read messages from your healthcare services. ")
                                Text("You can turn on notifications for these in the account and settings area of the app.")
                                Spacer()
                                
                            }
                            .padding(16.0)
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel("Use the messages area in the bottom menu to read messages from your healthcare services. You can turn on notifications for these in the account and settings menu area of the app. Now, you can get started. Select the 'done' button below to start using the app.")
                        } else {
                            //landscape mode here
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                HStack {
                                    Image("App messages image 1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.bottom, 8.0)
                                    
                                    VStack(alignment: .leading) {
                                        Spacer()
                                        Text("Messages")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                        Text("Select **Messages** to read messages from your healthcare services.")
                                        Text("You can turn on notifications for these in the account and settings area of the app.")
                                        Spacer()
                                    }
                                    .padding(.leading, 16.0)
                                }
                                
                            }
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel("Use the messages area in the bottom menu to read messages from your healthcare services. You can turn on notifications for these in the account and settings menu area of the app. Now, you can get started. Select the 'done' button below to start using the app.")
                            .padding(16.0)
                        }
                        
                    }
                    .tag(5)
                    
                    
                    
                    
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
            }
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.automatic)
        .toolbar (content: {
            ToolbarItem (placement: .bottomBar) {
                HStack() {

                    if selectedTab > 1 {
                        
                        Button(action: {
                            withAnimation {
                                selectedTab -= 1
                            }
                        }, label: {
                            Image(systemName: "chevron.left")
                            Text("Previous")
                                .fontWeight(.semibold)
                        }).sensoryFeedback(.impact, trigger: selectedTab)
                    }
//                    Spacer()
//                    Text("\(selectedTab) of 4")
                    Spacer()
                    if selectedTab < 5 {
                        
                        Button(action: {
                            withAnimation{
                                selectedTab += 1
                            }
                        }, label: {
                            Text("Next")
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.right")
                        }).sensoryFeedback(.impact, trigger: selectedTab)
                    } else {
                        withAnimation{
                            
                            Button(action: {
                                dismiss()
                            }, label: {
                                Text("Done")
                                    .fontWeight(.semibold)
                            }).sensoryFeedback(.impact, trigger: selectedTab)
                        }
                    }
                }
            }
            
        })

    }
}

#Preview {
    GettingStarted()
}

