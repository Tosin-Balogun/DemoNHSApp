//
//  LogOutv3.1.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 17/09/2024.
//

import SwiftUI

struct LogOutv3_1: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("AccentColor").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 8.0) {

                        Text("You can now close the app or log in again")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        

//                        Text("You can now close the NHS app or log back in again to access your NHS services")
//                            .font(.body)
//                            .fontWeight(.regular)
//                            .foregroundColor(Color.white)
                        
                    }
                    .padding(.horizontal, 16)
                    .padding(.bottom, 16.0)
                    
                    Button(action: {}, label: {
                        Text("Log back in")
                            .fontWeight(.bold)
                            .frame(height: 58.0)
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(.black)
                            .background(.white)
                            .font(.body)
                            .cornerRadius(8)
                            .shadow(color: Color.black, radius: 0, x: 0.0, y: 4)
                        
                    })
                    .padding(.horizontal, 16)
                    .padding(.bottom, 64.0)
                    
                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("You have logged out")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        }
                    }

            
        }
    }
}

#Preview {
    LogOutv3_1()
}
