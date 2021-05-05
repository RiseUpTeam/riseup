//
//  HomeView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/24/21.
//

import SwiftUI
import AppDevWithSwiftLibrary

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Group {
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
                }
                NavigationLink(destination: CheckInFeelings()) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 180, height: 50)
                            .foregroundColor(.green)
                        Text("Do a Check-In")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    }
                }
                Spacer()
                Spacer()
                Group {
                    Text("Already have an account?")
                        .font(.title)
                    NavigationLink(destination: Text("Sign in")) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 300, height: 60)
                                .foregroundColor(.green)
                            Text("Sign in")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(.blue)
                        }
                    }
                    .padding()
                    Text("Don't yet have an account?")
                        .font(.title3)
                    NavigationLink(destination: Text("Sign up")) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 140, height: 40)
                                .foregroundColor(.green)
                            Text("Sign up")
                                .font(.title3)
                                .fontWeight(.heavy)
                                .foregroundColor(.blue)
                        }
                    }
                    .padding()
                }
                Spacer()
            }.navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
