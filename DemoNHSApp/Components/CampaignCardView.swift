//
//  PromoCardView.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 11/03/2024.
//

import SwiftUI

struct CampaignCardView: View {
    var body: some View {
        
//        VStack(alignment: .leading, spacing: 32.0) {
//            Image("Clinical-trial")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                //.frame()
//                .overlay(alignment: .bottomLeading){
//                    
//                    VStack(alignment: .leading) {
//                        Text("Your hosptial and specialist doctors")
//                            .font(.title3)
//                            .fontWeight(.semibold)
//                        Text ("Register with Be Part of Research to find and join studies")
//                    }
//                }
//        }
//        .clipShape(Rectangle())
//        .frame(height:112)
//        .backgroundStyle(.white)
//        //.backgroundStyle(.white)
//        //.padding(.horizontal)
//        //.foregroundStyle(.white)
//        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
        VStack(alignment: .leading) {
            Image("campaign-image-3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
            VStack (alignment: .leading) {
                Text("Help change the NHS")
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                Text("Have your say on making the NHS fit for the future")
                    .foregroundColor(Color.white)
                    
            }
            .padding(.horizontal, 16)
            .padding(.top, 16)
            .padding(.bottom, 32)
        }
        .background(Color.nhsDarkBlue)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Help change the future of the NHS by taking part in our survey")
        //.shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

    }
    
}

#Preview {
    CampaignCardView()
}
