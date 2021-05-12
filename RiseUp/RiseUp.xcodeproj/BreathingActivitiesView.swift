//
//  BreathingActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//


import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct BreathingActivitiesView: View {
    @State private var showSlowBreathing = false
    @State private var showLongExhale = false
    @State private var showFocusedBreath = false
    @State private var showEqualBreath = false
    @State private var showTriangle = false
    @State private var showDeepBreathing = false
    @State private var showCustomLow = false
    @State private var showCustomModerate = false
    @State private var showCustomHigh = false
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
                        Toggle("Slow Breathing", isOn: $showSlowBreathing)
                        if showSlowBreathing {
                            NavigationLink(destination: BreathingView()){
                                Text("Click to try Slow Breathing")
                            }
                        }
                        Toggle("Long Exhale", isOn: $showLongExhale)
                        if showLongExhale {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=aNXKjGFUlMs")!) {
                                Text("Click to try Long Exhale")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Custom Intervention", isOn: $showCustomLow)
                        if showCustomLow {
                            NavigationLink(destination: CustomInterventionBreathingLowView()){
                                Text("Add Custom Intervention")
                                
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
                        Toggle("Focused Breath", isOn: $showFocusedBreath)
                        if showFocusedBreath {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=VD8cA33vPJI")!) {
                                Text("Click to try Focsed Breath")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Equal Breath", isOn: $showEqualBreath)
                        if showEqualBreath {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=EL_fvAepwv8")!) {
                                Text("Click to try Equal Breath")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Custom Intervention", isOn: $showCustomModerate)
                        if showCustomModerate {
                            NavigationLink(destination: CustomInterventionBreathingModerateView()){
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
                        Toggle("Triangle Breathing", isOn: $showTriangle)
                        if showTriangle {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=O1fHv6pOK2k&list=PLzK1U3HzIGbjWrVQ8Uazo6CuD2s3azjJT&index=2")!) {
                                Text("Click to try Triangle Breathing")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Deep Breathing", isOn: $showDeepBreathing)
                        if showDeepBreathing {
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=QcCdiGBd4ok")!) {
                                Text("Click to try Deep Breathing")
                                    .foregroundColor(Color.blue)
                            }
                        }
                        Toggle("Custom Intervention", isOn: $showCustomHigh)
                        if showCustomHigh {
                            NavigationLink(destination: CustomInterventionBreathingHighView()){
                                Text("Add Custom Intervention")
                            }
                        }
                    }
                }
            }.navigationBarTitle("Pick Activity Settings")
        }
    }
}




struct BreathingActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        BreathingActivitiesView()
    }
}
