//
//  SensoryActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct SensoryActivitiesView: View {
    @State var person = Person()
    @State private var showMusicSketch = false
    @State private var showColoring = false
    @State private var showWeight = false
    @State private var showTemperatureChange = false
    @State private var showHoldYourSenses = false
    @State private var showFiveThings = false
    var body: some View {
        NavigationView{
            List{
                Text("Sensory Activities")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding([.top, .bottom])
                Text("Choose at least one activity per tier.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding([.top, .bottom])
                Group{
                    Text("Intervention Level: Low")
                        .font(.title3)
                    Toggle("Music Sketch", isOn: $showMusicSketch)
                    Toggle("Coloring Exercise", isOn: $showColoring)
                }
                Spacer()
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title3)
                    Toggle("Temperature Change", isOn: $showTemperatureChange)
                    Toggle("Add Weight to your Body", isOn: $showWeight)
                }
                Spacer()
                Group{
                    Text("Intervention Level: High")
                        .font(.title3)
                    Toggle("Hold and Focus on your Senses", isOn: $showHoldYourSenses)
                    Toggle("Five Things Exercise", isOn: $showFiveThings)
                }
            }.navigationBarHidden(true)
            .onAppear(perform: {
                person = UserDefaults.standard.getStructValue(forKey: "user")!
                if getSensoryLow()=="Sketch" {
                    showMusicSketch = true
                    showColoring = false
                } else {
                    showMusicSketch = false
                    showColoring = true
                }
                if getSensoryModerate()=="Temperature" {
                    showTemperatureChange = true
                    showWeight = false
                } else {
                    showTemperatureChange = false
                    showWeight = true
                }
                if getSensoryHigh()=="Focus" {
                    showHoldYourSenses = true
                    showFiveThings = false
                } else {
                    showHoldYourSenses = false
                    showFiveThings = true
                }
            })
        }
    }
    func writeToUserDefaults() {
        UserDefaults.standard.setStructValue(value: person, forKey: "user")
        UserDefaults.standard.synchronize()
    }
    func setSensoryLow(sensoryLow: String) {
        person.sensoryLow = sensoryLow
        writeToUserDefaults()
    }
    func setSensoryModerate(sensoryModerate: String) {
        person.sensoryModerate = sensoryModerate
        writeToUserDefaults()
    }
    func setSensoryHigh(sensoryHigh: String) {
        person.sensoryHigh = sensoryHigh
        writeToUserDefaults()
    }
    func getSensoryLow() -> String {
        return person.sensoryLow
    }
    func getSensoryModerate() -> String {
        return person.sensoryModerate
    }
    func getSensoryHigh() -> String {
        return person.sensoryHigh
    }
}

struct SensoryActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        SensoryActivitiesView()
    }
}
