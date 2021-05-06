//
//  MindfulnessActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import Foundation
import SwiftUI

struct MindfulnessActivitiesView: View {
    @State private var showMindfulRelease = false
    @State private var showLetGoShort = false
    @State private var showReleasing = false
    @State private var showAnxietyAndPeace = false
    @State private var showLetGoLong = false
    @State private var showBreathingInLight = false
        var body: some View {
        NavigationView{
            List{
                Text("Choose at least one activity from each tier.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                
                
                Group{
                    Text("Intervention Level: Low")
                        .font(.title)
                    Toggle("Two Minute Mindful Release", isOn: $showMindfulRelease)
                    if showMindfulRelease {
                    }
                    Toggle("Let Go of Worry and Anxiety", isOn: $showLetGoShort)
                    if showLetGoShort {
                        
                    }
                }
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title)
                    Toggle("Releasing Anxiety", isOn: $showReleasing)
                    if showReleasing {
                        
                    }
                    Toggle("Decrease Anxiety & Increase Peace", isOn: $showAnxietyAndPeace)
                    if showAnxietyAndPeace {
                        
                    }
                }
                Group{
                    Text("Intervention Level: High")
                        .font(.title)
                    Toggle("Let Go of Fear, Worries, and Anxiety", isOn: $showLetGoLong)
                    if showLetGoLong {
                        
                    }
                    Toggle("Breathing in the Light", isOn: $showBreathingInLight)
                    if showBreathingInLight {
                        
                    }
                }
            }.navigationBarTitle("Pick Activity Settings")
        }
    }
}
struct MindfulnessActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        MindfulnessActivitiesView()
    }
}

