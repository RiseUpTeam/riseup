//
//  MovementActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct MovementActivitiesView: View {
    @State private var showGrounding = false
    @State private var showHands = false
    @State private var showWalk = false
    @State private var showStretch = false
    @State private var showMuscleRelax = false
    @State private var showYoga = false
        var body: some View {
        NavigationView{
            List{
                Text("Choose at least one activity from each tier.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                
                
                Group{
                    Text("Intervention Level: Low")
                        .font(.title)
                    Toggle("Grounding Exercise", isOn: $showGrounding)
                    if showGrounding {
                    }
                    Toggle("Hand Exercise", isOn: $showHands)
                    if showHands {
                        
                    }
                }
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title)
                    Toggle("Take a Walk", isOn: $showWalk)
                    if showWalk {
                        
                    }
                    Toggle("Simple Stretching", isOn: $showStretch)
                    if showStretch {
                        
                    }
                }
                Group{
                    Text("Intervention Level: High")
                        .font(.title)
                    Toggle("Muscle Relaxation Exercise", isOn: $showMuscleRelax)
                    if showMuscleRelax {
                        
                    }
                    Toggle("Yoga Sequence", isOn: $showYoga)
                    if showYoga {
                        
                    }
                }
            }.navigationBarTitle("Pick Activity Settings")
        }
    }
}
struct MovementActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        MovementActivitiesView()
    }
}

