//
//  HomeView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 05/03/2024.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    List {
                        
                        ProfileCardView()
                        
                        Section("Services") {
                            NavigationLink(destination: {
                                Text("Prescriptions")
                            }, label: {
                                Text("Request repeat prescriptions")
                                
                            })
                            Text("Check if you need urgent medical help using 111 online")
                        }
                        .padding(.vertical)
                        
                        
                        Section("Your health") {
                            CardView(cardTitle: "GP health record")
                            Text("View and manage prescriptions")
                            Text("Upcoming and past appointments")
                        }
                        .padding(.vertical)
                        
                        Section("Messages") {
                            HStack {
                                Image(systemName:"envelope.open")
                                Text("View your messages")
                                    .badge(2)
                                
                            }
                            .padding(.vertical)
                            
                        }
                        
                        Section("Manage services for another person") {
                            HStack {
                                Image(systemName:"person.2.circle")
                                Text("Switch profiles")
                            }
                        }
                        .padding(.vertical)
                        
                        
                        
                        //Promo card here
                        Section {
                            PromoCardView()
                                .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        } header: {
                            HStack {
                                Text("Card")
                                Spacer()
                                Text("Link >")
                            }
                        }
                        .padding(.horizontal, -16.0)
                        
                        
                        NavigationLink {
                            Text("Help using NHS app")
                        } label: {
                            
                            HStack {
                                Image(systemName:"questionmark.circle")
                                Text("Get help with using the NHS App")
                            }
                            .padding(.vertical)
                            .padding(.leading, -8.0)
                        }
                        .foregroundStyle(.nhsBlue)
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
