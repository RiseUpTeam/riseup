//
//  ContentView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/18/21.
//

import SwiftUI


struct StartApp: View {
    var body: some View {
        Text("Here we go")
    }
}

struct StartApp_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Rise Up")
                    .resizable().scaledToFit()
                Spacer()
                NavigationLink(
                    destination: StartApp(),
                    label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 250, height: 50)
                                .foregroundColor(.green)
                            Text("Let's Get Started")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                    })
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
