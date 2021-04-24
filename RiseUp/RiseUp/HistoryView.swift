//
//  HistoryView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/24/21.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            HStack(alignment: .center) {
                NavigationLink(destination: HomeView()) {
                    VStack(alignment: .center){
                        Image(systemName: "house")
                            .font(.system(size:30))
                        Text("Home")
                            .font(.caption)
                    }.padding([.leading, .trailing],25)
                }
                NavigationLink(destination: ActivitiesView()) {
                    VStack(alignment: .center){
                        Image(systemName: "text.book.closed.fill")
                            .font(.system(size:30))
                        Text("Activities")
                            .font(.caption)
                    }.padding([.leading, .trailing],25)
                }
                NavigationLink(destination: ProfileView()) {
                    VStack(alignment: .center){
                        Image(systemName: "person.fill")
                            .font(.system(size:37))
                        Text("Profile")
                            .font(.caption)
                    }.padding([.leading, .trailing],25)
                }
                //NavigationLink(destination: HistoryView()) {
                    VStack(alignment: .center){
                        Image(systemName: "chart.bar.xaxis")
                            .font(.system(size:37))
                        Text("History")
                            .font(.caption)
                    }.padding([.leading, .trailing],25)
                    .foregroundColor(.green)
                //}
            }
        }        .navigationBarHidden(true)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
