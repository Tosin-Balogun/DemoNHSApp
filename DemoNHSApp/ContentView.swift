//
//  ContentView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 05/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView {
            HomeView()
                .tabItem { Label(
                    title: { Text("Home") },
                    icon: { Image(systemName: "house") }
                ) }
 
                
            ServicesView()
                .tabItem { Label(
                    title: { Text("Services") },
                    icon: { Image(systemName: "cross") }
                ) }
  
            YourHealthView()
                .tabItem { Label(
                    title: { Text("Your health") },
                    icon: { Image(systemName: "heart") }
                ) }

            MessagesView()
                .badge(2)
                .tabItem { Label(
                    title: { Text("Messages") },
                    icon: { Image(systemName: "envelope.open") }
                ) }

        }
        .toolbarBackground(.orange, for: .tabBar)
        //.tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    ContentView()
}
