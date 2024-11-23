//
//  Filter.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 22/11/2024.
//

import SwiftUI

struct Filter: View {
    
    @State private var showFilter = false
    
    var body: some View {
        
        HStack(spacing: 16.0) {
            Button(action: {
                showFilter.toggle()
            }, label: {
                Image(systemName: "line.3.horizontal.decrease")
                    .foregroundColor(Color("nhsBlue"))
                Text("Filter")
                    .fontWeight(.semibold)
                    .foregroundStyle(.nhsBlue)
//                    .resizable()
//                    .frame(width: 34, height: 34)
//                    .aspectRatio(contentMode: .fit)
            })

            
        }
        .foregroundStyle(.nhsGrey)
        .sheet(isPresented: $showFilter, content: {
            Text("Filter by will appear here with controls")
//                .presentationDetents([ .medium, .large])
        })

    }
    
}

#Preview {
    Filter()
}
