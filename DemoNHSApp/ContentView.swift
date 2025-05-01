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
                HomeWebView()
                    .tabItem { Label(
                        title: { Text("Home") },
                        icon: { Image(systemName: "house") }
                ) }
                    .tag(0)
                
                ServicesView()
                    .tabItem { Label(
                        title: { Text("Profile") },
                        icon: { Image(systemName: "person.circle") }
                    ) }
                    .tag(1)

                
                MessagesWebView()
                    .badge("")
                    .tabItem { Label(
                        title: { Text("Messages") },
                        icon: { Image(systemName: "envelope") }
                    ) }
                    .tag(2)
            }
            .toolbarBackground(.nhsBlue2, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarColorScheme(.dark, for: .tabBar)
 

        }
        .sensoryFeedback(.impact, trigger: tabSelection)
//        .popoverTip(tip, arrowEdge: .bottom)
//        .tabViewStyle(.page(indexDisplayMode: .always))
        .sheet(isPresented: $showGettingStarted) {
            GettingStarted()
                .interactiveDismissDisabled()
        }
    }
}

#Preview {
    ContentView()
}
