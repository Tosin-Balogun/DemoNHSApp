//
//  PrescriptionBarcode2.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 26/01/2025.
//

import SwiftUI

struct PrescriptionBarcode2: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var showBarcode = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("nhsGrey5").ignoresSafeArea()
                
                BarcodeContent()
                //VStack housing the list stops here
            }
            .navigationTitle("Barcode")
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.inline/*@END_MENU_TOKEN@*/)
            .toolbar{ToolbarItem {
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Done")
                        .fontWeight(.semibold)
                })
            }}
 
        }
    }
}

#Preview {
    PrescriptionBarcode2()
}
