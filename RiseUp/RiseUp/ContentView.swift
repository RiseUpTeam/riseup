//
//  ContentView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/18/21.
//

import SwiftUI
import AppDevWithSwiftLibrary

struct ContentView: View {
    @State var action: Bool = true
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }.foregroundColor(.blue)
            ActivitiesView().tabItem {
                Image(systemName: "text.book.closed.fill")
                Text("Activities")
            }.foregroundColor(.blue)
            ProfileView().tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }.foregroundColor(.blue)
            HistoryView().tabItem {
                Image(systemName: "chart.bar.xaxis")
                Text("History")
            }
        }.accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
