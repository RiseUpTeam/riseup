//
//  BreathingView.swift
//  RiseUp
//
//  Created by Channice Tolbert on 4/24/21.
//

import SwiftUI
import AppDevWithSwiftLibrary

struct BreathingView: View {
    @State var fadeInOut = false
    @State var animate = true
    @State var s = CGFloat(0)
    var body : some View {
        VStack {
            Spacer()
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
                    .frame(width: animate ? 0 : 50)
            }.onAppear(){self.animate.toggle()}
            .animation(Animation.easeInOut(duration: 3.0).repeatForever(autoreverses: true))
            Text("Inhale")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .onAppear(){
                    withAnimation(Animation.easeInOut(duration: 3.0).repeatForever(autoreverses: true)) {
                        fadeInOut.toggle()
                    }
                } .opacity(fadeInOut ? 0 : 1)
            Text("Exhale")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.bottom,50)
                .onAppear(){
                    withAnimation(Animation.easeInOut(duration: 3.0).repeatForever(autoreverses: true)) {
                        fadeInOut.toggle()
                    }
                } .opacity(fadeInOut ? 1 : 0)
            
            Spacer()
        }
    }
}


struct BreathingView_Previews: PreviewProvider {
    static var previews: some View {
        BreathingView()
    }
}
