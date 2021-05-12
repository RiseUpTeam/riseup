//
//  MusicActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import Foundation
import SwiftUI

struct MusicActivitiesView: View {
    @State private var showWeightless = false
    @State private var showElectra = false
    @State private var showWatermark = false
    @State private var showBeyond = false
    @State private var showWavesAndWater = false
    @State private var showNature = false
    @State private var showCustomLow = false
    @State private var showCustomModerate = false
    @State private var showCustomHigh = false
    
    var body: some View {
        NavigationView{
            List{
                Group{
                    Text("Choose one activity from each tier.")
                        .font(.title3)
                        .frame(alignment: .center)
                }
                Section(header: HStack {
                    Text("Intervention Level: Low")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                }
                .background(Color.green)
                .listRowInsets(EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: 0,
                                trailing: 0))
                ){
                    Group{
                        Toggle("Weightless By Marconi Union", isOn: $showWeightless)
                        if showWeightless {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=VD8cA33vPJI")!) {
                                Text("Click to try Weightless")
                                    .foregroundColor(Color.blue)
                            }.multilineTextAlignment(.center)
                        }
                        Toggle("Electra By: Airstream", isOn: $showElectra)
                        if showElectra {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=FTvZ8a2gHFc")!) {
                                Text("Click to try Electra")
                                    .foregroundColor(Color.blue)
                            }.multilineTextAlignment(.center)
                        }
                        Toggle("Custom Intervention", isOn: $showCustomLow)
                        if showCustomLow {
                            NavigationLink(destination: CustomInterventionMusicLowView()){
                                Text("Add Custom Intervention")
                            }
                        }
                    }
                }
                
                Section(header: HStack {
                    Text("Intervention Level: Medium")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                }
                .background(Color.yellow)
                .listRowInsets(EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: 0,
                                trailing: 0))
                ){
                    Group{
                        Toggle("Watermark By: Enya", isOn: $showWatermark)
                        if showWatermark {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=bPCdsa7hS7M")!) {
                                Text("Click to try Waves and Water")
                                    .foregroundColor(Color.blue)
                            }.multilineTextAlignment(.center)
                        }
                        Toggle("Beyond the Atmosphere By: Naturally Recurring", isOn: $showBeyond)
                        if showBeyond {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=JQ4nJls4Hic")!) {
                                Text("Click to try Beyond the Atmosphere")
                                    .foregroundColor(Color.blue)
                            }.multilineTextAlignment(.center)
                        }
                        Toggle("Custom Intervention", isOn: $showCustomModerate)
                        if showCustomModerate {
                            NavigationLink(destination: CustomInterventionMusicLowView()){
                                Text("Add Custom Intervention")
                            }
                        }
                    }
                }
                
                Section(header: HStack {
                    Text("Intervention Level: High")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                }
                .background(Color.red)
                .listRowInsets(EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: 0,
                                trailing: 0))
                ){
                    Group{
                        Toggle("Waves and Water By: Peaceful Scenes", isOn: $showWavesAndWater)
                        if showWavesAndWater {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=E7qRkUYu580")!) {
                                Text("Click to try Waves and Water")
                                    .foregroundColor(Color.blue)
                            }.multilineTextAlignment(.center)
                        }
                        Toggle("Nature Sounds By: Ian Ryan", isOn: $showNature)
                        if showNature {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=JqLSiTK9Y9k")!) {
                                Text("Click to try Nature Sounds")
                                    .foregroundColor(Color.blue)
                            }.multilineTextAlignment(.center)
                        }
                        Toggle("Custom Intervention", isOn: $showCustomHigh)
                        if showCustomHigh {
                            NavigationLink(destination: CustomInterventionMusicLowView()){
                                Text("Add Custom Intervention")
                            }
                        }
                    }
                }
            }
        }.navigationBarTitle("Pick Activity Settings")
    }
}




struct MusicActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        MusicActivitiesView()
    }
}
