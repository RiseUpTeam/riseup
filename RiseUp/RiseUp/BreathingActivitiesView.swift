//
//  BreathingActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//


import SwiftUI
import Foundation
struct BreathingActivitiesView: View {
    @State private var showSlowBreathing = false
    @State private var showLongExhale = false
    @State private var showFocusedBreath = false
    @State private var showEqualBreath = false
    @State private var showFourSquare = false
    @State private var showDeepBreathing = false
        var body: some View {
        NavigationView{
            List{
                Text("Choose at least one activity from each tier.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                
                
                Group{
                    Text("Intervention Level: Low")
                        .font(.title)
                    Toggle("Slow Breathing", isOn: $showSlowBreathing)
                    if showSlowBreathing {
                    }
                    Toggle("Long Exhale", isOn: $showLongExhale)
                    if showLongExhale {
                        
                    }
                }
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title)
                    Toggle("Focused Breath", isOn: $showFocusedBreath)
                    if showFocusedBreath {
                        
                    }
                    Toggle("Equal Breath", isOn: $showEqualBreath)
                    if showEqualBreath {
                        
                    }
                }
                Group{
                    Text("Intervention Level: High")
                        .font(.title)
                    Toggle("Four Square Breathing", isOn: $showFourSquare)
                    if showFourSquare {
                        
                    }
                    Toggle("Deep Breathing", isOn: $showDeepBreathing)
                    if showDeepBreathing {
                        
                    }
                }
            }.navigationBarTitle("Pick Activity Settings")
            
        }
    }
}
struct BreathingActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        BreathingActivitiesView()
    }
}
