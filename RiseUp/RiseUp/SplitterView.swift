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
        if severity == 10 {
            EmergencyView()
        } else {
            ActivitiesView()
        }
    }
}

struct SplitterView_Previews: PreviewProvider {
    static var previews: some View {
        SplitterView(severity: 0)
    }
}
