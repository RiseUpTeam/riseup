//
//  ContentView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/18/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Image("Rise Up")
                    .resizable().scaledToFit()
                    .padding(0)
                Text("Check In, Choose a Path, Calm Yourself")
                    .font(.title3)
                    .fontWeight(.semibold)
                Spacer()
                Text("Giving YOU the power to conquer your anxiety!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
                NavigationLink(destination: Text("Page 2")) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: 200, height: 50)
                            .foregroundColor(.green)
                        Text("Get Started")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    } // .navigationBarTitle("Home")
                }
                Spacer()
                Text("Already have an account?")
                    .font(.title)
                
                NavigationLink(destination: Text("Sign in")) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: 200, height: 50)
                            .foregroundColor(.green)
                        Text("Sign in")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    } // .navigationBarTitle("Home")
                }
                .padding()
                Text("Don't yet have an account?")
                    .font(.title3)
                NavigationLink(destination: Text("Sign up")) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: 200, height: 50)
                            .foregroundColor(.green)
                        Text("Sign up")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    } // .navigationBarTitle("Home")
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
