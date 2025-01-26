//
//  CheckReadyPrescriptions.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 25/01/2025.
//

import SwiftUI

struct CheckReadyPrescriptions: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        
                        VStack {
                            Text("Find out if your prescription is ready to collect. If you need your medicine urgently, contact your pharmacy")
                                //.foregroundStyle(.gray)
                                .padding(.horizontal, -8)
                                .padding(.top, -16)
                        }
                        //.padding(.bottom, 8.0)
                        .padding(.top)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                        Section {
                            
                            NavigationLink(destination: {
                                YourPrescription()
                            }, label: {
                                VStack(alignment: .leading, spacing: 8.0) {
                                    
                                    Text("Ready to collect")
                                        .fixedSize()
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.nhsDarkGreen)
                                        .padding(.horizontal, 8.0)
                                        .background(){
                                            RoundedRectangle(cornerRadius: 25)
                                                .fill(.nhsGreenTint)
                                                .frame(height: 24)
                                        }
                                        .padding(.vertical, 8.0)
                                    
                                    Text("One off prescriptions")
                                        
                                    Text ("""
                                          Cephalexin 500mg capsules
                                          Codeine phosphate 30mg tablets
                                          """)
                                    .font(.subheadline)
                                    .foregroundColor(.nhsGrey)
                                    
                                    Text("Prescribed on 18 Jul 2024")
                                        .font(.subheadline)
                                    
                                    HStack {
                                        Circle()
                                            .fill(.red)
                                            .frame(width: 8, height: 8)
                                        Text("1 item cancelled")
                                            .font(.footnote)
                                    }
                                }
                                
                            })
 
                        }
                        .padding(.vertical)
                        
                        Divider()
                            .padding(.top, -16)
                            .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                        Section {
                            
                            NavigationLink(destination: {
                                CheckPastPrescriptions()
                            }, label: {
                                Text("Past prescriptions")
                                
                            })

 
                        }
                        .padding(.vertical)

                    }
                    .padding(-8.0)
                    
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("Check if your prescriptions are ready")
            .toolbar{
                ToolbarItemGroup(placement: .automatic) {
                    ProfileButtonView()
                }
            }
 
        }
    }
}

#Preview {
    CheckReadyPrescriptions()
}
