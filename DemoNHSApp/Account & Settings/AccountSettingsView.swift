//
//  AccountSettingsView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 12/03/2024.
//

import SwiftUI

struct AccountSettingsView: View {
    
    @State private var showLogOut = false
    @State private var trigger = false
    
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
                                .padding(.horizontal, -8)
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
                            Button(action: {
                                showLogOut.toggle()
                                trigger.toggle()
                            }, label: {
                                Text("Log out")
                                    .fontWeight(.bold)
                                    .frame(height: 58.0)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(Color.nhsBlue, lineWidth: 4)
                                    )
                                    .foregroundStyle(.nhsBlue)
                                    .font(.body)
                                    .cornerRadius(8)
//                                        .shadow(color: Color.nhsBlue, radius: 0, x: 0.0, y: 4)

                                
                            })
                            .buttonStyle(.borderless)
                            .padding(.horizontal, -16.0)
                            .sensoryFeedback(.impact, trigger: trigger)
                            .listRowBackground(Color("nhsGrey5").opacity(0.0))
                            .confirmationDialog("Are you sure you want to log out?", isPresented: $showLogOut, titleVisibility: .visible) {
                                Button(role: .destructive, action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("Log out")
                                })
//                            } message: {
//                                Text("All progress will be reset once you log out")

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
