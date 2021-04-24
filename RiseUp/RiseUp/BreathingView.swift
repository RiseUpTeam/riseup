//
//  BreathingView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/24/21.
//

import SwiftUI

struct BreathingView: View {
    var body: some View {
        Loading()
        
    }
}

struct Loading : View {
    @State var fadeInOut = false
    
    @State var animate = false
    var body : some View {
        
        
        ZStack{
            
            
            Circle().fill(Color . green.opacity(0.25)).frame(width: 350, height: 350).scaleEffect(self.animate ? 1 : 0)
            
            
            Circle().fill(Color . blue.opacity(0.35)).frame(width: 250, height: 250).scaleEffect(self.animate ? 1 : 0)
            
            
            Circle().fill(Color . green.opacity(0.45)).frame(width: 150, height: 150).scaleEffect(self.animate ? 1 : 0)
            
            
            Circle().fill(Color . blue).frame(width: 30, height: 30).scaleEffect(self.animate ? 1 : 0)
            
            
            
            
        }.onAppear(){
            
            
            self.animate.toggle()
            
            
        }
        .animation(Animation.easeInOut(duration: 3.0).repeatForever(autoreverses: true))
        VStack{
            Text("Inhale")
                .onAppear(){
                    withAnimation(Animation.easeInOut(duration: 3.0).repeatForever(autoreverses: true)) {
                        fadeInOut.toggle()
                    }
                } .opacity(fadeInOut ? 0 : 1)
            Text("Exhale")
            
            
        }
        
        
        
        
        
        
    }
    
    
}


struct BreathingView_Previews: PreviewProvider {
    static var previews: some View {
        BreathingView()
    }
}
