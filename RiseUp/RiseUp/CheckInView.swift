//
//  CheckInView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 5/6/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct CheckInView: View {
    @State private var isPresentedFeelings = false
    @State private var isPresentedSymptoms = false
    @State private var isPresentedHeartRate = false
    var body: some View {
        VStack(alignment: .center) {
            Image("Rise Up")
                .resizable().scaledToFit()
                .padding(0)
            Group {
                Text("Step 1:")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                Button(action: {
                    isPresentedFeelings.toggle()
                },
                label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 280, height: 50)
                            .foregroundColor(.green)
                        Text("Check your feelings")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    }
                }).fullScreenCover(isPresented: $isPresentedFeelings, content: CheckInFeelings.init)
                Spacer()
            }
            Group {
                Text("Step 2:")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                Button(action: {
                    isPresentedSymptoms.toggle()
                },
                label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 280, height: 50)
                            .foregroundColor(.green)
                        Text("Check your symptoms")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    }
                }).fullScreenCover(isPresented: $isPresentedSymptoms, content: CheckInSymptomsView.init)
                Spacer()
            }
            Group {
                Text("Step 3:")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                Button(action: {
                    isPresentedHeartRate.toggle()
                },
                label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 280, height: 50)
                            .foregroundColor(.green)
                        Text("Check your heart rate")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    }
                }).fullScreenCover(isPresented: $isPresentedHeartRate, content: HeartRateView.init)
                Spacer()
            }
            Group {
                Text("Step 4: Choose an Activity")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                Spacer()
            }
        }
        .navigationTitle("Check-In")
    }
}

struct CheckInView_Previews: PreviewProvider {
    static var previews: some View {
        CheckInView()
    }
}
