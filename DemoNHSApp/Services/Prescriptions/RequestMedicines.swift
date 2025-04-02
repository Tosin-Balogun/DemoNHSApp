//
//  RequestMedicines.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 25/01/2025.
//

import SwiftUI

struct RequestMedicines: View {
    
    @State private var trigger = false
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        
                        VStack {
                            Text("Content for requesting medicines here")
                                //.foregroundStyle(.gray)
                            
                        }
                        .padding(.bottom, 16)
                        .padding(.top)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                        .listRowSeparator(.hidden)
                        
                        Section {
                            HStack {
                                Image(systemName:"square")
                                Text("Item 0")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 1")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 2")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 3")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 4")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 5")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 6")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 7")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 8")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 9")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 10")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 11")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 12")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 13")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 15")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 16")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 17")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 18")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 19")
                            }
                            HStack {
                                Image(systemName:"square")
                                Text("Item 20")
                            }
                        
                        }
                        .padding(.vertical)
                        .listRowBackground(Color("nhsGrey5").opacity(0.0))
                    }
                    .padding(-4.0)
                    .listStyle(.plain)
                    
                    VStack(alignment: .leading, spacing: 16.0){
                        
                        Button(action: {
                            trigger.toggle()
                        }, label: {
                            VStack(alignment: .leading) {
                                Label("Get help with medical abbreviations", systemImage: "questionmark.circle")
                                .foregroundColor(Color("nhsBlue"))
                                .fontWeight(.semibold)
                                .padding()
                            
                            }

                        })
                        .buttonStyle(.borderless)
                        .padding(.horizontal, -16.0)
                        .sensoryFeedback(.impact, trigger: trigger)
                        
                        Button(action: {
                            trigger.toggle()
                        }, label: {
                            Text("Continue")
                                .fontWeight(.semibold)
                                .frame(height: 58.0)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(.nhsWhite)
                                .background(.nhsGreen)
                                .font(.body)
                                .cornerRadius(8)
                                .shadow(color: Color("nhsDarkGreen"), radius: 0, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                        })
                        .sensoryFeedback(.impact, trigger: trigger)
                    }
                    .padding(16.0)
                    
                }
                //VStack housing the list stops here
                
            }
            .navigationTitle("Request repeat prescriptions")
            .toolbar{
                ToolbarItemGroup(placement: .automatic) {
                    ProfileButtonView()
                }
            }
        
        }
    }
}

#Preview {
    RequestMedicines()
}
