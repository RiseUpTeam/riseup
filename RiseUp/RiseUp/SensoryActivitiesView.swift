//
//  SensoryActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import Foundation
import SwiftUI

struct SensoryActivitiesView: View {
    @State private var showMusicSketch = false
    @State private var showColoring = false
    @State private var showWeight = false
    @State private var showTemperatureChange = false
    @State private var showHoldYourSenses = false
    @State private var showFiveThings = false
        var body: some View {
        NavigationView{
            List{
                Text("Choose at least one activity from each tier.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                
                
                Group{
                    Text("Intervention Level: Low")
                        .font(.title)
                    Toggle("Music Sketch", isOn: $showMusicSketch)
                    if showMusicSketch {
                    }
                    Toggle("Coloring Exercise", isOn: $showColoring)
                    if showColoring {
                        
                    }
                }
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title)
                    Toggle("Temperature Change", isOn: $showTemperatureChange)
                    if showTemperatureChange {
                        
                    }
                    Toggle("Add Weight to your Body", isOn: $showWeight)
                    if showWeight {
                        
                    }
                }
                Group{
                    Text("Intervention Level: High")
                        .font(.title)
                    Toggle("Hold and Focus on your Senses", isOn: $showHoldYourSenses)
                    if showHoldYourSenses {
                        
                    }
                    Toggle("Five Things Exercise", isOn: $showFiveThings)
                    if showFiveThings {
                        
                    }
                }
            }.navigationBarTitle("Pick Activity Settings")
        }
    }
}
struct SensoryActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        SensoryActivitiesView()
    }
}
