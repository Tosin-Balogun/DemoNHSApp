//
//  FilterContent.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 25/01/2025.
//

import SwiftUI


struct FilterContent: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    
                    
                    List {
                        
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
                    
                }
                //VStack housing the list stops here
                
            }
            .navigationTitle("Filter by")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{ToolbarItem {
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Cancel")
                        .fontWeight(.semibold)
                })
            }}
        }
    }
}

#Preview {
    FilterContent()
}
