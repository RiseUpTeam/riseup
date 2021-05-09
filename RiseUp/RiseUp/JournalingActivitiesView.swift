//
//  JournalingActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct JournalingActivitiesView: View {
    @State var person = Person()
    @State private var showWhatAmIFeeling = false
    @State private var showWhatIsMyFear = false
    @State private var showWhy = false
    @State private var showPositiveWord = false
    @State private var showPositiveThoughts = false
    @State private var showProblemQuestions = false
        var body: some View {
        NavigationView{
            List{
                Text("Journaling Activities")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding([.top, .bottom])
                Text("Choose at least one activity per tier.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding([.top, .bottom])
                Group {
                    Text("Intervention Level: Low")
                            .font(.title3)
                    Toggle("What Am I Feeling?", isOn: $showWhatAmIFeeling)
                    Toggle("What Is My Fear?", isOn: $showWhatIsMyFear)
                }
                Spacer()
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title3)
                    Toggle("Know Your Why", isOn: $showWhy)
                    Toggle("Positive Word Exercise", isOn: $showPositiveWord)
                }
                Spacer()
                Group{
                    Text("Intervention Level: High")
                        .font(.title3)
                    Toggle("Positive Thoughts", isOn: $showPositiveThoughts)
                    Toggle("Problem Questions", isOn: $showProblemQuestions)
                }
            }.navigationBarHidden(true)
            .onAppear(perform: {
                person = UserDefaults.standard.getStructValue(forKey: "user")!
                if getJournalingLow()=="Feeling" {
                    showWhatAmIFeeling = true
                    showWhatIsMyFear = false
                } else {
                    showWhatAmIFeeling = false
                    showWhatIsMyFear = true
                }
                if getJournalingModerate()=="Why" {
                    showWhy = true
                    showPositiveWord = false
                } else {
                    showWhy = false
                    showPositiveWord = true
                }
                if getJournalingHigh()=="Thoughts" {
                    showPositiveThoughts = true
                    showProblemQuestions = false
                } else {
                    showPositiveThoughts = false
                    showProblemQuestions = true
                }
            })
        }
    }
    func writeToUserDefaults() {
        UserDefaults.standard.setStructValue(value: person, forKey: "user")
        UserDefaults.standard.synchronize()
    }
    func setJournalingLow(journalingLow: String) {
        person.journalingLow = journalingLow
        writeToUserDefaults()
    }
    func setJournalingModerate(journalingModerate: String) {
        person.journalingModerate = journalingModerate
        writeToUserDefaults()
    }
    func setJournalingHigh(journalingHigh: String) {
        person.journalingHigh = journalingHigh
        writeToUserDefaults()
    }
    func getJournalingLow() -> String {
        return person.journalingLow
    }
    func getJournalingModerate() -> String {
        return person.journalingModerate
    }
    func getJournalingHigh() -> String {
        return person.journalingHigh
    }
}
struct JournalingActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        JournalingActivitiesView()
    }
}
