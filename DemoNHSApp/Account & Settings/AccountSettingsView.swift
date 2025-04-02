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
                        
                        Section {
                            // Section for profile
                            VStack(alignment: .leading){
                                Text("Mary Swanson")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.0, green: 0.1843137254901961, blue: 0.3607843137254902))
                                Text("**Date of birth:** 12 September 1997")
                                    .foregroundColor(Color(red: 0.001, green: 0.186, blue: 0.361))
                                Text("**NHS number:** 123 456 7809")
                                    .foregroundColor(Color(red: 0.001, green: 0.186, blue: 0.361))
                            }
                            NavigationLink(destination: {
                                Text("Manage services for another person")
                            }, label: {
                                Text("Manage services for another person")
                                    .foregroundColor(Color(red: 0.001, green: 0.186, blue: 0.361))
                                
                            })

                        }
                        .padding(.vertical)
                        .listRowBackground(Color(red: 0.8235294117647058, green: 0.8823529411764706, blue: 0.9372549019607843))
                        
                        Section ("Personal details") {
                            // Section for personal details
                            NavigationLink(destination: {
                                Text("Contact details")
                            }, label: {
                                Text("Contact details")
                                
                            })
                            Text("Your GP surgery")
                        }
                        .padding(.vertical)
                        
                        Section ("Health choices") {
                            // Section for health choices
                            NavigationLink(destination: {
                                Text("Organ donation decision")
                            }, label: {
                                Text("Organ donation decision")
                                
                            })
                            Text("Health data sharing decision")
                            Text("Take part in health research")
                        }
                        .padding(.vertical)
                        
                        Section ("Settings") {
                            Text("Notifications")
                            Text("Touch ID")
                            Text("Login and security")
                            Text("Cookies")
                        }
                        .padding(.vertical)
                        
                        Section ("About the NHS App") {
                            Text("Privacy and legal policies")
                            Text("Join our user research panel")
                        }
                        .padding(.vertical)
                        
                        Section {
                            // Section for log out button
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

                        
                    }
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("Account")
 
        }
    }
}

#Preview {
    AccountSettingsView()
}
