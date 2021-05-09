//
//  SelfTalkActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct SelfTalkActivitiesView: View {
    @State var person = Person()
    @State private var showMantra = false
    @State private var showValidation = false
    @State private var showDeEscalate = false
    @State private var showReframe = false
    @State private var showThoughtFeelingConnection = false
    @State private var showUnravelYourThoughts = false
        var body: some View {
        NavigationView{
            List{
                Text("Self Talk Activities")
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
                    Toggle("Mantra", isOn: $showMantra)
                    Toggle("Validation", isOn: $showValidation)
                }
                Spacer()
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title3)
                    Toggle("De-Escalate Your Thoughts", isOn: $showDeEscalate)
                    Toggle("Reframe your Thoughts", isOn: $showReframe)
                }
                Spacer()
                Group{
                    Text("Intervention Level: High")
                        .font(.title)
                    Toggle("Build a Thought-Feeling Connection", isOn: $showThoughtFeelingConnection)
                    Toggle("Unravel Your Anxious Thoughts", isOn: $showUnravelYourThoughts)
                }
            }.navigationBarHidden(true)
            .onAppear(perform: {
                person = UserDefaults.standard.getStructValue(forKey: "user")!
                if getSelfTalkLow()=="Mantra" {
                    showMantra = true
                    showValidation = false
                } else {
                    showMantra = false
                    showValidation = true
                }
                if getSelfTalkModerate()=="De-escalate" {
                    showDeEscalate = true
                    showReframe = false
                } else {
                    showDeEscalate = false
                    showReframe = true
                }
                if getSelfTalkHigh()=="Connection" {
                    showThoughtFeelingConnection = true
                    showUnravelYourThoughts = false
                } else {
                    showThoughtFeelingConnection = false
                    showUnravelYourThoughts = true
                }
            })
        }
    }
    func writeToUserDefaults() {
        UserDefaults.standard.setStructValue(value: person, forKey: "user")
        UserDefaults.standard.synchronize()
    }
    func setSelfTalkLow(selfTalkLow: String) {
        person.selfTalkLow = selfTalkLow
        writeToUserDefaults()
    }
    func setSelfTalkModerate(selfTalkModerate: String) {
        person.selfTalkModerate = selfTalkModerate
        writeToUserDefaults()
    }
    func setSelfTalkHigh(selfTalkHigh: String) {
        person.selfTalkHigh = selfTalkHigh
        writeToUserDefaults()
    }
    func getSelfTalkLow() -> String {
        return person.selfTalkLow
    }
    func getSelfTalkModerate() -> String {
        return person.selfTalkModerate
    }
    func getSelfTalkHigh() -> String {
        return person.selfTalkHigh
    }
}
struct SelfTalkActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        SelfTalkActivitiesView()
    }
}

