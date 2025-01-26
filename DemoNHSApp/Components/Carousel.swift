//
//  Carousel.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 09/12/2024.
//

import SwiftUI

struct Carousel: View {
    
    @Environment(\.dismiss) private var dismiss
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
                        //                    Image("App services image")
                        //                        .resizable()
                        //                        .aspectRatio(contentMode: .fit)
                        Text("Welcome to the NHS App")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                        Text("There is a new way of navigating the app. It’s now easier to find the services you need to manage your health. ")
                        Text("Let's get started")
                            .fontWeight(.semibold)
                        Spacer()
                        
                    }
                    .padding(16.0)
                    .tag(1)
                    
                    VStack(alignment: .leading, spacing: 8.0) {
                        //                    VStack{
                        //                        Image("nhsLogo")
                        //                    }
                        Spacer()
                        Image("App services image 1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.bottom, 8.0)
                        Text("Access services")
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("In **Services** you can take actions to look after your health. ")
                        Text("You can request repeat prescriptions, check for available GP appointments and more. ")
                        Text("Next")
                            .fontWeight(.semibold)
                        Spacer()
                        
                    }
                    .padding(16.0)
                    .tag(2)
                    
                    VStack(alignment: .leading, spacing: 8.0) {
                        //                    VStack{
                        //                        Image("nhsLogo")
                        //                    }
                        Spacer()
                        Image("App your health image 1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.bottom, 8.0)
                        Text("Manage your health")
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("In **Your health** you can view and manage your health information. ")
                        Text("You can check your booked appointments,  requested prescriptions and GP health record. ")
                        Text("Next")
                            .fontWeight(.semibold)
                        Spacer()
                        
                    }
                    .padding(16.0)
                    .tag(3)
                    
                    VStack(alignment: .leading, spacing: 8.0) {
                        //                    VStack{
                        //                        Image("nhsLogo")
                        //                    }
                        Spacer()
                        Image("App messages image 1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.bottom, 8.0)
                        Text("View your messages")
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("You may receive messages from your GP surgery and hospitals. ")
                        Text("You can turn on notifications for these in your account and settings.")
                        Text("Done")
                            .fontWeight(.semibold)
                        Spacer()
                        
                    }
                    .padding(16.0)
                    .tag(4)
                    
                    
                    
                    
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
                        })
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
                        })
                    } else {
                        withAnimation{
                            
                            Button(action: {
                                dismiss()
                            }, label: {
                                Text("Done")
                                    .fontWeight(.semibold)
                            })
                        }
                    }
                }
            }
            
            ToolbarItem (placement: .navigationBarTrailing){
                Image("nhsLogo")
            }
        })

    }
}

#Preview {
    Carousel()
}

