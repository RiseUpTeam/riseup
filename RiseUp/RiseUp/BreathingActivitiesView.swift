//
//  BreathingActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//


import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct BreathingActivitiesView: View {
    @State var person = Person()
    @State private var showSlowBreathing = false
    @State private var showLongExhale = false
    @State private var showFocusedBreath = false
    @State private var showEqualBreath = false
    @State private var showFourSquare = false
    @State private var showDeepBreathing = false
        var body: some View {
        NavigationView{
            List{
                Text("Breathing Activities")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding([.top, .bottom])
                Text("Choose at least one activity from each tier.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding([.top, .bottom])
                Group{
                    Text("Intervention Level: Low")
                        .font(.title3)
                    Toggle("Slow Breathing", isOn: $showSlowBreathing)
                    Toggle("Long Exhale", isOn: $showLongExhale)
                }
                Spacer()
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title3)
                    Toggle("Focused Breath", isOn: $showFocusedBreath)
                    Toggle("Equal Breath", isOn: $showEqualBreath)
                }
                Spacer()
                Group{
                    Text("Intervention Level: High")
                        .font(.title3)
                    Toggle("Four Square Breathing", isOn: $showFourSquare)
                    Toggle("Deep Breathing", isOn: $showDeepBreathing)
                }
            }.navigationBarHidden(true)
            .onAppear(perform: {
                person = UserDefaults.standard.getStructValue(forKey: "user")!
                if getBreathingLow()=="SlowBreathing" {
                    showSlowBreathing = true
                    showLongExhale = false
                } else {
                    showSlowBreathing = false
                    showLongExhale = true
                }
                if getBreathingModerate()=="FocusedBreath" {
                    showFocusedBreath = true
                    showEqualBreath = false
                } else {
                    showFocusedBreath = false
                    showEqualBreath = true
                }
                if getBreathingHigh()=="FourSquare" {
                    showFourSquare = true
                    showDeepBreathing = false
                } else {
                    showFourSquare = false
                    showDeepBreathing = true
                }
            })
        }
    }
    func writeToUserDefaults() {
        UserDefaults.standard.setStructValue(value: person, forKey: "user")
        UserDefaults.standard.synchronize()
    }
    func setBreathingLow(breathingLow: String) {
        person.breathingLow = breathingLow
        writeToUserDefaults()
    }
    func setBreathingModerate(breathingModerate: String) {
        person.breathingModerate = breathingModerate
        writeToUserDefaults()
    }
    func setBreathingHigh(breathingHigh: String) {
        person.breathingHigh = breathingHigh
        writeToUserDefaults()
    }
    func getBreathingLow() -> String {
        return person.breathingLow
    }
    func getBreathingModerate() -> String {
        return person.breathingModerate
    }
    func getBreathingHigh() -> String {
        return person.breathingHigh
    }
}

struct BreathingActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        BreathingActivitiesView()
    }
}
