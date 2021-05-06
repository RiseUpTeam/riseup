//
//  ActivitiesView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/24/21.
//

import SwiftUI

struct ActivitiesView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("Choose something to help you calm yourself.")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing],20)
                Group {
                    Group {
                        Text("Intervention Tiers based on Symptom Intensity")
                            .font(.system(size: 15))
                            .padding(.top)
                            .padding([.bottom],5)
                        HStack {
                            Text("Low").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Low"))
                            Text("Medium").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("High").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Music")
                            .font(.title)
                            .padding(.bottom,10)
                        HStack {
                            Text("Weightless").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Low"))
                            Text("Watermark").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("Waves And Water").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Breathing")
                            .font(.title)
                            .padding(.bottom,10)
                        HStack {
                            NavigationLink(destination: BreathingView()){
                                Text("Slow").padding([.leading, .trailing],30)
                                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                    .background(Color("Gray Low"))
                            }
                            Text("Focused Breath").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("Deep").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color.gray)
                        }.padding(0)
                        Spacer()
                    }
                    Group {
                        Text("Mindfulness")
                            .font(.title)
                            .padding(.bottom,10)
                        HStack {
                            Text("Mindful Release").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Low"))
                            Text("Releasing").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("Let Go").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Movement")
                            .font(.title)
                            .padding(.bottom,10)
                        HStack {
                            Text("Grounding").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Low"))
                            Text("Walk").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("Muscle Relax").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Self Talk")
                            .font(.title)
                            .padding(.bottom,10)
                        HStack {
                            Text("Mantra").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Low"))
                            Text("Reframe").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("Unravel Thoughts").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Sensory")
                            .font(.title)
                            .padding(.bottom,10)
                        HStack {
                            Text("Music Sketch").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Low"))
                            Text("Temperature Change").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("Five Things").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Journaling")
                            .font(.title)
                            .padding(.bottom,10)
                        HStack {
                            Text("What Am I Feeling?").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Low"))
                            Text("Know Your Why").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("Positive Thoughts").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                }
                Spacer()
            }.navigationBarHidden(true)
        }
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}


