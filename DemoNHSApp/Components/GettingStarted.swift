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
                        Text("Before you start, here are some tips about using the app. ")
                        Spacer()
                        
                    }
                    .padding(16.0)
                    .tag(1)
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel("Welcome to the NHS App. Before you start, here are some tips about using the app.")
                    
                    ScrollView {
                        if verticalSizeClass == .regular {
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Spacer()
                                Image("App menu image b")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.bottom, 8.0)
                                Text("Moving around")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Text("Use the menus at the bottom of the screen to move between the 3 main areas of the app.")
                                Spacer()
                                
                            }
                            .padding(16.0)
                        } else {
                            //landscape mode here
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                HStack {
                                    Image("App menu image b")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.bottom, 8.0)
                                    
                                    VStack(alignment: .leading) {
                                        Spacer()
                                        Text("Moving around")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                        Text("Use the menus at the bottom of the screen to move between the 3 main areas of the app.")
                                        Spacer()
                                    }
                                    .padding(.leading, 16.0)
                                }
                                
                            }
                            .padding(16.0)
                        }
                    }
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel("When you start using the app, you can use the menu at the bottom of the screen to move between the 3 main areas of the app.")
                    .tag(2)
                    
                    ScrollView {
                        
                        if verticalSizeClass == .regular {
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Spacer()
                                SampleAnimation()
                                    .padding(.bottom, 8.0)

                                VStack(alignment: .leading, spacing: 24.0) {
                                    HStack(alignment: .top) {
                                        Image(systemName:"house.fill")
                                            .font(.system(size: 24))
                                            .foregroundColor(Color("nhsBlue"))
                                        
                                        VStack {
                                            Text(" Manage prescriptions, appointments, vaccinations and other NHS support in ")
                                            +
                                            Text("home")
                                                .fontWeight(.semibold)
                                                .foregroundStyle(Color.nhsBlue)
                                        }
                                    }
                                    HStack(alignment: .top) {
                                        Image(systemName:"person.circle.fill")
                                            .font(.system(size: 24))
                                            .foregroundColor(Color("nhsBlue"))
                                        
                                        VStack {
                                            Text(" Check your personal details and settings in ")
                                            +
                                            Text("profiles")
                                                .fontWeight(.semibold)
                                                .foregroundStyle(Color.nhsBlue)
                                        }
                                    }
                                    HStack(alignment: .top) {
                                        Image(systemName:"envelope.fill")
                                            .font(.system(size: 24))
                                            .foregroundColor(Color("nhsBlue"))
                                        
                                        VStack {
                                            Text(" Read communications from your healthcare services in ")
                                            +
                                            Text("messages")
                                                .fontWeight(.semibold)
                                                .foregroundStyle(Color.nhsBlue)
                                        }
                                    }
                                }

                                Spacer()
                                
                            }
                            .padding(16.0)
                        } else {
                            //landscape mode here
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                HStack {
                                    SampleAnimation()
                                        .padding(.bottom, 8.0)
                                    
                                    VStack(alignment: .leading, spacing: 24.0) {
                                        HStack(alignment: .top) {
                                            Image(systemName:"house.fill")
                                                .font(.system(size: 24))
                                                .foregroundColor(Color("nhsBlue"))
                                            
                                            VStack {
                                                Text(" Manage prescriptions, appointments, vaccinations and other NHS support in ")
                                                +
                                                Text("home")
                                                    .fontWeight(.semibold)
                                                    .foregroundStyle(Color.nhsBlue)
                                            }
                                        }
                                        HStack(alignment: .top) {
                                            Image(systemName:"person.circle.fill")
                                                .font(.system(size: 24))
                                                .foregroundColor(Color("nhsBlue"))
                                            
                                            VStack {
                                                Text(" Check your personal details and settings in ")
                                                +
                                                Text("profiles")
                                                    .fontWeight(.semibold)
                                                    .foregroundStyle(Color.nhsBlue)
                                            }
                                        }
                                        HStack(alignment: .top) {
                                            Image(systemName:"envelope.fill")
                                                .font(.system(size: 24))
                                                .foregroundColor(Color("nhsBlue"))
                                            
                                            VStack {
                                                Text(" Read communications from your healthcare services in ")
                                                +
                                                Text("messages")
                                                    .fontWeight(.semibold)
                                                    .foregroundStyle(Color.nhsBlue)
                                            }
                                        }
                                    }
                                    .padding(.leading, 16.0)
                                }
                                
                            }
                            .padding(16.0)
                        }
                        
                    }
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel("Now, we'll explain what you can do in the 3 main areas of the app. In home, you can manage your prescriptions, appointments, vaccinations and other NHS support. In profile, you can check your personal details and settings. Finally, in messages, you can read messages from your healthcare services.")
                    .tag(3)
                    
                    VStack {
                        NotificationsWebView()
                    }
                    .tag(4)
//                    
//                    ScrollView {
//                        
//                        if verticalSizeClass == .regular {
//                            VStack(alignment: .leading, spacing: 8.0) {
//                                
//                                Spacer()
//                                Image("App messages image 1")
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                    .padding(.bottom, 8.0)
//                                Text("Messages")
//                                    .font(.title)
//                                    .fontWeight(.semibold)
//                                Text("Select **Messages** to read messages from your healthcare services. ")
//                                Text("You can turn on notifications for these in the account and settings area of the app.")
//                                Spacer()
//                                
//                            }
//                            .padding(16.0)
//                            
//                        } else {
//                            //landscape mode here
//                            VStack(alignment: .leading, spacing: 8.0) {
//                                
//                                HStack {
//                                    Image("App messages image 1")
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)
//                                        .padding(.bottom, 8.0)
//                                    
//                                    VStack(alignment: .leading) {
//                                        Spacer()
//                                        Text("Messages")
//                                            .font(.title)
//                                            .fontWeight(.semibold)
//                                        Text("Select **Messages** to read messages from your healthcare services.")
//                                        Text("You can turn on notifications for these in the account and settings area of the app.")
//                                        Spacer()
//                                    }
//                                    .padding(.leading, 16.0)
//                                }
//                                
//                            }
//                            .padding(16.0)
//                        }
//                        
//                    }
//                    .accessibilityElement(children: .ignore)
//                    .accessibilityLabel("Use the messages area in the bottom menu to read messages from your healthcare services. You can turn on notifications for these in the account and settings menu area of the app. Now, you can get started. Select the 'done' button below to start using the app.")
//                    .tag(5)
                    
                    
                    
                    
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
                    if selectedTab < 4 {
                        
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

