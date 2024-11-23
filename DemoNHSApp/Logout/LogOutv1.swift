//
//  LogOutA.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 17/09/2024.
//

import SwiftUI

struct LogOutA: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("AccentColor").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    Spacer()
                    
                    //Text("You have logged out")
                    Text("Logged out")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding(.horizontal, 16)
                        .padding(.bottom, 24.0)
                    
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
            //            .navigationTitle("Logged out")
            //            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    LogOutA()
}
