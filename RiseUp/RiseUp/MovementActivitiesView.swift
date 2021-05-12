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
    @State private var showHand = false
    @State private var showWalk = false
    @State private var showStretch = false
    @State private var showMuscleRelax = false
    @State private var showYoga = false
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
                        Toggle("Grounding Exercise", isOn: $showGrounding)
                        if showGrounding {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=sTIoYW1SES0")!) {
                                Text("Click to try Grounding")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Hand Breathing", isOn: $showHand)
                        if showHand {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=5zhnLG3GW-8")!) {
                                Text("Click to try Hand Breathing")
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
                        Toggle("Take a Walk", isOn: $showWalk)
                        if showWalk {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=HRuqe26F8SU")!) {
                                Text("Click to try Walk")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Simple Stretching", isOn: $showStretch)
                        if showStretch {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=v7AYKMP6rOE")!) {
                                Text("Click to try Stretching")
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
                        
                        Toggle("Muscle Relaxation Exercise", isOn: $showMuscleRelax)
                        if showMuscleRelax {
                            Link(destination:URL(string:"https://insighttimer.com/julieaelbrecht/guided-meditations/progressive-muscle-relaxation-e")!) {
                                Text("Click to try Muscle Relax")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Yoga Sequence", isOn: $showYoga)
                        if showYoga {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=hJbRpHZr_d0")!) {
                                Text("Click to try Yoga Sequence")
                                    .foregroundColor(Color.blue)
                            }
                        }
                    }
                }
            }.navigationBarTitle("Movement Settings", displayMode: .large)
        }
}

struct MovementActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        MovementActivitiesView()
    }
}

