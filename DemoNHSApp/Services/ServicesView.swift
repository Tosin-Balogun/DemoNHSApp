//
//  ServicesView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 05/03/2024.
//

import SwiftUI

struct ServicesView: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        
                        VStack {
                            Text("Get care and support to help you stay well")
                                //.foregroundStyle(.gray)
                                .padding(-8)
                        }
                        //.padding(.bottom, 8.0)
                        .padding(.top)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                        Section("Your GP services") {
                            NavigationLink(destination: {
                                RequestMedicines()
                            }, label: {
                                Text("Request repeat prescriptions")
                                
                            })
                            Text("Contact your GP for a document or update")
                            Text("Check for available GP appointments")
                        }
                        .padding(.vertical)
                        
                        Section("Other NHS services") {
                            UrgentCareOnlineView()
                            FindServiceSafariView()
                            
                        }
                        .padding(.vertical)
                        
                        Section("Find health information") {
                            Text("Browse NHS health information")
                                .padding(.vertical)
                            Text("Browse NHS medicines information")
                                .padding(.vertical)
                            Text("Find COVID-19 guidance")
                            .padding(.vertical)

                        }

                        
                    }
                    .padding(-8.0)
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("Services")
            .toolbar{
                ToolbarItemGroup(placement: .automatic) {
                    ProfileButtonView()
                }
            }
 
        }
    }
}

#Preview {
    ServicesView()
}
