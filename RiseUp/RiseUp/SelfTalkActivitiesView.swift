//
//  SelfTalkActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import Foundation
import SwiftUI

struct SelfTalkActivitiesView: View {
    @State private var showMantra = false
    @State private var showValidation = false
    @State private var showDeEscalate = false
    @State private var showReframe = false
    @State private var showThoughtFeelingConnection = false
    @State private var showUnravelYourThoughts = false
        var body: some View {
        NavigationView{
            List{
                Text("Choose at least one activity from each tier.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                
                
                Group{
                    Text("Intervention Level: Low")
                        .font(.title)
                    Toggle("Mantra", isOn: $showMantra)
                    if showMantra {
                    }
                    Toggle("Validation", isOn: $showValidation)
                    if showValidation {
                        
                    }
                }
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title)
                    Toggle("De-Escalate Your Thoughts", isOn: $showDeEscalate)
                    if showDeEscalate {
                        
                    }
                    Toggle("Reframe your Thoughts", isOn: $showReframe)
                    if showReframe {
                        
                    }
                }
                Group{
                    Text("Intervention Level: High")
                        .font(.title)
                    Toggle("Build a Thought-Feeling Connection", isOn: $showThoughtFeelingConnection)
                    if showThoughtFeelingConnection {
                        
                    }
                    Toggle("Unravel Your Anxious Thoughts", isOn: $showUnravelYourThoughts)
                    if showUnravelYourThoughts {
                        
                    }
                }
            }.navigationBarTitle("Pick Activity Settings")
        }
    }
}
struct SelfTalkActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        SelfTalkActivitiesView()
    }
}

