//
//  ContentView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/18/21.
//

import SwiftUI

struct ContentView: View {
    @State var action: Bool = true
    var body: some View {
        NavigationView {
            NavigationLink(destination: HomeView(), isActive: $action) {
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
