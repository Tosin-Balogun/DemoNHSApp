//
//  ViewandManagePrescriptions.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 25/01/2025.
//

import SwiftUI

struct ViewandManagePrescriptions: View {
    
    @State private var trigger = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        
                        VStack {
                            Text("Check your prescriptions and choose the pharmacy they are collected or delivered from")
                                //.foregroundStyle(.gray)
                                .padding(.horizontal, -8)
                                .padding(.top, -16)
                        }
                        //.padding(.bottom, 8.0)
                        .padding(.top)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                        Section {
                            VStack(alignment: .leading, spacing: 8.0) {
                                Text("Requested medicines")
                                   
                                Text ("""
                                      Check if your GP has arrpoved the medicines you requested in the app
                                      """)
                                .font(.subheadline)
                                .foregroundColor(Color("nhsGrey"))
                            }
                            
                            NavigationLink(destination: {
                                CheckReadyPrescriptions()
                            }, label: {
                                VStack(alignment: .leading, spacing: 8.0) {
                                    Text("Check if your prescriptions are ready")
                                       
                                    Text ("""
                                          View prescriptions being prepared by pharmacy
                                          """)
                                    .font(.subheadline)
                                    .foregroundColor(Color("nhsGrey"))
                                }
                                    .badge(1)
                                
                            })
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                Text("Choose a pharmacy")
                                   
                                Text ("""
                                      Choose or change a pharmacy for your prescriptions to be collected or delivered from
                                      """)
                                .font(.subheadline)
                                .foregroundColor(Color("nhsGrey"))
                            }
                            VStack(alignment: .leading, spacing: 8.0) {
                                Text("Hospital and other medicines")
                                   
                                Text ("""
                                      View your current and past medicines
                                      """)
                                .font(.subheadline)
                                .foregroundColor(Color("nhsGrey"))
                            }
 
                        }
                        .padding(.vertical)
                        
                        Section {

                            VStack(alignment: .center, spacing: 16.0) {
                                Image(systemName: "cross")
                                    .resizable()
                                    .foregroundStyle(.nhsBlue)
                                    .frame(width: 24, height: 24)
                                
                                Text("Access services")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.center)
                                Text("Request medicines you take often")
                                    .multilineTextAlignment(.center)
                                
                                Button(action: {
                                    trigger.toggle()
                                }, label: {
                                    Text("Request medicines")
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
                                .sensoryFeedback(.impact, trigger: trigger)
                            }
 
                        }
                        .padding(.vertical)

                    }
                    .padding(-8.0)
                    
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("View and manage prescriptions")
            .toolbar{
                ToolbarItemGroup(placement: .automatic) {
                    ProfileButtonView()
                }
            }
 
        }
    }
}

#Preview {
    ViewandManagePrescriptions()
}
