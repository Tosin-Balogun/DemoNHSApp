//
//  MessageDetailView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 11/03/2024.
//

import SwiftUI

struct MessageDetailView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {

                        
                        
                        Section ("Received today at 1:02pm") {

                            Text("Patient survey reminder. The Patient feedback survey is about to close. Have your say about Portland Street Greatood Surgery by providing us with your thoughts")
                                //.badge("\(Image(systemName: "circle.fill"))")
                                //.badge("Unread")
                            
                                

                                
                        }
                        .padding(.vertical)
                        
                        Section ("Received yesterday at 10:09am") {

                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                                //.badge("New!")

                                
                        }
                        .padding(.vertical)
                        
                        Section {
                            
                            VStack(alignment: .leading, spacing: 32.0) {
                                Text ("03:45pm")
                                    .font(.footnote)
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                            }
                            //.badge("New")
                            //.badgeProminence(.increased)
                            
                            
                        } header: {Text("Received last month")} footer: {
                            HStack {
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .frame(width:24, height:24)
                                    .aspectRatio(contentMode: .fit)
                                Text("Portland Street Greatood Surgery")
                            }
                            .foregroundStyle(.nhsGrey)
                            .padding(4)
                            .background(Color.nhsGrey4)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.vertical, -24)
                            .padding(.horizontal, -16)
                            
                        }
                        .padding(.vertical)

                        
                    }
                    .padding(-8.0)
                    
                }
                //VStack housing the list stops here
            }
            .navigationTitle("Portland Street Great Westwood Surgery")
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.inline/*@END_MENU_TOKEN@*/)
            
 
        }
    }
}

#Preview {
    MessageDetailView()
}
