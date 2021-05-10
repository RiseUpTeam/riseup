//
//  ActivitiesView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/24/21.
//

import SwiftUI

struct ActivitiesView: View {
    var w = CGFloat(110)
    var h = CGFloat(30)
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center) {
                    Text("Choose something to help you calm yourself.")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .trailing],20)
                    Group {
                        Group {
                            Text("Intervention tiers based on intensity")
                                .font(.system(size: 15))
                                .padding(.top)
                                .padding([.bottom],5)
                            HStack {
                                Text("Low")
                                    .padding([.leading, .trailing])
                                    .frame(width: w, height: h)
                                    .border(Color.black, width: 1)
                                    .background(Color("Gray Low"))
                                Text("Medium")
                                    .padding([.leading, .trailing])
                                    .frame(width: w, height: h)
                                    .border(Color.black, width: 1)
                                    .background(Color("Gray Medium"))
                                Text("High")
                                    .padding([.leading, .trailing])
                                    .frame(width: w, height: h)
                                    .border(Color.black, width: 1)
                                    .background(Color.gray)
                            }
                            Spacer()
                        }
                        Group {
                            Text("Music")
                                .font(.title2)
                            //    .padding(.bottom)
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=j3X7vhvqi_E")!) {
                                Text("Weightless")
                                    .padding([.leading, .trailing],30)
                                    .frame(width: 2*w, height: h)
                                    .border(Color.black, width: 1)
                                    .background(Color("Gray Low"))
                            }
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=bPCdsa7hS7M")!) {
                                Text("Watermark")
                                    .padding([.leading, .trailing],30)
                                    .frame(width: 2*w, height: h)
                                    .border(Color.black, width: 1)
                                    .background(Color("Gray Medium"))
                            }
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=E7qRkUYu580")!) {
                                Text("Waves and Water")
                                    .padding([.leading, .trailing],30)
                                    .frame(width: 2*w, height: h)
                                    .border(Color.black, width: 1)
                                    .background(Color.gray)
                            }
                        }
                        Spacer()
                    }
                    Group {
                        Text("Breathing")
                            .font(.title2)
                        
                        NavigationLink(destination: BreathingView()){
                            Text("Slow")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color("Gray Low"))
                        }
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=VD8cA33vPJI")!) {
                            Text("Focused Breath")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color("Gray Medium"))
                        }
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=QcCdiGBd4ok")!) {
                            Text("Deep")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Mindfulness")
                            .font(.title2)
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=QcCdiGBd4ok")!) {
                            Text("Mindful Release")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color("Gray Low"))
                        }
                        Link(destination:URL(string:"https://insighttimer.com/katejames/guided-meditations/releasing-anxiety")!) {
                            Text("Releasing Anxiety")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color("Gray Medium"))
                        }
                        Link(destination:URL(string:"https://insighttimer.com/kennethsoares/guided-meditations/let-go-of-fear-worries-and-anxiety")!) {
                            Text("Let Go")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Movement")
                            .font(.title2)
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=sTIoYW1SES0")!) {
                            Text("Grounding")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color("Gray Low"))
                        }
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=HRuqe26F8SU")!) {
                            Text("Walk")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color("Gray Medium"))
                        }
                        Link(destination:URL(string:"https://insighttimer.com/julieaelbrecht/guided-meditations/progressive-muscle-relaxation-e")!) {
                            Text("Muscle Relax")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Self Talk")
                            .font(.title2)
                        Link(destination:URL(string:"https://insighttimer.com/michellekuei/guided-meditations/mantra-meditation-self-affirmation")!) {
                            Text("Mantra")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color("Gray Low"))
                        }
                        Link(destination:URL(string:"https://insighttimer.com/alexiszahner/guided-meditations/overcome-unhelpful-thinking-patterns")!) {
                            Text("Reframe")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color("Gray Medium"))
                        }
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=-gd7KZBniWs")!) {
                            Text("Unravel")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Sensory")
                            .font(.title2)
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=CgnXYxlglu4")!) {
                            Text("Music Scribble")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color("Gray Low"))
                        }
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=3mDJx17CR-s")!) {
                            Text("Temperature")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color("Gray Medium"))
                        }
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=30VMIEmA114")!) {
                            Text("5 Things")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Journaling")
                            .font(.title2)
                        NavigationLink(destination: WhatAmIFeelingView()){
                            Text("What Am I Feeling")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color("Gray Low"))
                        }
                        NavigationLink(destination: KnowYourWhyView()){
                            Text("Know Your Why")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color("Gray Medium"))
                        }
                        NavigationLink(destination: PositiveThoughtsView()){
                            Text("Positive Thoughts")
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                                .border(Color.black, width: 1)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Spacer()
                }.padding(.horizontal)
            }
            .accentColor(.blue)
            .navigationBarHidden(true)
        }
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}

