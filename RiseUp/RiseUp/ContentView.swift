//
//  ContentView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/18/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct Person : Hashable, Codable {
    var id = UUID()
    var userName = "safranklinson43"
    var password = "P&s5w0rd"
    var firstName = "Sebastian"
    var lastName = "Franklinson"
    var vibrate = true
    var ring = true
    var light = true
    var hasCheckIns = true
    var phoneNumber = "312-555-0000"
    var hasTherapist = true
    var therapistFirstName = "Sally"
    var therapistLastName = "Thomason"
    var therapistPhoneNumber = "312-555-1111"
    var alertFrequency = 5
    var alertTime1 = "8am"
    var alertTime2 = "12pm"
    var alertTime3 = "4pm"
    var alertTime4 = "8pm"
    var alertTime5 = "11pm"
    var music = true
    var musicLow = "Weightless"
    var musicModerate = "Watermark"
    var musicHigh = "Nature"
    var breathing = true
    var breathingLow = "SlowBreathing"
    var breathingModerate = "FocusedBreath"
    var breathingHigh = "FourSquare"
    var mindfulness = true
    var mindfulnessLow = "TwoMinute"
    var mindfulnessModerate = "ReleasingAnxiety"
    var mindfulnessHigh = "LetGo"
    var movement = true
    var movementLow = "Grounding"
    var movementModerate = "Walk"
    var movementHigh = "MuscleRelaxation"
    var selfTalk = true
    var selfTalkLow = "Mantra"
    var selfTalkModerate = "De-escalate"
    var selfTalkHigh = "Connection"
    var sensory = true
    var sensoryLow = "Sketch"
    var sensoryModerate = "Temperature"
    var sensoryHigh = "Focus"
    var journaling = true
    var journalingLow = "Feeling"
    var journalingModerate = "Why"
    var journalingHigh = "Thoughts"
}

struct ContentView: View {
    @State var selectedView : Int
    var body: some View {
        TabView(selection: $selectedView) {
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }.tag(0)
            ActivitiesView().tabItem {
                Image(systemName: "text.book.closed.fill")
                Text("Activities")
            }.tag(1)
            ProfileView().tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }.tag(2)
            HistoryView().tabItem {
                Image(systemName: "chart.bar.xaxis")
                Text("History")
            }.tag(3)
        }.accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedView: 0)
    }
}
