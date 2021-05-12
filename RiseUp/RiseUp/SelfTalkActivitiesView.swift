//
//  SelfTalkActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct SelfTalkActivitiesView: View {
    @State private var showMantra = false
    @State private var showValidation = false
    @State private var showBreakDown = false
    @State private var showReframe = false
    @State private var showThoughtFeelingConnection = false
    @State private var showUnravelYourThoughts = false
    @State private var showCustomLow = false
    @State private var showCustomModerate = false
    @State private var showCustomHigh = false
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
                        Toggle("Mantra", isOn: $showMantra)
                        if showMantra {
                            Link(destination:URL(string:"https://insighttimer.com/michellekuei/guided-meditations/mantra-meditation-self-affirmation")!) {
                                Text("Click to try Mantra")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Validation", isOn: $showValidation)
                        if showValidation {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=cFeCUfw657g")!) {
                                Text("Click to try Validation")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Custom Intervention", isOn: $showCustomLow)
                        if showCustomLow {
                            NavigationLink(destination: CustomInterventionSelfTalkLowView()){
                                Text("Add Custom Intervention")
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
                        Toggle("Break Down Your Thoughts", isOn: $showBreakDown)
                        if showBreakDown {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=jU9t5PqeUXw")!) {
                                Text("Click to try Break Down Your Thoughts (start at 0:28)")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Reframe your Thoughts", isOn: $showReframe)
                        if showReframe {
                            Link(destination:URL(string:"https://insighttimer.com/alexiszahner/guided-meditations/overcome-unhelpful-thinking-patterns")!) {
                                Text("Click to try Reframe")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Custom Intervention", isOn: $showCustomModerate)
                        if showCustomModerate {
                            NavigationLink(destination: CustomInterventionSelfTalkModerateView()){
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
                .background(Color.blue)
                .listRowInsets(EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: 0,
                                trailing: 0))
                ){
                    
                    Group{
                        Toggle("Build a Thought-Feeling Connection", isOn: $showThoughtFeelingConnection)
                        if showThoughtFeelingConnection {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=K4tAHKn6Sz4")!) {
                                Text("Click to try Thought-Feeling Connection")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Unravel Your Anxious Thoughts", isOn: $showUnravelYourThoughts)
                        if showUnravelYourThoughts {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=FXS6LfwMesM")!) {
                                Text("Click to try Unravel Your Anxious Thoughrts")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Custom Intervention", isOn: $showCustomHigh)
                        if showCustomHigh {
                            NavigationLink(destination: CustomInterventionSelfTalkHighView()){
                                Text("Add Custom Intervention")
                            }
                        }
                    }
                }
            }.navigationBarTitle("Self Talk Settings", displayMode: .large)
    }
}


struct SelfTalkActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        SelfTalkActivitiesView()
    }
}

