//
//  Prescriptions2.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 25/01/2025.
//

import SwiftUI

struct Prescriptions2: View {
    
    @State private var prescriptionPeriodSelected: PrescriptionPeriod = .recent
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing){
                Color("nhsGrey5").ignoresSafeArea()
                
                VStack {
                    // Picker controls to switch views
                    Picker("Prescription period", selection: $prescriptionPeriodSelected) {
                        Text("Recent").tag(PrescriptionPeriod.recent)
                        Text("Past").tag(PrescriptionPeriod.past)
                        
                    }
                    .padding(.horizontal, 16.0)
                    .pickerStyle(.segmented)
                    
                    Spacer()
                    //View to be called with bindings
                    PrescriptionPeriodView(selectedPeriod: prescriptionPeriodSelected)
                }
                .navigationTitle("Prescriptions")
                .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.inline/*@END_MENU_TOKEN@*/)
                .toolbar{
                    ToolbarItemGroup(placement: .automatic) {
                        ProfileButtonView()
                    }
                }
                
                //Floating action button
                FloatingActionButton()
            }
        }
    }
}

// Switch case variable
enum PrescriptionPeriod: String, CaseIterable {
    case recent = "Recent"
    case past = "Past"
}

// Switch case view
struct PrescriptionPeriodView: View {
    var selectedPeriod: PrescriptionPeriod
    
    var body: some View {
        switch selectedPeriod {
        case .recent:
            RecentPrescriptions()
        case .past:
            PastPrescriptions()
        }
    }
}

#Preview {
    Prescriptions2()
}
