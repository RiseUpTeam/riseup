//
//  CheckInSymptomsView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/29/21.
//

import SwiftUI

struct CheckInSymptomsView : View {
    var c = 5
    @Environment(\.presentationMode) var presentationMode
    @State var checkCount = 0
    @State var level: Double = 0
    @State var isChecked : [String:Bool] = ["Worrying":false, "Sleeping": false, "Fatigue":false,
                                            "Sweating":false, "Breathing": false, "ChestPain":false,
                                            "Concentration":false, "Irritation": false, "Terror":false]
    let radius = CGFloat(15)
    var body: some View {
        VStack {
            Image("Rise Up")
                .resizable().scaledToFit()
                .padding(0)
            Text("What symptoms are you experiencing?")
                .font(.title)
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
            /*            Group {
             Text("You reported " + String(c) + " feelings")
             Text("You reported " + String(checkCount) + " symptoms")
             }
             */           List{
                HStack{
                    Text("Excessive Worrying")
                    Spacer()
                    Button(action: {
                        toggleAndCount(s: "Worrying")
                    }, label:  {
                        Image(systemName: isChecked["Worrying"]! ? "checkmark.square": "square")
                    })
                }
                HStack{
                    Text("Difficulty Sleeping")
                    Spacer()
                    Button(action: {
                        toggleAndCount(s: "Sleeping")
                    }, label:  {
                        Image(systemName: isChecked["Sleeping"]! ? "checkmark.square": "square")
                    })
                }
                HStack{
                    Text("Fatigue / Dizziness")
                    Spacer()
                    Button(action: {
                        toggleAndCount(s: "Fatigue")
                    }, label:  {
                        Image(systemName: isChecked["Fatigue"]! ? "checkmark.square": "square")
                    })
                }
                HStack{
                    Text("Sweating / Hot Flashes")
                    Spacer()
                    Button(action: {
                        toggleAndCount(s: "Sweating")
                    }, label:  {
                        Image(systemName: isChecked["Sweating"]! ? "checkmark.square": "square")
                    })
                }
                HStack{
                    Text("Shortness of Breath")
                    Spacer()
                    Button(action: {
                        toggleAndCount(s: "Breathing")
                    }, label:  {
                        Image(systemName: isChecked["Breathing"]! ? "checkmark.square": "square")
                    })
                }
                HStack{
                    Text("Chest Pain")
                    Spacer()
                    Button(action: {
                        toggleAndCount(s: "ChestPain")
                    }, label:  {
                        Image(systemName: isChecked["ChestPain"]! ? "checkmark.square": "square")
                    })
                }
                HStack{
                    Text("Concentration Issues")
                    Spacer()
                    Button(action: {
                        toggleAndCount(s: "Concentration")
                    }, label:  {
                        Image(systemName: isChecked["Concentration"]! ? "checkmark.square": "square")
                    })
                }
                HStack{
                    Text("General Irritation")
                    Spacer()
                    Button(action: {
                        toggleAndCount(s: "Irritation")
                    }, label:  {
                        Image(systemName: isChecked["Irritation"]! ? "checkmark.square": "square")
                    })
                }
                HStack{
                    Text("Feelings of Terror")
                    Spacer()
                    Button(action: {
                        toggleAndCount(s: "Terror")
                    }, label:  {
                        Image(systemName: isChecked["Terror"]! ? "checkmark.square": "square")
                    })
                }
             }.foregroundColor(.blue)
            Spacer()
            Group {
                Text("What level are the symptoms?")
                    .font(.body)
                    .foregroundColor(.green)
                HStack {
                    Text("0")
                    Spacer()
                    Text("10")
                }
                .foregroundColor(.blue)
                Slider(value: $level, in: 0.0...10.0)
                HStack {
                    Text ("Level: " + String(Int(level)))
                        .foregroundColor(.green)
                }
            }
            .padding(.horizontal)
            
            HStack {
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: radius)
                            .frame(width: 100, height: 50)
                            .foregroundColor(.blue)
                        Text("Cancel")
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                    }
                })
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: radius)
                            .frame(width: 100, height: 50)
                            .foregroundColor(.blue)
                        Text("Submit")
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                    }
                })
                Spacer()
            }.padding()
            
            
       /*     NavigationLink(destination: HeartRateView(feelings: c, symptoms: checkCount, level: Int(level))) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15.0)
                        .frame(width: 100, height: 50)
                        .foregroundColor(.blue)
                    Text("Submit")
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                }.padding()
            }*/
        }.navigationBarHidden(true)
        .padding()
    }
    
    func toggleAndCount(s:String) {
        if isChecked[s]! {
            checkCount -= 1
            isChecked[s] = false
        } else {
            checkCount += 1
            isChecked[s] = true
        }
    }
    
}

struct CheckInSymptomsView_Previews: PreviewProvider {
    static var previews: some View {
        CheckInSymptomsView(c: 3)
    }
}

