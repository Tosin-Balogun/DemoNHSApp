//
//  MessageListView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 11/03/2024.
//

import SwiftUI

struct MessageListView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        //Text("View your personal records and choices")
                        
                        VStack {
                            Text("You have 2 unread messages")
                                //.foregroundStyle(.gray)
                                .padding(-8)
                        }
                        //.padding(.bottom, 8.0)
                        .padding(.top)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                        
                        Section {
                            NavigationLink(destination: {
                                MessageDetailView()
                            }, label: {
                                VStack(alignment: .leading, spacing: 8.0) {
                                    
                                    Text("1:02pm")
                                        .foregroundColor(Color("nhsGrey"))
                                    Text("Portland Street Great Westood Surgery")
                                        .fontWeight(.semibold)

                                    Text("Patient survey reminder. The patient feedback survey is about to close. Have your say about Portland Street Great Westood Surgery by providing us with your thoughts")
                                        .font(.subheadline)
                                        .foregroundColor(Color("nhsGrey"))
                                        .lineLimit(3)
                                }
                                
                            })
                            .badge(1)
                            .badgeProminence(.increased)
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Text("Thursday")
                                    .foregroundColor(Color("nhsGrey"))
                                Text("Range Surgery")
                                    .fontWeight(.semibold)

                                Text("Dear Mary, we would like to ask you a few questions about smoking.")
                                    .font(.subheadline)
                                    .foregroundColor(Color("nhsGrey"))
                                    .lineLimit(3)
                            }
                            .badge(1)
                            .badgeProminence(.increased)
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Text("4 Oct 2023")
                                    .foregroundColor(Color("nhsGrey"))
                                Text("Hughenden Valley Surgery")
                                    .foregroundColor(Color("nhsGrey"))
                                
                                Text("Reminder of your telephone appointment with your GP on Friday 23 October at 1:30pm.")
                                    .font(.subheadline)
                                    .foregroundColor(Color("nhsGrey"))
                                    .lineLimit(3)
                            }
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Text("18 Sep 2023")
                                    .foregroundColor(Color("nhsGrey"))
                                Text("NHS APP")
                                    .foregroundColor(Color("nhsGrey"))
                                
                                Text("Your next COVID-19 vaccination. I'd like to invite you to get your COVID-19 vaccination this sprint")
                                    .font(.subheadline)
                                    .foregroundColor(Color("nhsGrey"))
                                    .lineLimit(3)
                            }
                                
                        }
                        .padding(.vertical)

                        
                    }
                    .padding(-8.0)
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("Your messages")
            .toolbar{
                ToolbarItemGroup(placement: .automatic) {
                    ProfileButtonView()
                }
            }
            .safeAreaInset(edge: .top, alignment: .leading) {
                
                HStack() {
                    Filter()
                    Spacer()
                }
                .padding(.horizontal, 16.0)
                .padding(.vertical, 8.0)
                .background{Color.nhsGrey5.opacity(0.5)}
            }
 
        }
    }
}

#Preview {
    MessageListView()
}
