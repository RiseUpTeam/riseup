//
//  HeartRateView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 5/5/21.
//

import SwiftUI

struct HeartRateView: View {
    @Environment(\.presentationMode) var presentationMode
    var feelings = 4
    var symptoms = 2
    var level = 8
    @State var s = 0
    @State var heartRate = ""
    let radius = CGFloat(15)
    var body: some View {
        VStack (alignment: .center) {
            Image("Rise Up")
                .resizable().scaledToFit()
                .padding(0)
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
                TextField("",text: $heartRate, onCommit: {
                    calculateSeverity()
                })
                .frame(width: 150, height: 50, alignment: .center)
                .multilineTextAlignment(.center)
            }.padding()
            Spacer()
            /*     HStack{
             Text("Feelings: " + String(feelings))
             Text("Symptoms: " + String(symptoms))
             Text("Level: " + String(level))
             Text("Severity: " + String(s))
             }.padding()
             */
            
            HStack {
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: radius)
                            .frame(width: 100, height: 50)
                            .foregroundColor(.blue)
                        Text("Cancel")
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                    }
                })
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: radius)
                            .frame(width: 100, height: 50)
                            .foregroundColor(.blue)
                        Text("Submit")
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                    }
                })
                Spacer()
            }.padding()
        Spacer()
        }
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
