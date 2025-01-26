//
//  PastPrescriptions.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 25/01/2025.
//

import SwiftUI

struct PastPrescriptions: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        
                        Section {
                            NavigationLink(destination: {
                                Text("Prescription detail here")
                            }, label: {
                                VStack(alignment: .leading, spacing: 8.0) {
                                    
                                    Text("Collected")
                                        .fixedSize()
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.nhsBlack)
                                        .padding(.horizontal, 8.0)
                                        .background(){
                                            RoundedRectangle(cornerRadius: 25)
                                                .fill(.nhsGrey5)
                                                .frame(height: 24)
                                        }
                                        .padding(.vertical, 8.0)
                                    
                                    Text("Repeat prescription")
                                        
                                    Text ("""
                                          Prescribed on 15 May 2024 by Dr. Smith
                                          """)
                                    .font(.subheadline)
                                    .foregroundColor(.nhsGrey)
                                }
                                
                            })
                            
                            NavigationLink(destination: {
                                Text("Prescription detail here")
                            }, label: {
                                VStack(alignment: .leading, spacing: 8.0) {
                                    
                                    Text("Collected")
                                        .fixedSize()
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.nhsBlack)
                                        .padding(.horizontal, 8.0)
                                        .background(){
                                            RoundedRectangle(cornerRadius: 25)
                                                .fill(.nhsGrey5)
                                                .frame(height: 24)
                                        }
                                        .padding(.vertical, 8.0)
                                    
                                    Text("Repeat prescription")
                                        
                                    Text ("""
                                          Prescribed on 15 May 2024 by Dr. Maria Pavlov
                                          """)
                                    .font(.subheadline)
                                    .foregroundColor(.nhsGrey)
                                }
                                
                            })
 
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
    PastPrescriptions()
}
