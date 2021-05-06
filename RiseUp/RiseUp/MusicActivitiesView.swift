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
    @State private var showPureShores = false
    @State private var showWavesAndWater = false
    @State private var showNature = false
    var body: some View {
        NavigationView{
            List{
                Text("Choose at least one activity from each tier.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                
                
                Group{
                    Text("Intervention Level: Low")
                        .font(.title)
                    Toggle("Weightless By: Marconi Union", isOn: $showWeightless)
                    if showWeightless {
                    }
                    Toggle("Electra By: Airstream", isOn: $showElectra)
                    if showElectra {
                        
                    }
                }
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title)
                    Toggle("Watermark By: Enya", isOn: $showWatermark)
                    if showWatermark {
                        
                    }
                    Toggle("Pure Shores By: All Saints", isOn: $showPureShores)
                    if showPureShores {
                        
                    }
                }
                Group{
                    Text("Intervention Level: High")
                        .font(.title)
                    Toggle("Waves And Water By: YouTube", isOn: $showWatermark)
                    if showWatermark {
                        
                    }
                    Toggle("Nature Sounds By: You Tube", isOn: $showNature)
                    if showNature {
                        
                    }
                }
            }.navigationBarTitle("Pick Activity Settings")
        }
    }
}







struct MusicActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        MusicActivitiesView()
    }
}

