//
//  AccountSettingsView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 12/03/2024.
//

import SwiftUI

struct AccountSettingsView: View {
    
    @State private var showLogOut = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        //Text("View your personal records and choices")
                        
                        VStack {
                            Text("Change your NHS App settings and personal details")
                                //.foregroundStyle(.gray)
                                .padding(.horizontal, -16)
                                .padding(.top, -16)
                        }
                        //.padding(.bottom, 8.0)
                        .padding(.top)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                        Section {
                            NavigationLink(destination: {
                                Text("Manage services for another person")
                            }, label: {
                                Text("Manage services for another person")
                                
                            })
                            Text("Change your contact or login details")
                            Text("Turn on fingerprint, face or iris login")
                            Text("Manage your notifications")
                            Text("Manage cookies and read legal information")
                            Text("Update your GP surgery on changes to your personal details")
                            Button {
                                showLogOut.toggle()
                            } label: {
                                Text("Log out")
                            }
                            .confirmationDialog("Are you sure?", isPresented: $showLogOut, titleVisibility: .visible) {
                                Button(role: .destructive, action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("Log Out")
                                })
                            } message: {
                                Text("All progress will be reset once you logout")
                            }



                        } footer: {
                            Text("Version: 2.36.6 (2.36.0)")
                        }
                        .padding(.vertical)

                        
                    }
                    .padding(-8.0)
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("Account and settings")
 
        }
    }
}

#Preview {
    AccountSettingsView()
}
