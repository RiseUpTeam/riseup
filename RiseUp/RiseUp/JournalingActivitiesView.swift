//
//  JournalingActivitiesView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/5/21.
//

import Foundation
import SwiftUI

struct JournalingActivitiesView: View {
    @State private var showWhatAmIFeeling = false
    @State private var showWhatIsMyFear = false
    @State private var showWhy = false
    @State private var showPositiveWord = false
    @State private var showPositiveThoughts = false
    @State private var showProblemQuestions = false
        var body: some View {
        NavigationView{
            List{
                Text("Choose at least one activity from each tier.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                
                
                Group{
                    Text("Intervention Level: Low")
                        .font(.title)
                    Toggle("What Am I Feeling?", isOn: $showWhatAmIFeeling)
                    if showWhatAmIFeeling {
                    }
                    Toggle("What Is My Fear?", isOn: $showWhatIsMyFear)
                    if showWhatIsMyFear {
                        
                    }
                }
                Group{
                    Text("Intervention Level: Moderate")
                        .font(.title)
                    Toggle("Know Your Why", isOn: $showWhy)
                    if showWhy {
                        
                    }
                    Toggle("Positive Word Exercise", isOn: $showPositiveWord)
                    if showPositiveWord {
                        
                    }
                }
                Group{
                    Text("Intervention Level: High")
                        .font(.title)
                    Toggle("Positive Thoughts", isOn: $showPositiveThoughts)
                    if showPositiveThoughts {
                        
                    }
                    Toggle("Problem Questions", isOn: $showProblemQuestions)
                    if showProblemQuestions {
                        
                    }
                }
            }.navigationBarTitle("Pick Activity Settings")
        }
    }
}
struct JournalingActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        JournalingActivitiesView()
    }
}
