//
//  CheckInFeelings.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/29/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct CheckInFeelings: View {
    @Environment(\.presentationMode) var presentationMode
    @State var count = 0
    @State var pressed : [String:Bool] = ["Happy":false, "Energized":false,
                                          "Pleased":false, "Thoughtful":false,
                                          "Worried":false, "Fearful":false,
                                          "Sad":false, "Restless":false,
                                          "Panicky":false, "Angry":false]
    let radius = CGFloat(15)
    var body: some View {
        //        NavigationView {
        VStack {
            Group {
                Image("Rise Up")
                    .resizable().scaledToFit()
                    .padding(0)
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
            Group {
                HStack {
                    Button(action: {
                        doPressed(b: "Happy")
                    },
                    label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: radius)
                                .frame(width: 150, height: 55)
                                .foregroundColor(pressed["Happy"]! ? Color("Light Green") : .green)
                            Text("Happy")
                                .foregroundColor(.blue)
                                .fontWeight(.bold)
                        }
                    })
                    
                    Button(action: {
                        doPressed(b: "Energized")
                    },
                    label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: radius)
                                .frame(width: 150, height: 55)
                                .foregroundColor(pressed["Energized"]! ? Color("Light Green") : .green)
                            Text("Energized")
                                .foregroundColor(.blue)
                                .fontWeight(.bold)
                        }
                    })
                }
                HStack {
                    Button(action: {
                        doPressed(b: "Pleased")
                    },
                    label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: radius)
                                .frame(width: 150, height: 55)
                                .foregroundColor(pressed["Pleased"]! ? Color("Light Green") : .green)
                            Text("Pleased")
                                .foregroundColor(.blue)
                                .fontWeight(.bold)
                        }
                    })
                    
                    Button(action: {
                        doPressed(b: "Thoughtful")
                    },
                    label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: radius)
                                .frame(width: 150, height: 55)
                                .foregroundColor(pressed["Thoughtful"]! ? Color("Light Green") : .green)
                            Text("Thoughtful")
                                .foregroundColor(.blue)
                                .fontWeight(.bold)
                        }
                    })
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
            }
            Spacer()
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
            Spacer()
        }//.navigationBarHidden(true)
        // }
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
