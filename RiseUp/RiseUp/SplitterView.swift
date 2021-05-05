//
//  SplitterView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 5/5/21.
//

import SwiftUI

struct SplitterView: View {
    var severity : Int
    var body: some View {
        Text("Your severity is " + String(severity) + ".")
    }
}

struct SplitterView_Previews: PreviewProvider {
    static var previews: some View {
        SplitterView(severity: 0)
    }
}
