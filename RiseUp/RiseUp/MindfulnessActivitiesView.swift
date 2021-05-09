//
//  MindfulnessActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct MindfulnessActivitiesView: View {
    @State var person = Person()
    @State private var showMindfulRelease = false
    @State private var showLetGoShort = false
    @State private var showReleasing = false
    @State private var showAnxietyAndPeace = false
    @State private var showLetGoLong = false
    @State private var showBreathingInLight = false
        var body: some View {
        NavigationView{
            List{
                Text("Mindfulness Activities")
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
                    Toggle("Two Minute Mindful Release", isOn: $showMindfulRelease)
                    Toggle("Let Go of Worry and Anxiety", isOn: $showLetGoShort)
                }
                Spacer()
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title3)
                    Toggle("Releasing Anxiety", isOn: $showReleasing)
                    Toggle("Decrease Anxiety & Increase Peace", isOn: $showAnxietyAndPeace)
                }
                Spacer()
                Group{
                    Text("Intervention Level: High")
                        .font(.title3)
                    Toggle("Let Go of Fear, Worries, and Anxiety", isOn: $showLetGoLong)
                    Toggle("Breathing in the Light", isOn: $showBreathingInLight)
                }
            }.navigationBarHidden(true)
            .onAppear(perform: {
                person = UserDefaults.standard.getStructValue(forKey: "user")!
                if getMindfulnessLow()=="TwoMinute" {
                    showMindfulRelease = true
                    showLetGoShort = false
                } else {
                    showMindfulRelease = false
                    showLetGoShort = true
                }
                if getMindfulnessModerate()=="ReleasingAnxiety" {
                    showReleasing = true
                    showAnxietyAndPeace = false
                } else {
                    showReleasing = false
                    showAnxietyAndPeace = true
                }
                if getMindfulnessHigh()=="LetGo" {
                    showLetGoLong = true
                    showBreathingInLight = false
                } else {
                    showLetGoLong = false
                    showBreathingInLight = true
                }
            })
        }
    }
    func writeToUserDefaults() {
        UserDefaults.standard.setStructValue(value: person, forKey: "user")
        UserDefaults.standard.synchronize()
    }
    func setMindfulnessLow(mindfulnessLow: String) {
        person.mindfulnessLow = mindfulnessLow
        writeToUserDefaults()
    }
    func setMindfulnessModerate(mindfulnessModerate: String) {
        person.mindfulnessModerate = mindfulnessModerate
        writeToUserDefaults()
    }
    func setMindfulnessHigh(mindfulnessHigh: String) {
        person.mindfulnessHigh = mindfulnessHigh
        writeToUserDefaults()
    }
    func getMindfulnessLow() -> String {
        return person.mindfulnessLow
    }
    func getMindfulnessModerate() -> String {
        return person.mindfulnessModerate
    }
    func getMindfulnessHigh() -> String {
        return person.mindfulnessHigh
    }
}
struct MindfulnessActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        MindfulnessActivitiesView()
    }
}

