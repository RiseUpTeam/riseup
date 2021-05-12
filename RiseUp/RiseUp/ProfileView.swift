//
//  ProfileView.swift
//  RiseUp
//
//  Created by Rebecca Kornback on 4/24/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct ProfileView: View {
    @State var person = Person()
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
    @State private var showJournaling = true
    @State private var showMusic = true
    @State private var showMindfulness = true
    @State private var showMovement = true
    @State private var showSelfTalk = true
    @State private var showSensory = true
    
    var body: some View {
        NavigationView {
            ZStack{
                ScrollView {
                    Spacer()
                    HStack{
                        Text("User Name")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                            .padding([.leading, .trailing],25)
                        Spacer(minLength: 35)
                        TextField("Last, First Name", text: $userInputone, onCommit: {setName(name: userInputone)})
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
                        
                        TextField("Last, First Name", text: $userInputtwo, onCommit: {setTherapistName(name: userInputtwo)})
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
                        TextField("123-456-789", text: $userInputthree, onCommit: {setPhoneNumber(phoneNumber: userInputthree)})
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
                                .onAppear(perform: {setHasCheckIns(hasCheckIns: true)})
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
                                        Text("").padding(0)
                                            .onAppear(perform: {setVibrate(vibrate: true)})
                                    } else {
                                        Text("").padding(0)
                                            .onAppear(perform: {setVibrate(vibrate: false)})
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
                                        Text("").padding(0)
                                            .onAppear(perform: {setRing(ring: true)})
                                    } else {
                                        Text("").padding(0)
                                            .onAppear(perform: {setRing(ring: false)})
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
                                        Text("").padding(0)
                                            .onAppear(perform: {setLight(light: true)})
                                    } else {
                                        Text("").padding(0)
                                            .onAppear(perform: {setLight(light: false)})
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
                                    Group {
                                        if (checkInAmount >= 1) {
                                            HStack{
                                                Text("Check In Time 1")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                    .foregroundColor(Color.gray)
                                                TextField("0:00 AM", text: $userCheckInOne, onCommit: {setAlertTime1(alertTime1: userCheckInOne)})
                                                    .font(.system(size: 12))
                                                    .padding()
                                                    .background(Color(.lightGray))
                                                    .cornerRadius(5)
                                                    .shadow(radius:5)
                                            }.onAppear(perform: {setAlertFrequency(alertFrequency: checkInAmount)})
                                            Spacer()
                                        } else {
                                            Text("")
                                                .padding(0)
                                                .onAppear(perform: {setAlertFrequency(alertFrequency: checkInAmount)})
                                        }
                                        if (checkInAmount >= 2) {
                                            HStack{
                                                Text("Check In Time 2")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                    .foregroundColor(Color.gray)
                                                TextField("0:00 AM", text: $userCheckInTwo, onCommit: {setAlertTime2(alertTime2: userCheckInTwo)})
                                                    .font(.system(size: 12))
                                                    .padding()
                                                    .background(Color(.lightGray))
                                                    .cornerRadius(5)
                                                    .shadow(radius:5)
                                            }.onAppear(perform: {setAlertFrequency(alertFrequency: checkInAmount)})
                                            Spacer()
                                        } else {
                                            Text("")
                                                .padding(0)
                                                .onAppear(perform: {setAlertFrequency(alertFrequency: checkInAmount)})
                                        }
                                        if (checkInAmount >= 3) {
                                            HStack{
                                                Text("Check In Time 3")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                    .foregroundColor(Color.gray)
                                                TextField("0:00 AM", text: $userCheckInThree, onCommit: {setAlertTime3(alertTime3: userCheckInThree)})
                                                    .font(.system(size: 12))
                                                    .padding()
                                                    .background(Color(.lightGray))
                                                    .cornerRadius(5)
                                                    .shadow(radius:5)
                                            }.onAppear(perform: {setAlertFrequency(alertFrequency: checkInAmount)})
                                            Spacer()
                                        } else {
                                            Text("")
                                                .padding(0)
                                                .onAppear(perform: {setAlertFrequency(alertFrequency: checkInAmount)})
                                        }
                                        if (checkInAmount >= 4) {
                                            HStack{
                                                Text("Check In Time 4")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                    .foregroundColor(Color.gray)
                                                TextField("0:00 AM", text: $userCheckInFour, onCommit: {setAlertTime4(alertTime4: userCheckInFour)})
                                                    .font(.system(size: 12))
                                                    .padding()
                                                    .background(Color(.lightGray))
                                                    .cornerRadius(5)
                                                    .shadow(radius:5)
                                            }.onAppear(perform: {setAlertFrequency(alertFrequency: checkInAmount)})
                                            Spacer()
                                        } else {
                                            Text("")
                                                .padding(0)
                                                .onAppear(perform: {setAlertFrequency(alertFrequency: checkInAmount)})
                                        }
                                        if (checkInAmount >= 5) {
                                            HStack{
                                                Text("Check In Time 5")
                                                    .font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                                    .padding([.leading, .trailing],25)
                                                    .foregroundColor(Color.gray)
                                                TextField("0:00 AM", text: $userCheckInFive, onCommit: {setAlertTime5(alertTime5: userCheckInFive)})
                                                    .font(.system(size: 12))
                                                    .padding()
                                                    .background(Color(.lightGray))
                                                    .cornerRadius(5)
                                                    .shadow(radius:5)
                                            }.onAppear(perform: {setAlertFrequency(alertFrequency: checkInAmount)})
                                            Spacer()
                                        } else {
                                            Text("")
                                                .padding(0)
                                                .onAppear(perform: {setAlertFrequency(alertFrequency: checkInAmount)})
                                        }
                                    }
                                }
                                Text("Intervention Settings")
                                    .font(.subheadline)
                                    .multilineTextAlignment(.leading)
                                    .padding([.leading], 20)
                                Spacer()
                            }
                            VStack{
                                VStack{
                                    HStack{
                                        Text("Music")
                                            .multilineTextAlignment(.center)
                                            .padding([.leading, .trailing],25)
                                            .font(.subheadline)
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 12))
                                        Spacer()
                                            .frame(width: 5.0, height: 2.0)
                                        Toggle("", isOn: $showMusic)
                                            .padding([.leading, .trailing], 29)
                                            .font(.subheadline)
                                    }
                                    if showMusic {
                                        NavigationLink(destination: MusicActivitiesView()) {
                                            Text("Music Activity Settings")
                                                .foregroundColor(Color.blue)
                                                .multilineTextAlignment(.leading)
                                                .font(.subheadline)
                                        }
                                        Text("").padding(0)
                                            .onAppear(perform: {setMusic(music: true)})
                                    } else {
                                        Text("").padding(0)
                                            .onAppear(perform: {setMusic(music: false)})
                                    }
                                }
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
                                    if showBreathing {
                                        NavigationLink(destination: BreathingActivitiesView()) {
                                            Text("Breathing Activity Settings")                                           .foregroundColor(Color.blue)
                                                .multilineTextAlignment(.leading)
                                                .font(.subheadline)
                                        }
                                        Text("").padding(0)
                                            .onAppear(perform: {setBreathing(breathing: true)})
                                    } else {
                                        Text("").padding(0)
                                            .onAppear(perform: {setBreathing(breathing: false)})
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("Mindfulness")
                                            .multilineTextAlignment(.center)
                                            .padding([.leading, .trailing],25)
                                            .font(.subheadline)
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 12))
                                        
                                        Spacer()
                                            .frame(width: 5.0, height: 2.0)
                                        Toggle("", isOn: $showMindfulness)
                                            .padding([.leading, .trailing], 29)
                                            .font(.subheadline)
                                    }
                                    if showMindfulness {
                                        NavigationLink(destination: MindfulnessActivitiesView()) {
                                            Text("Mindfulness Activity Settings")                                         .foregroundColor(Color.blue)
                                                .multilineTextAlignment(.leading)
                                                .font(.subheadline)
                                        }
                                        Text("").padding(0)
                                            .onAppear(perform: {setMindfulness(mindfulness: true)})
                                    } else {
                                        Text("").padding(0)
                                            .onAppear(perform: {setMindfulness(mindfulness: false)})
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("Movement")
                                            .multilineTextAlignment(.center)
                                            .padding([.leading, .trailing],25)
                                            .font(.subheadline)
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 12))
                                        
                                        Spacer()
                                            .frame(width: 5.0, height: 2.0)
                                        Toggle("", isOn: $showMovement)
                                            .padding([.leading, .trailing], 29)
                                            .font(.subheadline)
                                    }
                                    if showMovement {
                                        NavigationLink(destination: MovementActivitiesView()) {
                                            Text("Movement Activity Settings")                                         .foregroundColor(Color.blue)
                                                .multilineTextAlignment(.leading)
                                                .font(.subheadline)
                                        }
                                        Text("").padding(0)
                                            .onAppear(perform: {setMovement(movement: true)})
                                    } else {
                                        Text("").padding(0)
                                            .onAppear(perform: {setMovement(movement: false)})
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("Self Talk")
                                            .multilineTextAlignment(.center)
                                            .padding([.leading, .trailing],25)
                                            .font(.subheadline)
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 12))
                                        
                                        Spacer()
                                            .frame(width: 5.0, height: 2.0)
                                        Toggle("", isOn: $showSelfTalk)
                                            .padding([.leading, .trailing], 29)
                                            .font(.subheadline)
                                    }
                                    if showSelfTalk {
                                        NavigationLink(destination: SelfTalkActivitiesView()) {
                                            Text("Self Talk Activity Settings")                                         .foregroundColor(Color.blue)
                                                .multilineTextAlignment(.leading)
                                                .font(.subheadline)
                                        }
                                        Text("").padding(0)
                                            .onAppear(perform: {setSelfTalk(selfTalk: true)})
                                    } else {
                                        Text("").padding(0)
                                            .onAppear(perform: {setSelfTalk(selfTalk: false)})
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("Sensory")
                                            .multilineTextAlignment(.center)
                                            .padding([.leading, .trailing],25)
                                            .font(.subheadline)
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 12))
                                        
                                        Spacer()
                                            .frame(width: 5.0, height: 2.0)
                                        Toggle("", isOn: $showSensory)
                                            .padding([.leading, .trailing], 29)
                                            .font(.subheadline)
                                    }
                                    if showSensory {
                                        NavigationLink(destination: SensoryActivitiesView()) {
                                            Text("Sensory Activity Settings")                                         .foregroundColor(Color.blue)
                                                .multilineTextAlignment(.leading)
                                                .font(.subheadline)
                                        }
                                        Text("").padding(0)
                                            .onAppear(perform: {setSensory(sensory: true)})
                                    } else {
                                        Text("").padding(0)
                                            .onAppear(perform: {setSensory(sensory: false)})
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("Journaling")
                                            .multilineTextAlignment(.center)
                                            .padding([.leading, .trailing],25)
                                            .font(.subheadline)
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 12))
                                        
                                        Spacer()
                                            .frame(width: 5.0, height: 2.0)
                                        Toggle("", isOn: $showJournaling)
                                            .padding([.leading, .trailing], 29)
                                            .font(.subheadline)
                                    }
                                    if showJournaling {
                                        NavigationLink(destination: JournalingActivitiesView()) {
                                            Text("Journaling Activity Settings")                                         .foregroundColor(Color.blue)
                                                .multilineTextAlignment(.leading)
                                                .font(.subheadline)
                                        }
                                        Text("").padding(0)
                                            .onAppear(perform: {setJournaling(journaling: true)})
                                    } else {
                                        Text("").padding(0)
                                            .onAppear(perform: {setJournaling(journaling: false)})
                                    }
                                }
                            }
                        }
                        else {
                            Text("")
                                .font(.subheadline)
                                .padding([.leading, .trailing],20)
                                .onAppear(perform: {setHasCheckIns(hasCheckIns: false)})
                        }
                    }
                }
            }
            .padding(.horizontal)
            .navigationBarTitle("User Profile", displayMode: .large)
            .onAppear(perform: {
                person = UserDefaults.standard.getStructValue(forKey: "user")!
                userInputone = getName()
                userInputtwo = getTherapistName()
                userInputthree = getPhoneNumber()
                showSetup = getHasCheckIns()
                showVibrate = getVibrate()
                showRing = getRing()
                showLight = getLight()
                checkInAmount = getAlertFrequency()
                userCheckInOne   = getAlertTime1()
                userCheckInTwo   = getAlertTime2()
                userCheckInThree = getAlertTime3()
                userCheckInFour  = getAlertTime4()
                userCheckInFive  = getAlertTime5()
                showMusic = getMusic()
                showBreathing = getBreathing()
                showMindfulness = getMindfulness()
                showMovement = getMovement()
                showSelfTalk = getSelfTalk()
                showSensory = getSensory()
                showJournaling = getJournaling()
            })
        }
    }
    func writeToUserDefaults() {
        UserDefaults.standard.setStructValue(value: person, forKey: "user")
        UserDefaults.standard.synchronize()
    }
    func setUserName(userName: String) {
        person.userName = userName
        writeToUserDefaults()
    }
    func setName(name: String) {
        // "Last, First Name"
        let array = name.components(separatedBy: ", ")
        person.firstName = array[1]
        person.lastName = array[0]
        writeToUserDefaults()
    }
    func setFirstName(firstName: String) {
        person.firstName = firstName
        writeToUserDefaults()
    }
    func setLastName(lastName: String) {
        person.lastName = lastName
        writeToUserDefaults()
    }
    func setVibrate(vibrate: Bool) {
        person.vibrate = vibrate
        writeToUserDefaults()
    }
    func setRing(ring: Bool) {
        person.ring = ring
        writeToUserDefaults()
    }
    func setLight(light: Bool) {
        person.light = light
        writeToUserDefaults()
    }
    func setHasCheckIns(hasCheckIns: Bool) {
        person.hasCheckIns = hasCheckIns
        writeToUserDefaults()
    }
    func setPhoneNumber(phoneNumber: String) {
        person.phoneNumber = phoneNumber
        writeToUserDefaults()
    }
    func setHasTherapist(hasTherapist: Bool) {
        person.hasTherapist = hasTherapist
        writeToUserDefaults()
    }
    func setTherapistName(name: String) {
        // "Last, First Name"
        let array = name.components(separatedBy: ", ")
        person.therapistFirstName = array[1]
        person.therapistLastName = array[0]
        writeToUserDefaults()
    }
    func setTherapistFirstName(therapistFirstName: String) {
        person.therapistFirstName = therapistFirstName
        writeToUserDefaults()
    }
    func setTherapistLastName(therapistLastName: String) {
        person.therapistLastName = therapistLastName
        writeToUserDefaults()
    }
    func setTherapistPhoneNumber(therapistPhoneNumber: String) {
        person.therapistPhoneNumber = therapistPhoneNumber
        writeToUserDefaults()
    }
    func setAlertFrequency(alertFrequency: Int) {
        person.alertFrequency = alertFrequency
        writeToUserDefaults()
    }
    func setAlertTime1(alertTime1: String) {
        person.alertTime1 = alertTime1
        writeToUserDefaults()
    }
    func setAlertTime2(alertTime2: String) {
        person.alertTime2 = alertTime2
        writeToUserDefaults()
    }
    func setAlertTime3(alertTime3: String) {
        person.alertTime3 = alertTime3
        writeToUserDefaults()
    }
    func setAlertTime4(alertTime4: String) {
        person.alertTime4 = alertTime4
        writeToUserDefaults()
    }
    func setAlertTime5(alertTime5: String) {
        person.alertTime5 = alertTime5
        writeToUserDefaults()
    }
    func setMusic(music: Bool) {
        person.music = music
        writeToUserDefaults()
    }
    func setMusicLow(musicLow: String) {
        person.musicLow = musicLow
        writeToUserDefaults()
    }
    func setMusicModerate(musicModerate: String) {
        person.musicModerate = musicModerate
        writeToUserDefaults()
    }
    func setMusicHigh(musicHigh: String) {
        person.musicHigh = musicHigh
        writeToUserDefaults()
    }
    func setBreathing(breathing: Bool) {
        person.breathing = breathing
        writeToUserDefaults()
    }
    func setBreathingLow(breathingLow: String) {
        person.breathingLow = breathingLow
        writeToUserDefaults()
    }
    func setBreathingModerate(breathingModerate: String) {
        person.breathingModerate = breathingModerate
        writeToUserDefaults()
    }
    func setBreathingHigh(breathingHigh: String) {
        person.breathingHigh = breathingHigh
        writeToUserDefaults()
    }
    func setMindfulness(mindfulness: Bool) {
        person.mindfulness = mindfulness
        writeToUserDefaults()
    }
    func setMindfulnessLow(mindfulnessLow: String) {
        person.mindfulnessLow = mindfulnessLow
        writeToUserDefaults()
    }
    func setMindfulnessModerate(mindfulnessModerate: String) {
        person.mindfulnessModerate = mindfulnessModerate
        writeToUserDefaults()
    }
    func setMindfulnessHigh(mindfulnessHigh: String) {
        person.mindfulnessHigh = mindfulnessHigh
        writeToUserDefaults()
    }
    func setMovement(movement: Bool) {
        person.movement = movement
        writeToUserDefaults()
    }
    func setMovementLow(movementLow: String) {
        person.movementLow = movementLow
        writeToUserDefaults()
    }
    func setMovementModerate(movementModerate: String) {
        person.movementModerate = movementModerate
        writeToUserDefaults()
    }
    func setMovementHigh(movementHigh: String) {
        person.movementHigh = movementHigh
        writeToUserDefaults()
    }
    func setSelfTalk(selfTalk: Bool) {
        person.selfTalk = selfTalk
        writeToUserDefaults()
    }
    func setSelfTalkLow(selfTalkLow: String) {
        person.selfTalkLow = selfTalkLow
        writeToUserDefaults()
    }
    func setSelfTalkModerate(selfTalkModerate: String) {
        person.selfTalkModerate = selfTalkModerate
        writeToUserDefaults()
    }
    func setSelfTalkHigh(selfTalkHigh: String) {
        person.selfTalkHigh = selfTalkHigh
        writeToUserDefaults()
    }
    func setSensory(sensory: Bool) {
        person.sensory = sensory
        writeToUserDefaults()
    }
    func setSensoryLow(sensoryLow: String) {
        person.sensoryLow = sensoryLow
        writeToUserDefaults()
    }
    func setSensoryModerate(sensoryModerate: String) {
        person.sensoryModerate = sensoryModerate
        writeToUserDefaults()
    }
    func setSensoryHigh(sensoryHigh: String) {
        person.sensoryHigh = sensoryHigh
        writeToUserDefaults()
    }
    func setJournaling(journaling: Bool) {
        person.journaling = journaling
        writeToUserDefaults()
    }
    func setJournalingLow(journalingLow: String) {
        person.journalingLow = journalingLow
        writeToUserDefaults()
    }
    func setJournalingModerate(journalingModerate: String) {
        person.journalingModerate = journalingModerate
        writeToUserDefaults()
    }
    func setJournalingHigh(journalingHigh: String) {
        person.journalingHigh = journalingHigh
        writeToUserDefaults()
    }
    func getUserName() -> String {
        return person.userName
    }
    func getFirstName() -> String {
        return person.firstName
    }
    func getLastName() -> String {
        return person.lastName
    }
    func getName() -> String {
        // "Last, First Name"
        return person.lastName + ", " + person.firstName
    }
    func getVibrate() -> Bool {
        return person.vibrate
    }
    func getRing() -> Bool {
        return person.ring
    }
    func getLight() -> Bool {
        return person.light
    }
    func getHasCheckIns() -> Bool {
        return person.hasCheckIns
    }
    func getPhoneNumber() -> String {
        return person.phoneNumber
    }
    func getHasTherapist() -> String {
        return String(person.hasTherapist)
    }
    func getTherapistName() -> String {
        return person.therapistLastName + ", " + person.therapistFirstName
    }
    func getTherapistFirstName() -> String {
        return person.therapistFirstName
    }
    func getTherapistLastName() -> String {
        return person.therapistLastName
    }
    func getAlertFrequency() -> Int {
        return person.alertFrequency
    }
    func getAlertTime1() -> String {
        return person.alertTime1
    }
    func getAlertTime2() -> String {
        return person.alertTime2
    }
    func getAlertTime3() -> String {
        return person.alertTime3
    }
    func getAlertTime4() -> String {
        return person.alertTime4
    }
    func getAlertTime5() -> String {
        return person.alertTime5
    }
    func getMusic() -> Bool {
        return person.music
    }
    func getMusicLow() -> String {
        return person.musicLow
    }
    func getMusicModerate() -> String {
        return person.musicModerate
    }
    func getMusicHigh() -> String {
        return person.musicHigh
    }
    func getBreathing() -> Bool {
        return person.breathing
    }
    func getBreathingLow() -> String {
        return person.breathingLow
    }
    func getBreathingModerate() -> String {
        return person.breathingModerate
    }
    func getBreathingHigh() -> String {
        return person.breathingHigh
    }
    func getMindfulness() -> Bool {
        return person.mindfulness
    }
    func getMindfulnessLow() -> String {
        return person.mindfulnessLow
    }
    func getMindfulnessModerate() -> String {
        return person.mindfulnessModerate
    }
    func getMindfulnessHigh() -> String {
        return person.mindfulnessHigh
    }
    func getMovement() -> Bool {
        return person.movement
    }
    func getMovementLow() -> String {
        return person.movementLow
    }
    func getMovementModerate() -> String {
        return person.movementModerate
    }
    func getMovementHigh() -> String {
        return person.movementHigh
    }
    func getSelfTalk() -> Bool {
        return person.selfTalk
    }
    func getSelfTalkLow() -> String {
        return person.selfTalkLow
    }
    func getSelfTalkModerate() -> String {
        return person.selfTalkModerate
    }
    func getSelfTalkHigh() -> String {
        return person.selfTalkHigh
    }
    func getSensory() -> Bool {
        return person.sensory
    }
    func getSensoryLow() -> String {
        return person.sensoryLow
    }
    func getSensoryModerate() -> String {
        return person.sensoryModerate
    }
    func getSensoryHigh() -> String {
        return person.sensoryHigh
    }
    func getJournaling() -> Bool {
        return person.journaling
    }
    func getJournalingLow() -> String {
        return person.journalingLow
    }
    func getJournalingModerate() -> String {
        return person.journalingModerate
    }
    func getJournalingHigh() -> String {
        return person.journalingHigh
    }
}




struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}



