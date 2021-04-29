//
//  ProfileView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/24/21.
//

import SwiftUI

struct ProfileView: View {
    @State var userInputone: String = ""
    @State var userInputtwo: String = ""
    @State var userInputthree: String = ""
    @State private var showSetup = true
    @State private var showVibrate = true
    @State private var showRing = true
    @State private var showLight = true
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(alignment: .center) {
                    Group {
                        Image("Rise Up")
                            .resizable().scaledToFit()
                            .padding(0)
                        Text("User Profile")
                            .font(.title3)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    HStack{
                        Text("User Name")
                            .font(.subheadline)
                            
                            .multilineTextAlignment(.leading)
                            .padding()
                        Spacer(minLength: 35)
                        TextField("Last, First Name", text: $userInputone)
                            .font(.system(size: 10))
                            .padding()
                            .background(Color(.lightGray))
                            
                            .cornerRadius(5)
                            .padding()
                            .shadow(radius:5)
                    }
                    HStack{
                        Text("Support Person")
                            .font(.subheadline)
                            
                            .multilineTextAlignment(.leading)
                            .padding()
                        TextField("Last, First Name", text: $userInputtwo)
                            .font(.system(size: 10))
                            .padding()
                            .background(Color(.lightGray))
                            .cornerRadius(5)
                            .padding()
                            .shadow(radius:5)
                    }
                    HStack{
                        Text("Support Phone Number")
                            .font(.subheadline)
                            
                            .multilineTextAlignment(.leading)
                            .padding()
                        TextField("123-456-789", text: $userInputthree)
                            .font(.system(size: 10))
                            .padding()
                            .background(Color(.lightGray))
                            .cornerRadius(5)
                            .padding()
                            .shadow(radius:5)
                    }
                    VStack(alignment: .leading){
                        Toggle("Check-Ins", isOn: $showSetup)
                            .padding()
                            .font(.subheadline)
                        
                        if showSetup {
                            Text("Alert Type")
                                .font(.subheadline)
                                .padding()
                            
                            HStack{
                                VStack{
                                    Text("Vibrate")
                                        .padding(.leading)
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                    Toggle("", isOn: $showVibrate)
                                        .padding()
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                    if showVibrate {
                                        
                                    }
                                }
                                VStack{
                                    Text("Ring")
                                        .padding(.leading)
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                    
                                    Toggle("", isOn: $showRing)
                                        .padding()
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                    if showRing {
                                        
                                    }
                                }
                                VStack{
                                    Text("Light")
                                        .padding(.leading)
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                    Toggle("", isOn: $showLight)
                                        .padding()
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                    if showLight {
                                        
                                    }
                                }
                            }
                            Text("Number of Daily Check-Ins")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                                .padding()
                            Text("Choose Check-In Times")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                                .padding()
                        }
                    }
                }
            }
            
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
                    //NavigationLink(destination: ProfileView()) {
                    VStack(alignment: .center){
                        Image(systemName: "person.fill")
                            .font(.system(size:37))
                        Text("Profile")
                            .font(.caption)
                    }.padding([.leading, .trailing],25)
                    .foregroundColor(.green)
                    //}
                    NavigationLink(destination: HistoryView()) {
                        VStack(alignment: .center){
                            Image(systemName: "chart.bar.xaxis")
                                .font(.system(size:37))
                            Text("History")
                                .font(.caption)
                        }.padding([.leading, .trailing],25)
                    }
                }
            }        .navigationBarHidden(true)
        }
    }
}
        
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


