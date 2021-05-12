//
//  HistoryView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/24/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct CheckInData : Hashable {
    var id = UUID()
    var feelings : [String] = ["Happy","Energized","Pleased", "Thoughtful",
                               "Worried", "Fearful","Sad", "Restless","Panicky","Angry"]
    var daysOfWeek : [String] = ["Mon", "Tues","Wed",
                                 "Thurs","Fri","Sat","Sun"]
    var times : [Int] = [8, 12, 14, 20]
    var checkInData : [CheckInDatum] = []
    
    mutating func setupData() {
        checkInData = []
        for i in 1..<500 {
            let m = Int.random(in: 1..<times.count)
            for n in 0..<m {
                let j = Int.random(in: 1..<4)
                var f : [String] = []
                for _ in 1...j {
                    f.append(feelings[Int.random(in: 0..<feelings.count)])
                }
                checkInData.append(CheckInDatum(pressed: f, day: i, dayOfWeek: daysOfWeek[i%7], time: times[n]))
            }
        }
    }
}

struct CheckInDatum : Hashable, Codable {
    var id = UUID()
    var pressed : [String]
    var day : Int
    var dayOfWeek : String
    var time : Int
    var stringData = ""
    var timeOfDay = ""
    var military : [Int : String] = [0:"12am", 1:"1am", 2:"2am", 3:"3am", 4:"4am", 5: "5am", 6: "6am",
                                     7:"7am", 8:"8am", 9:"9am", 10:"10am", 11: "11am", 12: "12pm",
                                     13:"1pm", 14:"2pm", 15:"3pm", 16:"4pm", 17: "5pm", 18: "6pm",
                                     19:"7pm", 20:"8pm", 21:"9pm", 22:"10pm", 23: "11pm", 24: "12am"]
    
    /*   func printData() {
     if pressed.count > 3{
     print("error")
     } else if pressed.count > 2 {
     print("Day: \(day) \(dayOfWeek) \(timeOfDay) \(pressed[0]), \(pressed[1]), \(pressed[2])")
     } else if pressed.count > 1 {
     print("Day: \(day) \(dayOfWeek) \(timeOfDay) \(pressed[0]), \(pressed[1])")
     } else {
     print("Day: \(day) \(dayOfWeek) \(timeOfDay) \(pressed[0])")
     }
     }
     */
    
    init(pressed : [String], day: Int, dayOfWeek : String, time : Int) {
        self.pressed = pressed
        self.day = day
        self.dayOfWeek = dayOfWeek
        self.time = time
        timeOfDay = military[time]!
        if pressed.count > 3{
            stringData = "error"
        } else if pressed.count > 2 {
            stringData = "\(dayOfWeek), \(timeOfDay): \(pressed[0]), \(pressed[1]), \(pressed[2])"
        } else if pressed.count > 1 {
            stringData = "\(dayOfWeek), \(timeOfDay): \(pressed[0]), \(pressed[1])"
        } else {
            stringData = "\(dayOfWeek), \(timeOfDay): \(pressed[0])"
        }
    }
}


struct HistoryView: View {
    @State var data = CheckInData()
    @State var results : [CheckInDatum] = []
    @State var e = true
    @State var dayDouble = 0.0
    var h = CGFloat(160)
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Spacer()
                HStack {
                    Spacer()
                    Text("Day # ")
                        .font(.title)
                        .foregroundColor(.green)
                        .fontWeight(.bold)
                    Spacer()
                    Text(e ? "" : String(Int(dayDouble)))
                        .font(.title)
                        .foregroundColor(.green)
                        .fontWeight(.bold)
                    Spacer()
                }
                ForEach(results, id: \.self) { result in
                    Text(result.stringData)
                        .foregroundColor(.green)
                        .fontWeight(.bold)
                        .padding()
                }
                Spacer()
                Group {
                    Text("Choose a day to review....")
                        .font(.title2)
                        .foregroundColor(.green)
                        .fontWeight(.bold)
                    HStack {
                        Text("1")
                        Spacer()
                        Text("500")
                    }.padding()
                    .foregroundColor(.blue)
                    Slider(value: $dayDouble, in: 1.0...500.0) { editing in
                        // print(editing)
                        e = editing
                        if !editing {
                            results = getDays()
                        }
                    }
                    HStack {
                        Text ("Day: " + String(Int(dayDouble)))
                            .foregroundColor(.green)
                    }
                }.padding()
                Spacer()
            }.padding()
            .navigationBarTitle("History", displayMode: .large)
            .onAppear(perform: {
                createData()
            })
        }
    }
    func getDays() -> [CheckInDatum] {
        var d : [CheckInDatum] = []
        for datum in data.checkInData {
            if datum.day==Int(dayDouble) {
                d.append(datum)
            }
        }
        return d
    }
    func createData() {
        data.setupData()
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
