//
//  MindfulnessActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

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
                        Text("Intervention Level: Low")
                            .font(.title)
                        Toggle("Two Minute Mindful Release", isOn: $showMindfulRelease)
                        if showMindfulRelease {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=QcCdiGBd4ok")!) {
                                Text("Click to try Mindful Release")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Let Go of Worry and Anxiety", isOn: $showLetGoShort)
                        if showLetGoShort {
                            Link(destination:URL(string:"https://insighttimer.com/ellenhendriksen/guided-meditations/let-go-of-worry-and-anxiety")!) {
                                Text("Click to try Let Go of Worry and Anxiety")
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
                .background(Color.yellow)
                .listRowInsets(EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: 0,
                                trailing: 0))
                ){
                    
                    Group{
                        Toggle("Releasing Anxiety", isOn: $showReleasing)
                        if showReleasing {
                            Link(destination:URL(string:"https://insighttimer.com/katejames/guided-meditations/releasing-anxiety")!) {
                                Text("Click to try Releasing Anxiety")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Decrease Anxiety & Increase Peace", isOn: $showAnxietyAndPeace)
                        if showAnxietyAndPeace {
                            Link(destination:URL(string:"https://insighttimer.com/andreawachter/guided-meditations/decrease-anxiety-and-increase-peace")!) {
                                Text("Click to try Decrease Anxiety & Increase Peace")
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
                .background(Color.red)
                .listRowInsets(EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: 0,
                                trailing: 0))
                ){
                    
                    Group{
                        Toggle("Let Go of Fear, Worries, and Anxiety", isOn: $showLetGoLong)
                        if showLetGoLong {
                            Link(destination:URL(string:"https://insighttimer.com/kennethsoares/guided-meditations/let-go-of-fear-worries-and-anxiety")!) {
                                Text("Click to try Let Go")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Breathing in the Light", isOn: $showBreathingInLight)
                        if showBreathingInLight {
                            Link(destination:URL(string:"https://insighttimer.com/wellnessmoira/guided-meditations/breathing-in-the-light")!) {
                                Text("Click to try Breathing in the Light")
                                    .foregroundColor(Color.blue)
                            }
                        }
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

