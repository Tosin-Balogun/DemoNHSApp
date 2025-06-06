//
//  SampleAnimation.swift
//  DemoNHSApp
//
//  Created by Tosin Balogun on 04/06/2025.
//



import SwiftUI
import DotLottie

struct SampleAnimation: View {
    
    var body: some View {
        VStack {
            //Something here
//            LottieView(animation: .named("RabbitAnimation"))
//                       .playing()
            DotLottieAnimation(fileName: "MovingAround", config: AnimationConfig(autoplay: true, loop: true)).view()
        }
        .frame(height: 450.0)
        


    }
    
}

#Preview {
    SampleAnimation()
}
