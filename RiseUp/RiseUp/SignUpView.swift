//
//  SignUpView.swift
//  TestStandard
//
//  Created by Michael Rodgers on 5/8/21.
//

//
//  SignUpView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 5/8/21.
//

import SwiftUI
import AppDevWithSwiftLibrary

struct SignUpView: View {
    @State var person = Person()
    @State var userName = ""
    @State var password = ""
    @State var isReadyName = false
    @State var isReadyPassword = false
    var body: some View {
        NavigationView {
            VStack {
                Text("Enter user name.")
                    .font(.title)
                    .foregroundColor(.blue)
                ZStack{
                    Rectangle()
                        .frame(width:150, height: 50)
                        .opacity(0)
                        .border(Color.blue, width:3)
                    TextField("",text: $userName, onCommit: {
                        updateName()
                        isReadyName = true
                    })
                    .frame(width: 150, height: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                }
                .padding()
                Spacer()
                if isReadyName {
                    Text("Enter password.")
                        .font(.title)
                        .foregroundColor(.blue)
                    ZStack{
                        Rectangle()
                            .frame(width:150, height: 50)
                            .opacity(0)
                            .border(Color.blue, width:3)
                        TextField("",text: $password, onCommit: {
                            updatePassword()
                            isReadyPassword = true
                        })
                        .frame(width: 150, height: 50, alignment: .center)
                        .multilineTextAlignment(.center)
                    }
                    .padding()
                }
                Spacer()
                if isReadyName && isReadyPassword {
                    Button(action: {
                        createPerson()
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 100, height: 50)
                                .foregroundColor(.blue)
                            Text("Submit")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                    })
                }
                Spacer()
            }.onAppear(perform: {
                UserDefaults.standard.setStructValue(value: person, forKey: "user")
                //person = UserDefaults.standard.getStructValue(forKey: "user")!
                isReadyName = false
                isReadyPassword = false
                userName = ""
                password = ""
            })
        }
    }
    func updateName() {
        person.userName = userName
        UserDefaults.standard.setStructValue(value: person, forKey: "user")
        UserDefaults.standard.synchronize()
    }
    func updatePassword() {
        person.password = password
        UserDefaults.standard.setStructValue(value: person, forKey: "user")
        UserDefaults.standard.synchronize()
    }
    func createPerson() {
        person = UserDefaults.standard.getStructValue(forKey: "user")!
        if person.userName == "Mjrodgers2" {
            person.firstName = "Mike"
            person.lastName = "Rodgers"
            person.vibrate = true
            person.ring = true
            person.light = true
            person.hasCheckIns = false
            person.phoneNumber = "312-555-0000"
            person.hasTherapist = true
            person.therapistFirstName = "Karl"
            person.therapistLastName = "Davidson"
            person.therapistPhoneNumber = "312-555-1111"
            person.alertFrequency = 5
            person.alertTime1 = "8am"
            person.alertTime2 = "12pm"
            person.alertTime3 = "4pm"
            person.alertTime4 = "8pm"
            person.alertTime5 = "11pm"
            person.music = true
            person.musicLow = "Electra"
            person.musicModerate = "All Saints"
            person.musicHigh = "Waves"
            person.breathing = true
            person.breathingLow = "SlowBreathing"
            person.breathingModerate = "FocusedBreath"
            person.breathingHigh = "FourSquare"
            person.mindfulness = true
            person.mindfulnessLow = "TwoMinute"
            person.mindfulnessModerate = "ReleasingAnxiety"
            person.mindfulnessHigh = "LetGo"
            person.movement = true
            person.movementLow = "Grounding"
            person.movementModerate = "Walk"
            person.movementHigh = "MuscleRelaxation"
            person.selfTalk = true
            person.selfTalkLow = "Mantra"
            person.selfTalkModerate = "De-escalate"
            person.selfTalkHigh = "Connection"
            person.sensory = true
            person.sensoryLow = "Sketch"
            person.sensoryModerate = "Temperature"
            person.sensoryHigh = "Focus"
            person.journaling = true
            person.journalingLow = "Feeling"
            person.journalingModerate = "Why"
            person.journalingHigh = "Thoughts"
        } else if person.userName == "Ctolbert4" {
            person.firstName = "Channice"
            person.lastName = "Tolbert"
            person.vibrate = true
            person.ring = true
            person.light = true
            person.hasCheckIns = true
            person.phoneNumber = "312-555-0000"
            person.hasTherapist = false
            person.therapistFirstName = "Sally"
            person.therapistLastName = "Thomason"
            person.therapistPhoneNumber = "312-555-1111"
            person.alertFrequency = 3
            person.alertTime1 = "8am"
            person.alertTime2 = "12pm"
            person.alertTime3 = "4pm"
            person.alertTime4 = "8pm"
            person.alertTime5 = "11pm"
            person.music = true
            person.musicLow = "Electra"
            person.musicModerate = "Watermark"
            person.musicHigh = "Nature"
            person.breathing = true
            person.breathingLow = "SlowBreathing"
            person.breathingModerate = "FocusedBreath"
            person.breathingHigh = "FourSquare"
            person.mindfulness = true
            person.mindfulnessLow = "TwoMinute"
            person.mindfulnessModerate = "ReleasingAnxiety"
            person.mindfulnessHigh = "LetGo"
            person.movement = true
            person.movementLow = "Grounding"
            person.movementModerate = "Walk"
            person.movementHigh = "MuscleRelaxation"
            person.selfTalk = true
            person.selfTalkLow = "Mantra"
            person.selfTalkModerate = "De-escalate"
            person.selfTalkHigh = "Connection"
            person.sensory = true
            person.sensoryLow = "Sketch"
            person.sensoryModerate = "Temperature"
            person.sensoryHigh = "Focus"
            person.journaling = true
            person.journalingLow = "Feeling"
            person.journalingModerate = "Why"
            person.journalingHigh = "Thoughts"
        } else if person.userName == "Rmkornack" {
            person.firstName = "Rebecca"
            person.lastName = "Kornack"
            person.vibrate = true
            person.ring = true
            person.light = true
            person.hasCheckIns = true
            person.phoneNumber = "312-555-0000"
            person.hasTherapist = true
            person.therapistFirstName = "Sally"
            person.therapistLastName = "Thomason"
            person.therapistPhoneNumber = "312-555-1111"
            person.alertFrequency = 2
            person.alertTime1 = "8am"
            person.alertTime2 = "12pm"
            person.alertTime3 = "4pm"
            person.alertTime4 = "8pm"
            person.alertTime5 = "11pm"
            person.music = false
            person.musicLow = "Weightless"
            person.musicModerate = "Watermark"
            person.musicHigh = "Nature"
            person.breathing = true
            person.breathingLow = "SlowBreathing"
            person.breathingModerate = "FocusedBreath"
            person.breathingHigh = "FourSquare"
            person.mindfulness = true
            person.mindfulnessLow = "TwoMinute"
            person.mindfulnessModerate = "ReleasingAnxiety"
            person.mindfulnessHigh = "LetGo"
            person.movement = true
            person.movementLow = "Grounding"
            person.movementModerate = "Walk"
            person.movementHigh = "MuscleRelaxation"
            person.selfTalk = true
            person.selfTalkLow = "Mantra"
            person.selfTalkModerate = "De-escalate"
            person.selfTalkHigh = "Connection"
            person.sensory = true
            person.sensoryLow = "Sketch"
            person.sensoryModerate = "Temperature"
            person.sensoryHigh = "Focus"
            person.journaling = true
            person.journalingLow = "Feeling"
            person.journalingModerate = "Why"
            person.journalingHigh = "Thoughts"
        }
        UserDefaults.standard.setStructValue(value: person, forKey: "user")
        UserDefaults.standard.synchronize()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(person: Person())
    }
}

