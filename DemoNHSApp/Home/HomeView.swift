//
//  HomeView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 05/03/2024.
//

import SwiftUI
import TipKit

struct HomeView: View {
    
//    let tip = FeatureTip()
    @State private var trigger = false
    @State private var turnBiometrics = false
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    List {
                        
                        ProfileCardViewB()
                            .padding(.top, -8.0)
                            .padding(.horizontal, -8)
                            .padding(.bottom, -8)
                            .listRowBackground(Color("nhsGrey5").opacity(0.0))

                        Section("Services") {
                            NavigationLink(destination: {
                                Text("Book a vaccination")
                            }, label: {
                                Text("Book a vaccination")
                                
                            })
                            UrgentCareSafariView()
                        }
                        .padding(.vertical)
                        
                        
                        Section("Your health") {
                            
                            NavigationLink(destination: {
                                Text("Care plans")
                            }, label: {
                                Text("Care plans")
                                
                            })
                            NavigationLink(destination: {
                                Text("Your health choices")
                            }, label: {
                                Text("Your health choices")
                                
                            })
//                            NavigationLink(destination: {
//                                UpcomingAndPastAppointmentsView()
//                            }, label: {
//                                Text("Upcoming and past appointments")
//                                
//                            })
                        }
                        .padding(.vertical)
                        
                        Section("Messages") {
                            NavigationLink(destination: {
                                MessagesView()
                            }, label: {
                                HStack {
                                    Image(systemName:"envelope")
                                        .accessibilityElement(children: .ignore)
                                    Text("View your messages")
                                        .badge(2)
                                    
                                }
                                .padding(.vertical)
                                
                            })
                            
                        }
                        
                        Section("Account") {
                            HStack {
                                Image(systemName:"person.2.circle")
                                Text("Manage services for another person")
                                    .badge(2)
                            }
                        }
                        .padding(.vertical)
                        
                        
                        
                        //Promo card here
                        Section {
                            CampaignCardView()
                                .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        } header: {
                            HStack {
                                Text("Card")
                                Spacer()
                                Text("Link >")
                            }
                        }
                        .padding(.horizontal, -16.0)
                        
                        VStack{
                            
                            Button(action: {
                                trigger.toggle()
                            }, label: {
                                Label("Get help using the NHS App", systemImage: "questionmark.circle")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.nhsBlue)
                            })
                            .buttonStyle(.borderless)
                            .padding(.horizontal, -16.0)
                            .sensoryFeedback(.impact, trigger: trigger)
                        }
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                    }
                    .padding(-8.0)
                    
                    
                    
                }
                //.padding(16.0) END of VStack that holds the list view
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.inline/*@END_MENU_TOKEN@*/)
            .toolbar{
                ToolbarItemGroup(placement: .automatic) {
                    ProfileButtonView()
                }
            }
        }
        
    }
}
    
    


#Preview {
    HomeView()
}
