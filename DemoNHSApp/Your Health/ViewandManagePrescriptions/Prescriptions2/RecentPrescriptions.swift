//
//  RecentPrescriptions.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 25/01/2025.
//

import SwiftUI

struct RecentPrescriptions: View {
    
    @State private var showDetails = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        
                        Section {
                            
                            Button(action: {
                                showDetails.toggle()
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
                                          Prescribed on 20 Jul 2024 by Dr. Smith
                                          """)
                                    .font(.subheadline)
                                    .foregroundColor(.nhsGrey)
                                    
                                    HStack {
                                        Circle()
                                            .fill(.red)
                                            .frame(width: 8, height: 8)
                                        Text("1 item cancelled")
                                            .font(.footnote)
                                    }
                                }
                                .fullScreenCover(isPresented: $showDetails, content: {
                                    PrescriptionDetails()
                                })
                            })
                            .buttonStyle(.plain)

 
                        }
                        .padding(.vertical)


                    }
                    
                    
                }
                //VStack housing the list stops here
            }
 
        }
    }
}

#Preview {
    RecentPrescriptions()
}
