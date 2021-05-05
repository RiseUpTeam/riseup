//
//  CheckInFeelings.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/29/21.
//

import SwiftUI

struct CheckInFeelings: View {
    @State var count = 0
    @State var pressed : [String:Bool] = ["Worried":false, "Fearful":false,
                                          "Sad":false, "Restless":false,
                                          "Panicky":false, "Angry":false]
    let radius = CGFloat(15)
    var body: some View {
        VStack {
            Group {
                Text("How are you feeling?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                Text("Please click all that apply.")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding()
            }
            HStack {
                Button(action: {
                    doPressed(b: "Worried")
                },
                label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: radius)
                            .frame(width: 150, height: 55)
                            .foregroundColor(pressed["Worried"]! ? Color("Light Green") : .green)
                        Text("Worried")
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                    }
                })
                
                Button(action: {
                    doPressed(b: "Fearful")
                },
                label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: radius)
                            .frame(width: 150, height: 55)
                            .foregroundColor(pressed["Fearful"]! ? Color("Light Green") : .green)
                        Text("Fearful")
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                    }
                })
            }
            HStack {
                Button(action: {
                    doPressed(b: "Sad")
                },
                label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: radius)
                            .frame(width: 150, height: 55)
                            .foregroundColor(pressed["Sad"]! ? Color("Light Green") : .green)
                        Text("Sad")
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                    }
                })
                
                Button(action: {
                    doPressed(b: "Restless")
                },
                label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: radius)
                            .frame(width: 150, height: 55)
                            .foregroundColor(pressed["Restless"]! ? Color("Light Green") : .green)
                        Text("Restless")
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                    }
                })
            }
            HStack {
                Button(action: {
                    doPressed(b: "Panicky")
                },
                label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: radius)
                            .frame(width: 150, height: 55)
                            .foregroundColor(pressed["Panicky"]! ? Color("Light Green") : .green)
                        Text("Panicky")
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                    }
                })
                
                Button(action: {
                    doPressed(b: "Angry")
                },
                label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: radius)
                            .frame(width: 150, height: 55)
                            .foregroundColor(pressed["Angry"]! ? Color("Light Green") : .green)
                        Text("Angry")
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                    }
                })
            }
            NavigationLink(destination:CheckInSymptomsView(c:count)){
                ZStack {
                    RoundedRectangle(cornerRadius: radius)
                        .frame(width: 100, height: 50)
                        .foregroundColor(.blue)
                    Text("Submit") // will link to Symptom page
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                }.padding(.top, 30)
            }
        }.navigationBarHidden(true)
    }
    
    func doPressed(b: String) {
        if pressed[b]! {
            pressed[b] = false
            count -= 1
        } else {
            pressed[b] = true
            count += 1
        }
        
    }
}

struct CheckInFeelings_Previews: PreviewProvider {
    static var previews: some View {
        CheckInFeelings()
    }
}
