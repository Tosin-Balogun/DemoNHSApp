//
//  UpcomingAndPastAppointmentsView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 13/03/2024.
//

import SwiftUI

struct UpcomingAndPastAppointmentsView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        
                        VStack {
                            Text("View or manage upcoming and past appointments, referrals and waiting lists")
                                //.foregroundStyle(.gray)
                                .padding(.horizontal, -16)
                                .padding(.top, -16)
                        }
                        //.padding(.bottom, 8.0)
                        .padding(.top)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                        Section {
                            Text("GP surgery appointments")
                            
                            NavigationLink(destination: {
                                Text("Referrals")
                            }, label: {
                                Text("Referrals")
                                    .badge(1)
                                
                            })
                            
                            Text("Hospital appointments")
                            Text("Waiting lists")
 
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
                                Text("Find available GP appointments and other available services")
                                    .multilineTextAlignment(.center)
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("Explore services")
//                                        .fontWeight(.bold)
//                                        .frame(height: 58.0)
//                                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//                                        .overlay(
//                                            RoundedRectangle(cornerRadius: 8)
//                                                .stroke(Color.nhsBlue, lineWidth: 4)
//                                        )
//                                        .foregroundStyle(.nhsBlue)
//                                        .background(.nhsBlue.opacity(0.2))
//                                        .font(.body)
//                                        .cornerRadius(8)
////                                        .shadow(color: Color.nhsBlue, radius: 0, x: 0.0, y: 4)
                                    
                                    // Regular NHS secondary button
                                        .fontWeight(.bold)
                                        .frame(height: 58.0)
                                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                        .foregroundStyle(.white)
                                        .background(.nhsGrey)
                                        .font(.body)
                                        .cornerRadius(8)
                                        .shadow(color: Color.black, radius: 0, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                                })
                            }
 
                        }
                        .padding(.vertical)

                    }
                    .padding(-8.0)
                    
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("Upcoming and past appointments")
            .toolbar{
                ToolbarItemGroup(placement: .automatic) {
                    ProfileButtonView()
                }
            }
 
        }
    }
}

#Preview {
    UpcomingAndPastAppointmentsView()
}
