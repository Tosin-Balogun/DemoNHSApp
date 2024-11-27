//
//  HomeView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 05/03/2024.
//

import SwiftUI

struct HomeView: View {
    
    let tip = FeatureTip()
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    List {
                        
                        ProfileCardViewB()
                            .padding(.top, -10.0)
                            .padding(.horizontal, -16)
                            .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                        Section(
                            header:Text("Services")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.black)
                                .padding(.leading, -16.0) // remove the left-side inset
                                .padding(.vertical, -6.0) // compensate for list row padding
                                .textCase(nil)){
                            NavigationLink(
                                destination: {Text("Prescriptions")},
                                label: {Text("Request repeat prescriptions")}
                            ).fontWeight(.medium)
                            NavigationLink(
                                destination: {Text("111 online")},
                                label: {Text("Check if you need urgent medical help using 111 online")}
                            ).fontWeight(.medium)
                        }
//                        .headerProminence(.increased)
                        .padding(.vertical, 10.0)
                        .foregroundColor(Color("nhsBlue"))


                        
                        Section(
                            header:Text("Your health")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.black)
                                .padding(.leading, -16.0) // remove the left-side inset
                                .padding(.vertical, -6.0) // compensate for list row padding
                                .textCase(nil)){
                            NavigationLink(
                                destination: {Text("GP health record")},
                                label: {Text("GP health record")}
                            ).fontWeight(.medium)
                            NavigationLink(
                                destination: {Text("View and manage prescriptions")},
                                label: {Text("View and manage prescriptions")}
                            ).fontWeight(.medium)
                            NavigationLink(destination: {
                                UpcomingAndPastAppointmentsView()
                            }, label: {
                                Text("Upcoming and past appointments")
                            }).fontWeight(.medium)
                        }
                        .padding(.vertical, 10.0)
                        .foregroundColor(Color("nhsBlue"))

                        
                        
                        Section(
                            header:Text("Messages")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.black)
                                .padding(.leading, -16.0) // remove the left-side inset
                                .padding(.vertical, -6.0) // compensate for list row padding
                                .textCase(nil)){
                            HStack {
                                Image(systemName:"envelope.open")
                                    .accessibilityElement(children: .ignore)
                                Text("View your messages").fontWeight(.medium)
                                    .badge(2)
                            }
                        }
                        .padding(.vertical, 10.0)
                        .foregroundColor(Color("nhsBlue"))

                        
                        Section(
                            header:Text("Manage services for another person")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.black)
                                .padding(.leading, -16.0) // remove the left-side inset
                                .padding(.vertical, -6.0) // compensate for list row padding
                                .textCase(nil)){
                            HStack {
                                Image(systemName:"person.2.circle")
                                Text("Switch profiles").fontWeight(.medium)
                            }
                        }
                        .padding(.vertical, 10.0)
                        .foregroundColor(Color("nhsBlue"))

                        
                        
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
                        .popoverTip(tip, arrowEdge: .bottom)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                    }
//                    .environment(\.defaultMinListRowHeight, 60)
//                    .environment(\.defaultMinListHeaderHeight, 60)

                    
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
