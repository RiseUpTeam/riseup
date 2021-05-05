//
//  ProfileView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/24/21.
//

import SwiftUI
import UIKit
struct ProfileView: View {
    @State var userInputone: String = ""
    @State var userInputtwo: String = ""
    @State var userInputthree: String = ""
    @State private var showSetup = true
    @State private var showVibrate = true
    @State private var showRing = true
    @State private var showLight = true
    @State private var checkInAmount = 1
    @State var userCheckInOne: String = ""
    @State var userCheckInTwo: String = ""
    @State var userCheckInThree: String = ""
    @State var userCheckInFour: String = ""
    @State var userCheckInFive: String = ""
    @State private var showBreathing = true
    @State private var showMusic = true
    @State private var showMindfulness = true
    @State private var showMovement = true
    @State private var showSelfTalk = true
    @State private var showVideo = true
    @State private var showSensory = true
    
    
    struct breathingActivity
    {
        var name:String
        var intensityLevel: String
    }
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(alignment: .center) {
                    Group {
                        Image("Rise Up")
                            .resizable().scaledToFit()
                            .padding([.leading, .trailing],25)
                        Text("User Profile")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding([.leading, .trailing],25)
                    }; Spacer()
                    HStack{
                        Text("User Name")
                            .font(.subheadline)
                            
                            .multilineTextAlignment(.leading)
                            .padding([.leading, .trailing],25)
                        Spacer(minLength: 35)
                        TextField("Last, First Name", text: $userInputone)
                            .font(.system(size: 12))
                            .padding()
                            .background(Color(.lightGray))
                            
                            .cornerRadius(5)
                            
                            .shadow(radius:5)
                    }; Spacer()
                        .frame(width: 0.0, height: 10.0)
                    HStack{
                        Text("Support Person")
                            .font(.subheadline)
                            
                            .multilineTextAlignment(.leading)
                            .padding([.leading, .trailing],23)
                        
                        TextField("Last, First Name", text: $userInputtwo)
                            .font(.system(size: 12))
                            .padding()
                            .background(Color(.lightGray))
                            .cornerRadius(5)
                            
                            .shadow(radius:5)
                    }; Spacer()
                        .frame(width: 0.0, height: 10.0)
                    HStack{
                        Text("Support Person Phone Number")
                            .font(.subheadline)
                            
                            .multilineTextAlignment(.leading)
                            .padding([.leading, .trailing],21)
                        TextField("123-456-789", text: $userInputthree)
                            .font(.system(size: 12))
                            .padding()
                            .background(Color(.lightGray))
                            .cornerRadius(5)
                            
                            .shadow(radius:5)
                    }; Spacer()
                        .frame(width: 0.0, height: 10.0)
                    VStack(alignment: .leading){
                        Toggle("Check-Ins", isOn: $showSetup)
                            .padding([.leading],20)
                            .padding([.trailing],5)
                            .font(.subheadline)
                        
                        
                        if showSetup {
                            Text("Alert Type")
                                
                                .font(.subheadline)
                                .padding([.leading, .trailing],20)
                            Spacer()
                                .frame(width: 0.0, height: 5.0)
                            HStack{
                                VStack(alignment: .leading){
                                    Text("Vibrate")
                                        .multilineTextAlignment(.center)
                                        .padding([.leading, .trailing],22)
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                        .font(.system(size: 12))
                                        .frame(width: 100.0)
                                    Spacer()
                                        .frame(width: 5.0, height: 2.0)
                                    Toggle("", isOn: $showVibrate)
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                        .padding([.leading], 10)
                                        .padding([.trailing], 25)
                                    if showVibrate {
                                        
                                    }
                                }
                                VStack{
                                    Text("Ring")
                                        .multilineTextAlignment(.center)
                                        .padding([.leading, .trailing],25)
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                        .font(.system(size: 12))
                                    
                                    Spacer()
                                        .frame(width: 5.0, height: 2.0)
                                    Toggle("", isOn: $showRing)
                                        .padding([.leading, .trailing], 29)
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                    if showRing {
                                        
                                    }
                                }; Spacer()
                                    .frame(width: 5.0, height: 10.0)
                                
                                VStack{
                                    Text("Light")
                                        .multilineTextAlignment(.center)
                                        .padding([.leading, .trailing],25)
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                        .font(.system(size: 12))
                                    Spacer()
                                        .frame(width: 5.0, height: 2.0)
                                    Toggle("", isOn: $showLight)
                                        .padding([.trailing], 29)
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                    if showLight {
                                        
                                    }
                                }
                            }
                            VStack{
                                Section{
                                    
                                    HStack {
                                        Text("Daily Check-Ins")
                                            .padding([.leading],5)
                                            .font(.subheadline)
                                            .multilineTextAlignment(.leading)
                                            .padding()
                                        Stepper(value: $checkInAmount, in: 1...5, step: 1) {
                                            Text("\(checkInAmount)")
                                        }
                                    }
                                    VStack{
                                        if (checkInAmount == 1) {
                                            (HStack{
                                                Text("Check In Time 1")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                    .foregroundColor(Color.gray)
                                                TextField("0:00 AM", text: $userCheckInOne)
                                                    .font(.system(size: 12))
                                                    .padding()
                                                    .background(Color(.lightGray))
                                                    .cornerRadius(5)
                                                    .shadow(radius:5)
                                            }
                                            )}
                                        else if (checkInAmount == 2) {
                                            (VStack{
                                                HStack{
                                                    Text("Check In Time 1")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInOne)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                                HStack{
                                                    Text("Check In Time 2")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInTwo)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                            }
                                            
                                            
                                            )}
                                        else if (checkInAmount == 3) {
                                            (VStack{
                                                HStack{
                                                    Text("Check In Time 1")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInOne)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                                HStack{
                                                    Text("Check In Time 2")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInTwo)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                                HStack{
                                                    Text("Check In Time 3")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInThree)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                            }
                                            
                                            
                                            )}
                                        else if (checkInAmount == 4) {
                                            (VStack{
                                                HStack{
                                                    Text("Check In Time 1")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInOne)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                                HStack{
                                                    Text("Check In Time 2")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInTwo)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                                HStack{
                                                    Text("Check In Time 3")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInThree)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                                HStack{
                                                    Text("Check In Time 4")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInFour)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                            }
                                            
                                            
                                            )}
                                        else {
                                            (VStack{
                                                HStack{
                                                    Text("Check In Time 1")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInOne)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                                HStack{
                                                    Text("Check In Time 2")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInTwo)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                                HStack{
                                                    Text("Check In Time 3")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInThree)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                                HStack{
                                                    Text("Check In Time 4")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInFour)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                                HStack{
                                                    Text("Check In Time 4")
                                                        .font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.leading, .trailing],25)
                                                        .foregroundColor(Color.gray)
                                                    TextField("0:00 AM", text: $userCheckInFour)
                                                        .font(.system(size: 12))
                                                        .padding()
                                                        .background(Color(.lightGray))
                                                        .cornerRadius(5)
                                                        .shadow(radius:5)
                                                }; Spacer()
                                                    .frame(width: 0.0, height: 10.0)
                                            }
                                            
                                            
                                            )}
                                    }
                                    
                                }
                            }; Spacer()
                            Text("Intervention Settings")
                                .font(.subheadline)
                                .multilineTextAlignment(.leading)
                                .padding([.leading], 20)
                            Spacer()
                            VStack{
                                HStack{
                                    Text("Breathing")
                                        .multilineTextAlignment(.center)
                                        .padding([.leading, .trailing],25)
                                        .font(.subheadline)
                                        .foregroundColor(Color.gray)
                                        .font(.system(size: 12))
                                    
                                    Spacer()
                                        .frame(width: 5.0, height: 2.0)
                                    Toggle("", isOn: $showBreathing)
                                        .padding([.leading, .trailing], 29)
                                        .font(.subheadline)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


