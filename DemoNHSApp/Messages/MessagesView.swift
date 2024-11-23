//
//  MessagesView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 05/03/2024.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        //Text("View your personal records and choices")
                        
                        VStack {
                            Text("You have 2 inboxes")
                                //.foregroundStyle(.gray)
                                .padding(-16)
                        }
                        //.padding(.bottom, 8.0)
                        .padding(.top)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        
                        Section {
                            NavigationLink(destination: {
                                MessageListView()
                            }, label: {
                                VStack(alignment: .leading, spacing: 8.0) {
                                    Text("Your NHS healthcare services")
                                        .badge(2)
                                        .badgeProminence(.increased)
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                    Text ("""
                                          You may recieve messages:
                                          • from your GP surgery
                                          • about hospital and specialist care appointments
                                          • about invitations and reminders
                                          """)
                                    .foregroundColor(Color("nhsGrey"))
                                    .foregroundStyle(.gray)
                                }
                                
                            })
                            VStack(alignment: .leading, spacing: 8.0) {
                                Text("Your hosptial and specialist doctors")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                Text ("""
                                      You may send or recieve messages about:
                                      • your health
                                      • documents and letters
                                      • pre-appointment questionaires
                                      """)
                            }
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                Text("Replies to your GP requests")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                Text ("""
                                      You may responses to queries you submitted about:
                                      • health problems
                                      • fit (sick) notes
                                      • doctor's letters
                                      """)
                            }
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                Text("GP surgery messaging")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                Text ("""
                                      Send and view messages from staff at your GP surgery
                                      """)
                            }

                        }
                        .padding(.vertical)

                        
                    }
                    .padding(-8.0)
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("Messages")
            .toolbar{
                ToolbarItemGroup(placement: .automatic) {
                    ProfileButtonView()
                }
            }
 
        }
    }
}

#Preview {
    MessagesView()
}
