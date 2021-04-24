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
                NavigationLink(destination: Text("Page 2")) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: 200, height: 50)
                            .foregroundColor(.green)
                        Text("Get Started")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    }
                }
                Spacer()
                Group {
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
                        }
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
                        }
                    }
                    .padding()
                }
                HStack(alignment: .center) {
                    Spacer()
                    NavigationLink(destination: Text("Home")) {
                        VStack(alignment: .center){
                            Image(systemName: "house")
                                .font(.system(size:30))
                            Text("Home")
                                .font(.caption)
                        }
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    }
                    NavigationLink(destination: Text("Activity")) {
                        VStack(alignment: .center){
                            Image(systemName: "text.book.closed.fill")
                                .font(.system(size:30))
                            Text("Activity")
                                .font(.caption)
                        }
                        .frame(width: 100.0, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)                    }
                    NavigationLink(destination: Text("Profile")) {
                        VStack(alignment: .center){
                            Image(systemName: "person.fill")
                                .font(.system(size:35))
                            Text("Profile")
                                .font(.caption)
                        }
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    }
                    NavigationLink(destination: Text("History")) {
                        VStack(alignment: .center){
                            Image(systemName: "chart.bar.xaxis")
                                .font(.system(size:38))
                            Text("History")
                                .font(.caption)
                        }
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                }
            }.navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
