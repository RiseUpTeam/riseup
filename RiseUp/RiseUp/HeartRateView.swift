//
//  HeartRateView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 5/5/21.
//

import SwiftUI

struct HeartRateView: View {
    var feelings: Int
    var symptoms: Int
    var level : Int
    @State var s = 0
    @State var heartRate = ""
    var body: some View {
        VStack (alignment: .center) {
            Text("Please check your heart rate.")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
                .padding()
            Spacer()
            Image("Heart Rate").resizable().scaledToFit()
                // image from https://easypeasyhealth.com/whats-a-normal-heart-rate-resting
                .padding()
            Spacer()
            Text("Enter heart rate.")
                .font(.title)
                .foregroundColor(.blue)
            ZStack{
                Rectangle()
                    .frame(width:150, height: 50)
                    .opacity(0)
                    .border(Color.blue, width:3)
                TextField("",text: $heartRate, onCommit: {calculateSeverity()})
                    .frame(width: 150, height: 50, alignment: .center)
                    .multilineTextAlignment(.center)
            }.padding()
            Spacer()
 /*           HStack{
                Text("Feelings: " + String(feelings))
                Text("Symptoms: " + String(symptoms))
                Text("Level: " + String(level))
                Text("Severity: " + String(s))
            }.padding()
*/            NavigationLink(destination: SplitterView(severity: s)) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15.0)
                        .frame(width: 100, height: 50)
                        .foregroundColor(.blue)
                    Text("Submit")
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                }.padding()
            }
            Spacer()
        }.navigationBarHidden(true)
    }
    func calculateSeverity() {
        let hR = Double(heartRate)!
        if hR > 150.0  || level == 10 {
            s = 10
        } else if hR > 110  || level == 9 {
            s = 9
        } else if hR > 95 || level == 8 {
            s = 8
        }
        else {
            s = (feelings + symptoms) / 2
            if s < level {
                s = level
            }
        }
    }
}

struct HeartRateView_Previews: PreviewProvider {
    static var previews: some View {
        HeartRateView(feelings: 0, symptoms: 0, level: 0)
    }
}
