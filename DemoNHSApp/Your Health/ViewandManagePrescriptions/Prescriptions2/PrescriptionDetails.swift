//
//  PrescriptionDetails.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 26/01/2025.
//

import SwiftUI

struct PrescriptionDetails: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var showBarcode = false
    @State private var trigger = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                    //Prescription barcode here
                        VStack {
                            Text("Prescribed on 20 July 2024 by Dr. Smith.")
                                .font(.title3)
                                .foregroundColor(Color("nhsGrey"))
                                .padding(.horizontal, -16)
                                .padding(.top, -16)
                        }
                        .padding(.top)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                        Section {
                            
                            VStack {
                                Text ("""
                                      To be collected at Boots Pharmacy, Balham, London, S12 73G.
                                      Phone number 080867766155.
                                      """)
                            }
                            .listRowBackground(Color("nhsGrey5").opacity(0.0))
                            
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

 
                        } header: {Text("Details")} footer: {Text("For instruction on how to take your medicine, read the label on the packet or container")}
                        .padding(.vertical)
                        .padding(.top, -16.0)
                        .padding(.leading, -16)

                    }
                    
                    
                    
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("One off prescription")
            .toolbar{
                ToolbarItem {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Done")
                            .fontWeight(.semibold)
                    })
                }
                //Second toolbar item
                ToolbarItem(placement: .bottomBar){
                    VStack(alignment: .leading, spacing: 16.0){
                        
                        Button(action: {
                            showBarcode.toggle()
                            trigger.toggle()
                        }, label: {
                            VStack(alignment: .leading) {
                                HStack {
                                    Label("Show barcode", systemImage: "barcode.viewfinder")
                                        .labelStyle(.titleAndIcon)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.nhsBlue)
                                }
                                .foregroundColor(Color("nhsBlue"))
                                .fontWeight(.semibold)
                                .padding()
                            
                            }
                            })
                        .buttonStyle(.borderless)
                        .sensoryFeedback(.impact, trigger: trigger)
                        .padding(.horizontal, -16.0)
                        .sheet(isPresented: $showBarcode, content: {
                            PrescriptionBarcode2()

                        })
                    }
                    .padding(16.0)
                }
            }
 
        }
    }
}

#Preview {
    PrescriptionDetails()
}
