//
//  CheckPastPrescriptions.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 25/01/2025.
//

import SwiftUI

struct CheckPastPrescriptions: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        
                        VStack {
                            Text("Your past prescriptions will show for up to 2 months after collection or delivery")
                                //.foregroundStyle(.gray)
                                .padding(.horizontal, -8)
                                .padding(.top, -16)
                        }
                        //.padding(.bottom, 8.0)
                        .padding(.top)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
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
                                          Felodopine 2.5micrograms tablets
                                          Codeine phosphate 30mg tablets
                                          """)
                                    .font(.subheadline)
                                    .foregroundColor(.nhsGrey)
                                    
                                    Text("Prescribed on 15 May 2024")
                                        .font(.subheadline)
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
                                          Remipril 5mg capsules
                                          Warfarin 5mg tablets
                                          """)
                                    .font(.subheadline)
                                    .foregroundColor(.nhsGrey)
                                    
                                    Text("Prescribed on 15 May 2024")
                                        .font(.subheadline)
                                }
                                
                            })
 
                        }
                        .padding(.vertical)


                    }
                    .padding(-8.0)
                    
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("Past prescriptions")
            .toolbar{
                ToolbarItemGroup(placement: .automatic) {
                    ProfileButtonView()
                }
            }
 
        }
    }
}

#Preview {
    CheckPastPrescriptions()
}
