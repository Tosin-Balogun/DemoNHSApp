//
//  ContentView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 05/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("showGettingStarted") var showGettingStarted = true
    @State private var tabSelection = 0
//    let tip = FeatureTip()
    
    var body: some View {

        TabView(selection: $tabSelection) {
            
            Group {
                HomeView()
                    .tabItem { Label(
                        title: { Text("Home") },
                        icon: { Image(systemName: "house") }
                ) }
                    .tag(0)
                
                ServicesView()
                    .tabItem { Label(
                        title: { Text("Services") },
                        icon: { Image(systemName: "cross") }
                    ) }
                    .tag(1)
                
                
                
                YourHealthView()
                    .tabItem { Label(
                        title: { Text("Your health") },
                        icon: { Image(systemName: "heart") }
                    ) }
                    .tag(2)
                
                MessagesView()
                    .badge("2")
                    .tabItem { Label(
                        title: { Text("Messages") },
                        icon: { Image(systemName: "envelope") }
                    ) }
                    .tag(3)
            }
            .toolbarBackground(.nhsBlue2, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarColorScheme(.dark, for: .tabBar)
 

        }
        .sensoryFeedback(.impact, trigger: tabSelection)
//        .popoverTip(tip, arrowEdge: .bottom)
//        .tabViewStyle(.page(indexDisplayMode: .always))
        .sheet(isPresented: $showGettingStarted) {
            WhatExistTips()
                .interactiveDismissDisabled()
        }
    }
}

#Preview {
    ContentView()
}
