//
//  JournalingActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct JournalingActivitiesView: View {
    @State private var showWhatAmIFeeling = false
    @State private var showWhatIsMyFear = false
    @State private var showWhy = false
    @State private var showPositiveWord = false
    @State private var showPositiveThoughts = false
    @State private var showProblemQuestions = false
    var body: some View {
            List{
                Group{
                    Text("Choose one activity from each tier.")
                        .font(.title3)
                        .multilineTextAlignment(.center)
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
                            Toggle("What Am I Feeling?", isOn: $showWhatAmIFeeling)
                            if showWhatAmIFeeling {
                                NavigationLink(destination: WhatAmIFeelingView()){
                                    Text("Click to try What Am I Feeling")
                                }
                            }
                            Toggle("What Is My Fear?", isOn: $showWhatIsMyFear)
                            if showWhatIsMyFear {
                                NavigationLink(destination: WhatIsMyFearView()){
                                    Text("Click to try What Is My Fear?")
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
                            Toggle("Know Your Why", isOn: $showWhy)
                            if showWhy {
                                NavigationLink(destination: KnowYourWhyView()){
                                    Text("Click to try Know Your Why")
                                }
                            }
                            Toggle("Positive Word Exercise", isOn: $showPositiveWord)
                            if showPositiveWord {
                                NavigationLink(destination: PositiveWordView()){
                                    Text("Click to try Positve Word Exercise")
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
                            Toggle("Positive Thoughts", isOn: $showPositiveThoughts)
                            if showPositiveThoughts {
                                NavigationLink(destination: PositiveThoughtsView()){
                                    Text("Click to try Positive Thoughts")
                                }
                            }
                            Toggle("Problem Questions", isOn: $showProblemQuestions)
                            if showProblemQuestions {
                                NavigationLink(destination: ProblemQuestionsView()){
                                    Text("Click to try Problem Questions")
                                }
                            }
                        }
                    }
                }
            }.navigationBarTitle("Journaling Settings", displayMode: .large)
    }
}
        
 struct JournalingActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        JournalingActivitiesView()
    }
}
