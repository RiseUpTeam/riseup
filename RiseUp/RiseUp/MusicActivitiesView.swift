//
//  MusicActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct MusicActivitiesView: View {
    @State var person = Person()
    @State private var showWeightless = false
    @State private var showElectra = false
    @State private var showWatermark = false
    @State private var showPureShores = false
    @State private var showWavesAndWater = false
    @State private var showNature = false
    var body: some View {
        NavigationView{
            List{
                Text("Music Activities")
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
                    Toggle("Weightless By: Marconi Union", isOn: $showWeightless)
                    Toggle("Electra By: Airstream", isOn: $showElectra)
                }
                Spacer()
                Group {
                    Text("Intervention Level: Moderate")
                        .font(.title3)
                    Toggle("Watermark By: Enya", isOn: $showWatermark)
                    Toggle("Pure Shores By: All Saints", isOn: $showPureShores)
                }
                Spacer()
                Group {
                    Text("Intervention Level: High")
                        .font(.title3)
                    Toggle("Waves And Water By: YouTube", isOn: $showWavesAndWater)
                    Toggle("Nature Sounds By: You Tube", isOn: $showNature)
                }
            }
            .navigationBarHidden(true)
            .onAppear(perform: {
                person = UserDefaults.standard.getStructValue(forKey: "user")!
                if getMusicLow()=="Weightless" {
                    showWeightless = true
                    showElectra = false
                } else {
                    showWeightless = false
                    showElectra = true
                }
                if getMusicModerate()=="Watermark" {
                    showWatermark = true
                    showPureShores = false
                } else {
                    showWatermark = false
                    showPureShores = true
                }
                if getMusicHigh()=="Waves" {
                    showWavesAndWater = true
                    showNature = false
                } else {
                    showWavesAndWater = false
                    showNature = true
                }
            })
        }
    }
    func writeToUserDefaults() {
        UserDefaults.standard.setStructValue(value: person, forKey: "user")
        UserDefaults.standard.synchronize()
    }
    func setMusicLow(musicLow: String) {
        person.musicLow = musicLow
        writeToUserDefaults()
    }
    func setMusicModerate(musicModerate: String) {
        person.musicModerate = musicModerate
        writeToUserDefaults()
    }
    func setMusicHigh(musicHigh: String) {
        person.musicHigh = musicHigh
        writeToUserDefaults()
    }
    func getMusicLow() -> String {
        return person.musicLow
    }
    func getMusicModerate() -> String {
        return person.musicModerate
    }
    func getMusicHigh() -> String {
        return person.musicHigh
    }
}







struct MusicActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        MusicActivitiesView()
    }
}

