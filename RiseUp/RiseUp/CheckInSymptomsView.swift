//
//  CheckInSymptomsView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/29/21.
//

import SwiftUI

struct CheckInSymptomsView: View {
    @State var level: Double = 0
    var body: some View {
        List{
            Text("Excessive Worrying")
            Text("Difficulty Sleeping")
            Text("Fatigue/Dizzy")
            Text("Sweating/Hot Flashes")
            Text("Shortness of Breath")
            Text("Chest Pain")
            Text("Concentration Issues")
            Text("Irritated")
            Text("Feeling of Terror")
            VStack {
                Text("What Level are the Symptoms?")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                HStack {
                    Text("1")
                    Spacer()
                    Text("10")
                } .foregroundColor(.blue)
                Slider(value: $level, in: 0.0...10.0)
                    .padding(.horizontal, 10.0)
                
                HStack {
                    Text ("Level: " + String(Int(level)))
                        .foregroundColor(.green)
                }
                .padding(.horizontal, 4.0)
            }
        }
    }
}

struct CheckInSymptomsView_Previews: PreviewProvider {
    static var previews: some View {
        CheckInSymptomsView()
    }
}
