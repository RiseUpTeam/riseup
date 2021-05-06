//
//  EmergencyView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/29/21.
//

import SwiftUI

struct EmergencyView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("Rise Up")
                .resizable().scaledToFit()
                .padding(0)
            Spacer()
            Group {
            Text("Your check-in responses suggest urgency.")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            Text("EMERGENCY")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .padding()
            Text("Please seek help immediately.")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            Text("Call 911.")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            }.foregroundColor(.blue)
            Spacer()
            NavigationLink(destination: HomeView()) {
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
        }
    }
}

struct EmergencyView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyView()
    }
}
