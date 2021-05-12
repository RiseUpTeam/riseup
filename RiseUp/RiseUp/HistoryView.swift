//
//  HistoryView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/24/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct HistoryView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Spacer()
                Text("Hisotory View")
                Spacer()
            }.navigationBarTitle("History", displayMode: .large)
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
