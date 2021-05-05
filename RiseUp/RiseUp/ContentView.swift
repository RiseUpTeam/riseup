//
//  ContentView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/18/21.
//

import SwiftUI
import AppDevWithSwiftLibrary

struct ContentView: View {
    @State var selectedView : Int
    var body: some View {
        TabView(selection: $selectedView) {
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }.tag(0)
            ActivitiesView().tabItem {
                Image(systemName: "text.book.closed.fill")
                Text("Activities")
            }.tag(1)
            ProfileView().tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }.tag(2)
            HistoryView().tabItem {
                Image(systemName: "chart.bar.xaxis")
                Text("History")
            }.tag(3)
        }.accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedView: 0)
    }
}
