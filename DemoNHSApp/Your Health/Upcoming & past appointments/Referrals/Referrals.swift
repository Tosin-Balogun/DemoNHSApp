//
//  Referrals.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 25/01/2025.
//


import SwiftUI

struct Referrals: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        
                        VStack {
                            Text("View and manage your referrals")
                                .padding(.top, -16)
                                //.foregroundStyle(.gray)
                            
                        }
                        .padding(.bottom, 16)
                        .padding(.top)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        .listRowSeparator(.hidden)
                        
                        Section {
                            VStack(alignment: .leading) {
                                Text("Referrals to action")
                                    
                                Text("0 refferals to action")
                                    .font(.subheadline)
                            }
                            VStack(alignment: .leading) {
                                Text("Pending referrals")
                                    
                                Text("0 pending referral")
                                    .font(.subheadline)
                            }

                        
                        }
                        .padding(.vertical)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                    }
                    .padding(-4.0)
                    .listStyle(.plain)
                    
                }
                //VStack housing the list stops here
                
            }
            .navigationTitle("Referrals")
            .toolbar{
                ToolbarItemGroup(placement: .automatic) {
                    ProfileButtonView()
                }
            }
        
        }
    }
}

#Preview {
    Referrals()
}
