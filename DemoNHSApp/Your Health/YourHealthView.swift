//
//  YourHealthView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 05/03/2024.
//

import SwiftUI

struct YourHealthView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        //Text("View your personal records and choices")
                        
                        VStack {
                            Text("View your personal records and choices")
                                //.foregroundStyle(.gray)
                                .padding(-16)
                        }
                        //.padding(.bottom, 8.0)
                        .padding(.top)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                        Section {
                            NavigationLink(destination: {
                                Text("GP health record")
                            }, label: {
                                Text("GP health record")
                                
                            })
                            Text("View and manage prescriptions")
                            NavigationLink(destination: {
                                UpcomingAndPastAppointmentsView()
                            }, label: {
                                Text("Upcoming and past appointments")
                                    .badge(2)
                                
                            })
                            Text("Test results and imaging")
                            Text("COVID-19 vaccine record")
                            Text("NHS COVID Pass")
                            Text("Your health choices")
                            Text("Care plans")
                        }
                        .padding(.vertical)

                        
                    }
                    .padding(-8.0)
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("Your health")
            .toolbar{
                ToolbarItemGroup(placement: .automatic) {
                    ProfileButtonView()
                }
            }
 
        }
    }
}

#Preview {
    YourHealthView()
}
