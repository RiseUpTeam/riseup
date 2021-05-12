//
//  BreathingView.swift
//  RiseUp
//
//  Created by Channice Tolbert on 4/24/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct BreathingView: View {
    @State var fadeInOut = false
    @State var animate = true
    var s = 4.5
    var body : some View {
        VStack {
            ZStack{
                Circle()
                    .fill(Color .green.opacity(0.25))
                    .frame(width: animate ? 0 : 350)
                Circle()
                    .fill(Color .blue.opacity(0.35))
                    .frame(width: animate ? 0 : 250)
                Circle()
                    .fill(Color .green.opacity(0.45))
                    .frame(width: animate ? 0 : 150)
                Circle()
                    .fill(Color .blue)
                    .frame(width: animate ? 0 : 30)
            }.frame(width: 400, height: 400)
            .onAppear(){self.animate.toggle()}
            .animation(Animation.easeInOut(duration: s).repeatForever(autoreverses: true))
            Text("Inhale")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .onAppear(){
                    withAnimation(Animation.easeInOut(duration: s).repeatForever(autoreverses: true)) {
                        fadeInOut.toggle()
                    }
                } .opacity(fadeInOut ? 0 : 1)
            Text("Exhale")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .onAppear(){
                    withAnimation(Animation.easeInOut(duration: s).repeatForever(autoreverses: true)) {
                        fadeInOut.toggle()
                    }
                } .opacity(fadeInOut ? 1 : 0)
        }
    }
}


struct BreathingView_Previews: PreviewProvider {
    static var previews: some View {
        BreathingView()
    }
}

