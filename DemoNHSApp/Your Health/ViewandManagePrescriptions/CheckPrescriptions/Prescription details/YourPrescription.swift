//
//  YourPrescription.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 25/01/2025.
//

import SwiftUI

struct YourPrescription: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                    //Prescription barcode here
                        Section{
                            PrescriptionBarcode()
                                .listRowSeparator(.hidden)
                        }
                        
                        Section {
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
                                
                                Text("Cephalexin 500mg capsules")
                                
                                Text("Quantity: 28 capsules")
                                    .font(.subheadline)
        
                            }
                            .listRowBackground(Color("nhsGrey5").opacity(0.0))
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Text("Cancelled")
                                    .fixedSize()
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.nhsDarkRed)
                                    .padding(.horizontal, 8.0)
                                    .background(){
                                        RoundedRectangle(cornerRadius: 25)
                                            .fill(.nhsRedTint)
                                            .frame(height: 24)
                                    }
                                    .padding(.vertical, 8.0)
                                
                                Text("Codeine phosphate 30mg tabelts")
                                
                                Text("Quantity: 10 capsules")
                                    .font(.subheadline)
        
                            }
                            .listRowBackground(Color("nhsGrey5").opacity(0.0))

 
                        } header: {Text("Medicines")} footer: {Text("For instruction on how to take your medicine, read the label on the packet or container")}
                        .padding(.vertical)
                        .padding(.top, -16.0)
                        .padding(.leading, -16)
                        
                        Section {
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Text("Pharmacy")
                                Text ("""
                                      Boots Pharmacy
                                      Balham
                                      London
                                      SW12 73G
                                      080867766155
                                      """)
                                .font(.subheadline)
        
                            }
                            .listRowBackground(Color("nhsGrey5").opacity(0.0))
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Text("Date prescribed")
                                Text("18 July 2024")
                                    .font(.subheadline)
        
                            }
                            .listRowBackground(Color("nhsGrey5").opacity(0.0))
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Text("Prescribed by")
                                Text("Dr. Smith")
                                    .font(.subheadline)
        
                            }
                            .listRowBackground(Color("nhsGrey5").opacity(0.0))
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Text("Organisation")
                                Text("York Road Practice")
                                    .font(.subheadline)
        
                            }
                            .listRowBackground(Color("nhsGrey5").opacity(0.0))

 
                        } header: {Text("Details")}
                        .padding(.vertical)
                        .padding(.top, -16.0)
                        .padding(.leading, -16.0)

                    }
                    
                    
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("Your prescription")
            .toolbar{
                ToolbarItemGroup(placement: .automatic) {
                    ProfileButtonView()
                }
            }
 
        }
    }
}

#Preview {
    YourPrescription()
}
