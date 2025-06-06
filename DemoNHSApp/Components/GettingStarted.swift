//
//  GettingStarted.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 09/12/2024.
//

import SwiftUI

struct GettingStarted: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @State var selectedTab: Int = 1
    @AccessibilityFocusState private var isHeaderFocused: Bool
    
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                Color.nhsGrey5
                    .ignoresSafeArea()
                
                TabView(selection: $selectedTab) {
                    
                    VStack(alignment: .leading, spacing: 8.0) {
                        Spacer()
                        VStack{
                            Image("NHS-logo-2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 24.0)
                        }
             
                        Text("Welcome to the NHS App")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding(.bottom, 8.0)
                        Text("Before you start, here are some tips about using the app. ")
                        Spacer()
                        
                    }
                    .padding(16.0)
                    .tag(1)
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel("Welcome to the NHS App. Before you start, here are some tips about using the app.")
                    
                    ScrollView {
                        if verticalSizeClass == .regular {
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Spacer()
                                SampleAnimation()
                                    .padding(.bottom, 8.0)
                                
                                Text("Moving around")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Text("Use the menu at the bottom of the screen to move between the main areas of the app.")
                                Spacer()
                                
                            }
                            .padding(16.0)
                        } else {
                            //landscape mode here
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                HStack {
                                    SampleAnimation()
                                        .padding(.bottom, 8.0)
                                    
                                    VStack(alignment: .leading) {
                                        Spacer()
                                        Text("Moving around")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                        Text("Use the menu at the bottom of the screen to move between the main areas of the app.")
                                        Spacer()
                                    }
                                    .padding(.leading, 16.0)
                                }
                                
                            }
                            .padding(16.0)
                        }
                    }
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel("When you start using the app, you can use the menu at the bottom of the screen to move between the main areas.")
                    .tag(2)
                    
                    ScrollView {
                        if verticalSizeClass == .regular {
                            VStack(alignment: .leading, spacing: 8.0) {
                                Spacer()
                                Text("What you can do in the app")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .padding(.bottom, 24.0)
                                    .accessibilityAddTraits(.isHeader)
                                    .accessibilityFocused($isHeaderFocused)
                                
                                HStack(alignment: .top) {
                                    Image(systemName:"cross.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color("nhsBlue"))
                                    
                                    VStack(alignment: .leading) {
                                        Text("Services")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(Color.nhsBlue)
                                        Text("Request repeat prescriptions, GP appointments and other NHS support.")
                                    }
                                }
                                .padding(.bottom, 24.0)
                                .accessibilityElement(children: .ignore)
                                .accessibilityLabel("The first area of the app is called 'services'. Here you will find options to request repeat prescriptions, book GP appointments and get other NHS support.")
                                
                                
                                HStack(alignment: .top) {
                                    Image(systemName:"heart.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color("nhsBlue"))
                                    
                                    VStack(alignment: .leading) {
                                        Text("Your health")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(Color.nhsBlue)
                                        Text("Check your booked appointments, prescription requests and health records.")
                                    }
                                }
                                .padding(.bottom, 24.0)
                                .accessibilityElement(children: .ignore)
                                .accessibilityLabel("The second area of the app is called 'your health'. Here you can check your booked appointments, prescription requests and health records.")
                                
                                HStack(alignment: .top) {
                                    Image(systemName:"envelope.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color("nhsBlue"))
                                    
                                    VStack(alignment: .leading) {
                                        Text("Messages")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(Color.nhsBlue)
                                        Text("Read messages from your healthcare services.")
                                    }
                                }
                                .padding(.bottom, 24.0)
                                .accessibilityElement(children: .ignore)
                                .accessibilityLabel("The third area of the app is your messages. Here you can read messages from your GP surgery and other healthcare services. Now, you can get started. Select the 'done' button to start using the app.")
                                
                                Spacer()
                            }
                            .accessibilityElement(children: .contain)
                            .padding(16.0)
                        } else {
                            //landscape mode here
                            VStack(alignment: .leading, spacing: 8.0) {
                                Spacer()
                                Text("What you can do in the app")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .padding(.bottom, 24.0)
                                    .accessibilityAddTraits(.isHeader)
                                    .accessibilityFocused($isHeaderFocused)
                                
                                HStack(alignment: .top) {
                                    Image(systemName:"cross.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color("nhsBlue"))
                                    
                                    VStack(alignment: .leading) {
                                        Text("Services")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(Color.nhsBlue)
                                        Text("Request repeat prescriptions, GP appointments and other NHS support.")
                                    }
                                }
                                .padding(.bottom, 24.0)
                                .accessibilityElement(children: .ignore)
                                .accessibilityLabel("The first area of the app is called 'services'. Here you will find options to request repeat prescriptions, book GP appointments and get other NHS support.")
                                
                                HStack(alignment: .top) {
                                    Image(systemName:"heart.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color("nhsBlue"))
                                    
                                    VStack(alignment: .leading) {
                                        Text("Your health")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(Color.nhsBlue)
                                        Text("Check your booked appointments, prescription requests and health records.")
                                    }
                                }
                                .padding(.bottom, 24.0)
                                .accessibilityElement(children: .ignore)
                                .accessibilityLabel("The second area of the app is called 'your health'. Here you can check your booked appointments, prescription requests and health records.")
                                
                                HStack(alignment: .top) {
                                    Image(systemName:"envelope.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color("nhsBlue"))
                                    
                                    VStack(alignment: .leading) {
                                        Text("Messages")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(Color.nhsBlue)
                                        Text("Read messages from your healthcare services.")
                                    }
                                }
                                .padding(.bottom, 24.0)
                                .accessibilityElement(children: .ignore)
                                .accessibilityLabel("The third area of the app is your messages. Here you can read messages from your GP surgery and other healthcare services. Now, you can get started. Select the 'done' button to start using the app.")
                            }
                            .padding(16.0)
                            .padding(.leading, 16.0)
                        }
                    }
                    .tag(3)

                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .onChange(of: selectedTab) { oldValue, newValue in
                                    // Only trigger focus when switching to tag 3
                                    if newValue == 3 {
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                            isHeaderFocused = true
                                        }
                                    }
                                }

                
                
            }
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.automatic)
        .toolbar (content: {
            ToolbarItem (placement: .bottomBar) {
                HStack() {

                    if selectedTab > 1 {
                        
                        Button(action: {
                            withAnimation {
                                selectedTab -= 1
                            }
                        }, label: {
                            Image(systemName: "chevron.left")
                            Text("Previous")
                                .fontWeight(.semibold)
                        }).sensoryFeedback(.impact, trigger: selectedTab)
                    }
//                    Spacer()
//                    Text("\(selectedTab) of 4")
                    Spacer()
                    if selectedTab < 3 {
                        
                        Button(action: {
                            withAnimation{
                                selectedTab += 1
                            }
                        }, label: {
                            Text("Next")
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.right")
                        }).sensoryFeedback(.impact, trigger: selectedTab)
                    } else {
                        withAnimation{
                            
                            Button(action: {
                                dismiss()
                            }, label: {
                                Text("Done")
                                    .fontWeight(.semibold)
                            }).sensoryFeedback(.impact, trigger: selectedTab)
                        }
                    }
                }
            }
            
        })

    }
}

#Preview {
    GettingStarted()
}

