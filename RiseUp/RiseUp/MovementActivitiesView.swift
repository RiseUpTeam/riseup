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
    @State var person = Person()
    @State private var showGrounding = false
    @State private var showHands = false
    @State private var showWalk = false
    @State private var showStretch = false
    @State private var showMuscleRelax = false
    @State private var showYoga = false
        var body: some View {
        NavigationView{
            List{
                Text("Movement Activities")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding([.top, .bottom])
                Text("Choose at least one activity per tier.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding([.top, .bottom])
                Group{
                    Text("Intervention Level: Low")
                        .font(.title3)
                    Toggle("Grounding Exercise", isOn: $showGrounding)
                    Toggle("Hand Exercise", isOn: $showHands)
                }
                Spacer()
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title3)
                    Toggle("Take a Walk", isOn: $showWalk)
                    Toggle("Simple Stretching", isOn: $showStretch)
                }
                Spacer()
                Group{
                    Text("Intervention Level: High")
                        .font(.title3)
                    Toggle("Muscle Relaxation Exercise", isOn: $showMuscleRelax)
                    Toggle("Yoga Sequence", isOn: $showYoga)
                }
            }.navigationBarHidden(true)
            .onAppear(perform: {
                person = UserDefaults.standard.getStructValue(forKey: "user")!
                if getMovementLow()=="Grounding" {
                    showGrounding = true
                    showHands = false
                } else {
                    showGrounding = false
                    showHands = true
                }
                if getMovementModerate()=="Walk" {
                    showWalk = true
                    showStretch = false
                } else {
                    showWalk = false
                    showStretch = true
                }
                if getMovementHigh()=="MuscleRelaxation" {
                    showMuscleRelax = true
                    showYoga = false
                } else {
                    showMuscleRelax = false
                    showYoga = true
                }
            })
        }
    }
    func writeToUserDefaults() {
        UserDefaults.standard.setStructValue(value: person, forKey: "user")
        UserDefaults.standard.synchronize()
    }
    func setMovementLow(movementLow: String) {
        person.movementLow = movementLow
        writeToUserDefaults()
    }
    func setMovementModerate(movementModerate: String) {
        person.movementModerate = movementModerate
        writeToUserDefaults()
    }
    func setMovementHigh(movementHigh: String) {
        person.movementHigh = movementHigh
        writeToUserDefaults()
    }
    func getMovementLow() -> String {
        return person.movementLow
    }
    func getMovementModerate() -> String {
        return person.movementModerate
    }
    func getMovementHigh() -> String {
        return person.movementHigh
    }
}
struct MovementActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        MovementActivitiesView()
    }
}

