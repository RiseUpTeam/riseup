//
//  CustomInterventionSelfTalkHighView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/9/21.
//

import Foundation
import SwiftUI


struct CustomInterventionSelfTalkHighView: View {
    @State var customActivityName: String = ""
    @State var customActivityLink: String = ""
    @State private var showLinkSetup = false
    @State private var showContentOfActivity = false


    
    var body: some View {
        NavigationView{
            List{
                Group{
                    TextField("Enter Activity Name", text: $customActivityName)
                    Toggle("Link to Website", isOn: $showLinkSetup)
                    if showLinkSetup {
                        TextField("Add Activity Link", text: $customActivityLink)
                    }
                    Toggle("Content of Activity", isOn: $showContentOfActivity)
                    if showContentOfActivity {
                        TextEditor(text: .constant("Self Talk Activity: \n"))
                            .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 150, maxHeight: .infinity, alignment: .leading)
                        }
                    }
                }.navigationBarTitle(Text("Custom Intervention"))
            }
        }
    }
struct CustomInterventionSelfTalkHighView_Previews: PreviewProvider {
    static var previews: some View {
        CustomInterventionSelfTalkHighView()
        }
}


