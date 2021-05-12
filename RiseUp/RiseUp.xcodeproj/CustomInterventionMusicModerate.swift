//
//  CustomInterventionMusicModerate.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/9/21.
//

import Foundation
import SwiftUI


struct CustomInterventionMusicModerateView: View {
    @State var customActivityName: String = ""
    @State var customActivityLink: String = ""
    @State private var showLinkSetup = false


    
    var body: some View {
        NavigationView{
            List{
                Group{
                    TextField("Enter Activity Name", text: $customActivityName)
                    TextField("Add Activity Link", text: $customActivityLink)
                   }
                }.navigationBarTitle(Text("Custom Intervention"))
            }
        }
    }
struct CustomInterventionMusicModerateView_Previews: PreviewProvider {
    static var previews: some View {
        CustomInterventionMusicLowView()
        }
}


