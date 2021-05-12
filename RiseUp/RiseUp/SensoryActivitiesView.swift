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
    @State private var showMusicSketch = false
    @State private var showColoring = true
    @State private var showPressurePoints = false
    @State private var showTemperatureChange = true
    @State private var showHoldYourSenses = true
    @State private var showFiveThings = false
    var body: some View {
            List{
                Group{
                    Text("Choose one activity from each tier.")
                        .font(.title3)
                        .multilineTextAlignment(.center)
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
                        Toggle("Music Sketch", isOn: $showMusicSketch)
                        if showMusicSketch {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=CgnXYxlglu4")!) {
                                Text("Click to try Music Scribble")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Coloring Exercise", isOn: $showColoring)
                        if showColoring {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=TcGPc80f2VM")!) {
                                Text("Click to try Coloring Exercise")
                                    .foregroundColor(Color.blue)
                            }
                        }
                    }
                }
                Section(header: HStack {
                    Text("Intervention Level: Moderate")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                }
                .background(Color("Gold"))
                .listRowInsets(EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: 0,
                                trailing: 0))
                ){
                    Group{
                        Toggle("Temperature Change", isOn: $showTemperatureChange)
                        if showTemperatureChange {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=3mDJx17CR-s")!) {
                                Text("Click to try Temperature (0:00-1:50)")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Pressure Points", isOn: $showPressurePoints)
                        if showPressurePoints {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=2Mu5RvPoOuo")!) {
                                Text("Click to try Pressure Points")
                                    .foregroundColor(Color.blue)
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
                .background(Color.blue)
                .listRowInsets(EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: 0,
                                trailing: 0))
                ){
                    Group{
                        
                        Toggle("Hold and Focus on your Senses", isOn: $showHoldYourSenses)
                        if showHoldYourSenses {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=VFBxHJRQXWQ")!) {
                                Text("Click to try Hold and Focus your Senses")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Five Things Exercise", isOn: $showFiveThings)
                        if showFiveThings {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=30VMIEmA114")!) {
                                Text("Click to try 5 Things")
                                    .foregroundColor(Color.blue)
                            }
                        }
                    }
                }
        }.navigationBarTitle("Sensory Settings")
    }
}

struct SensoryActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        SensoryActivitiesView()
    }
}
