//
//  HomeView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/24/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
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
            NavigationLink(destination: ActivitiesView()) {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 180, height: 50)
                        .foregroundColor(.green)
                    Text("Get Started")
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
            HStack(alignment: .center) {
               // NavigationLink(destination: ContentView()) {
                    VStack(alignment: .center){
                        Image(systemName: "house")
                            .font(.system(size:30))
                        Text("Home")
                            .font(.caption)
                    }.padding([.leading, .trailing],25)
                    .foregroundColor(.green)
                //}
                NavigationLink(destination: ActivitiesView()) {
                    VStack(alignment: .center){
                        Image(systemName: "text.book.closed.fill")
                            .font(.system(size:30))
                        Text("Activities")
                            .font(.caption)
                    }.padding([.leading, .trailing],25)
                }
                NavigationLink(destination: ProfileView()) {
                    VStack(alignment: .center){
                        Image(systemName: "person.fill")
                            .font(.system(size:37))
                        Text("Profile")
                            .font(.caption)
                    }.padding([.leading, .trailing],25)
                }
                NavigationLink(destination: HistoryView()) {
                    VStack(alignment: .center){
                        Image(systemName: "chart.bar.xaxis")
                            .font(.system(size:37))
                        Text("History")
                            .font(.caption)
                    }.padding([.leading, .trailing],25)
                }
            }
        }        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
