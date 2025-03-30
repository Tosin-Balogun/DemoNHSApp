//
//  LottieAnimation.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 27/03/2025.
//


import SwiftUI
import DotLottie

struct SampleAnimation: View {
    
    var body: some View {
        VStack {
            //Something here
//            LottieView(animation: .named("RabbitAnimation"))
//                       .playing()
            DotLottieAnimation(fileName: "AccountTip", config: AnimationConfig(autoplay: true, loop: true)).view()
        }
        .frame(height: 340.0)
        


    }
    
}

#Preview {
    SampleAnimation()
}
