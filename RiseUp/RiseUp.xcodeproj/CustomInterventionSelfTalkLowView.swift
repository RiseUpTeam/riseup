//
//  CustomInterventionSelfTalkLowView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/9/21.
//

import Foundation
import SwiftUI


struct CustomInterventionSelfTalkLowView: View {
    @State var customActivityName: String = ""
    @State var customActivityLink: String = ""
    @State private var showLinkSetup = false
    @State private var showContentOfActivity = false
    @State var content: String = ""
    
    var body: some View {
        NavigationView{
            List{
                Group{
                    TextField("Enter Activity Name", text: $customActivityName)
                        .onChange(of: customActivityName, perform: { value in
                            print(customActivityName)
                        })
                    Toggle("Link to Website", isOn: $showLinkSetup)
                    if showLinkSetup {
                        TextField("Add Activity Link", text: $customActivityLink)
                    }
                    Toggle("Content of Activity", isOn: $showContentOfActivity)
                    if showContentOfActivity {
                        TextEditor(text: $content)
                            .onChange(of: content, perform: { value in
                                print("Self-Talk Activity: \(content)")
                            })
                            .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 150, maxHeight: .infinity, alignment: .leading)
                        }
                    }
                }.navigationBarTitle(Text("Custom Intervention"))
            }
        }
    }
struct CustomInterventionSelfTalkLowView_Previews: PreviewProvider {
    static var previews: some View {
        CustomInterventionSelfTalkLowView()
        }
}

