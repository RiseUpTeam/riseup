//
//  ProfileView.swift
//  RiseUp
//
//  Created by Rebecca Kornback on 4/24/21.
//

import SwiftUI


struct ProfileView: View {
    @State var userName: String = ""
    @State var supportName: String = ""
    @State var supportPhone: String = ""
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
    @State private var showJournaling = true
    @State private var showMusic = true
    @State private var showMindfulness = true
    @State private var showMovement = true
    @State private var showSelfTalk = true
    
    @State private var showSensory = true
    private let oldPasswordToConfirmAgainst = "12345"
    @State private var oldPassword = ""
    @State private var newPassword = ""
    @State private var confirmedPassword = ""
    private func isPasswordValid() -> Bool {
        if oldPassword != oldPasswordToConfirmAgainst {
            return false
        }
        
        if !newPassword.isEmpty && newPassword == confirmedPassword {
            return true
        }
        
        return false
    }
    
    
    
    var body: some View {
        NavigationView {
            Form{
                Group{
                    Section(header: Text("User Information")){
                        List{
                            TextField("User Name", text: $userName)
                            TextField("Support First Name", text: $supportName)
                            TextField("123-456-7890", text: $supportPhone)
                        }
                    }
                }
                Section(header: Text("Check-in Settings")){
                    List{
                        Toggle("Check-Ins", isOn: $showSetup)
                        if showSetup {
                            Group{
                                Text("Alert Type")
                                HStack{
                                    VStack(alignment: .center){
                                        Text("Vibrate")
                                        Toggle("", isOn: $showVibrate)
                                            .padding([.leading, .trailing], 25)
                                        if showVibrate {
                                            
                                        }
                                    }
                                    VStack(alignment: .center){
                                        Text("Ring")
                                        Toggle("", isOn: $showRing)
                                            .padding([.leading, .trailing], 25)
                                        if showRing {
                                            
                                        }
                                    }
                                    VStack(alignment: .center){
                                        Text("Light")
                                        Toggle("", isOn: $showLight)
                                            .padding([.leading, .trailing], 25)
                                        if showLight {
                                            
                                        }
                                    }
                                }
                            }
                            HStack {
                                Text("Daily Check-Ins")
                                Stepper(value: $checkInAmount, in: 1...5, step: 1) {
                                    Text("\(checkInAmount)")
                                }
                            }
                            
                            VStack{
                                if (checkInAmount == 1) {
                                    Group{
                                        (HStack{
                                            Text("Check In Time 1")
                                                .font(.subheadline)
                                                .multilineTextAlignment(.leading)
                                                .padding([.leading, .trailing],25)
                                            TextField("0:00 AM", text: $userCheckInOne)
                                        }
                                        )}
                                }
                                else if (checkInAmount == 2) {
                                    Group{
                                        (VStack{
                                            HStack{
                                                Text("Check In Time 1")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                TextField("0:00 AM", text: $userCheckInOne)
                                            }
                                            HStack{
                                                Text("Check In Time 2")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                TextField("0:00 AM", text: $userCheckInTwo)
                                            }
                                        })
                                    }
                                }
                                else if (checkInAmount == 3) {
                                    Group{
                                        (VStack{
                                            HStack{
                                                Text("Check In Time 1")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                
                                                TextField("0:00 AM", text: $userCheckInOne)
                                            }
                                            HStack{
                                                Text("Check In Time 2")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                
                                                TextField("0:00 AM", text: $userCheckInTwo)
                                            }
                                            HStack{
                                                Text("Check In Time 3")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                
                                                TextField("0:00 AM", text: $userCheckInThree)
                                            }
                                        })
                                    }
                                }
                                else if (checkInAmount == 4) {
                                    Group{
                                        (VStack{
                                            HStack{
                                                Text("Check In Time 1")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                TextField("0:00 AM", text: $userCheckInOne)
                                            }
                                            HStack{
                                                Text("Check In Time 2")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                TextField("0:00 AM", text: $userCheckInTwo)
                                            }
                                            HStack{
                                                Text("Check In Time 3")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                TextField("0:00 AM", text: $userCheckInThree)
                                            }
                                            HStack{
                                                Text("Check In Time 4")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                TextField("0:00 AM", text: $userCheckInFour)
                                            }
                                        })
                                        
                                    }
                                }
                                else {
                                    Group{
                                        (VStack{
                                            HStack{
                                                Text("Check In Time 1")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                TextField("0:00 AM", text: $userCheckInOne)
                                            }
                                            HStack{
                                                Text("Check In Time 2")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                
                                                TextField("0:00 AM", text: $userCheckInTwo)
                                            }
                                            HStack{
                                                Text("Check In Time 3")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                TextField("0:00 AM", text: $userCheckInThree)
                                            }
                                            HStack{
                                                Text("Check In Time 4")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                TextField("0:00 AM", text: $userCheckInFour)
                                            }
                                            HStack{
                                                Text("Check In Time 5")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                TextField("0:00 AM", text: $userCheckInFour)
                                            }
                                        })
                                    }
                                }
                            }
                        }
                    }
                    Section(header: Text("Intervention Settings")){
                        Group{
                            List{
                                Toggle("Music", isOn: $showMusic)
                                if showMusic {
                                    NavigationLink(destination: MusicActivitiesView()) {
                                        Text("Music Activity Settings")
                                    }
                                }
                                Toggle("Breathing", isOn: $showBreathing)
                                if showBreathing {
                                    NavigationLink(destination: BreathingActivitiesView()) {
                                        Text("Breathing Activity Settings")
                                    }
                                }
                                Toggle("Mindfulness", isOn: $showMindfulness)
                                if showMindfulness {
                                    NavigationLink(destination: MindfulnessActivitiesView()) {
                                        Text("Mindfulness Activity Settings")
                                    }
                                }
                                Toggle("Movement", isOn: $showMovement)
                                if showMovement {
                                    NavigationLink(destination: MovementActivitiesView()) {
                                        Text("Movement Activity Settings")
                                    }
                                }
                            }
                            List{
                                Toggle("Self Talk", isOn: $showSelfTalk)
                                if showSelfTalk {
                                    NavigationLink(destination: SelfTalkActivitiesView()) {
                                        Text("Self Talk Activity Settings")
                                    }
                                }
                                Toggle("Sensory", isOn: $showSensory)
                                if showSensory {
                                    NavigationLink(destination: SensoryActivitiesView()) {
                                        Text("Sensory Activity Settings")
                                    }
                                }
                                Toggle("Journaling", isOn: $showJournaling)
                                if showJournaling {
                                    NavigationLink(destination: JournalingActivitiesView()) {
                                        Text("Journaling Activity Settings")
                                    }
                                }
                            }
                        }
                    }
                }
                Group{
                    Section(header: Text("Password")) {
                        SecureField("Enter old password", text: $oldPassword)
                        SecureField("New Password", text: $newPassword)
                        SecureField("Confirm New Password", text: $confirmedPassword)
                        
                    if self.isPasswordValid() {
                        Button(action: {
                            print("Updated password")}, label: {
                                Text("Update password")
                                }
                            )}
                        }
                    }
                }.navigationBarTitle(Text("Profile"))
            }
        }
    }










struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


