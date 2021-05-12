//
//  ActivitiesView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/24/21.
//

import SwiftUI

struct ActivitiesView: View {
    var w = CGFloat(130)
    var h = CGFloat(48)
    var y = Color("Gold")
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center) {
            /*        Text("Choose something to help you calm yourself.")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.green)
                        .padding(20)
             */       Group {
                        Group {
                            Text("Intervention tiers based on intensity")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.top)
                                .padding([.bottom],5)
                            HStack {
                                Text("Low")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding([.leading, .trailing])
                                    .frame(width: w*9/10, height: h)
                                  //  .border(Color.black, width: 1)
                                    .background(Color.green)
                                Text("Medium")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding([.leading, .trailing])
                                    .frame(width: w*9/10, height: h)
                                //    .border(Color.black, width: 1)
                                    .background(y)
                                Text("High")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding([.leading, .trailing])
                                    .frame(width: w*9/10, height: h)
                                 //   .border(Color.black, width: 1)
                                    .background(Color.blue)
                            }
                            Spacer()
                        }
                        Group {
                            Text("Music")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.top)
                                .padding(.bottom,1)
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=j3X7vhvqi_E")!) {
                                Text("Weightless")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .padding([.leading, .trailing],30)
                                    .frame(width: 2*w, height: h)
                               //     .border(Color.black, width: 1)
                                    .background(Color.green)
                                    .padding(.bottom,1)
                            }
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=bPCdsa7hS7M")!) {
                                Text("Watermark")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .padding([.leading, .trailing],30)
                                    .frame(width: 2*w, height: h)
                               //     .border(Color.black, width: 1)
                                    .background(y)
                                    .padding(.bottom,1)
                            }
                            Link(destination:URL(string:"https://www.youtube.com/watch?v=E7qRkUYu580")!) {
                                Text("Waves and Water")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .padding([.leading, .trailing],30)
                                    .frame(width: 2*w, height: h)
                                //    .border(Color.black, width: 1)
                                    .background(Color.blue)
                                    .padding(.bottom,1)
                            }
                        }
                        Spacer()
                    }
                    Group {
                        Text("Breathing")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                            .padding(.bottom,1)
                        NavigationLink(destination: BreathingView()){
                            Text("Slow")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                         //       .border(Color.black, width: 1)
                                .background(Color.green)
                                .padding(.bottom,1)
                        }
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=VD8cA33vPJI")!) {
                            Text("Focused Breath")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                         //       .border(Color.black, width: 1)
                                .background(y)
                                .padding(.bottom,1)
                        }
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=QcCdiGBd4ok")!) {
                            Text("Deep")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                    //            .border(Color.black, width: 1)
                                .background(Color.blue)
                                .padding(.bottom,1)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Mindfulness")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                            .padding(.bottom,1)
                       Link(destination:URL(string:"https://www.youtube.com/watch?v=QcCdiGBd4ok")!) {
                            Text("Mindful Release")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                        //        .border(Color.black, width: 1)
                                .background(Color.green)
                                .padding(.bottom,1)
                        }
                        Link(destination:URL(string:"https://insighttimer.com/katejames/guided-meditations/releasing-anxiety")!) {
                            Text("Releasing Anxiety")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                        //        .border(Color.black, width: 1)
                                .background(y)
                                .padding(.bottom,1)
                        }
                        Link(destination:URL(string:"https://insighttimer.com/kennethsoares/guided-meditations/let-go-of-fear-worries-and-anxiety")!) {
                            Text("Let Go")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                      //          .border(Color.black, width: 1)
                                .background(Color.blue)
                                .padding(.bottom,1)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Movement")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                            .padding(.bottom,1)
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=sTIoYW1SES0")!) {
                            Text("Grounding")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                         //       .border(Color.black, width: 1)
                                .background(Color.green)
                                .padding(.bottom,1)
                        }
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=HRuqe26F8SU")!) {
                            Text("Walk")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                        //        .border(Color.black, width: 1)
                                .background(y)
                                .padding(.bottom,1)
                        }
                        Link(destination:URL(string:"https://insighttimer.com/julieaelbrecht/guided-meditations/progressive-muscle-relaxation-e")!) {
                            Text("Muscle Relax")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                         //       .border(Color.black, width: 1)
                                .background(Color.blue)
                                .padding(.bottom,1)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Self Talk")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                            .padding(.bottom,1)
                        Link(destination:URL(string:"https://insighttimer.com/michellekuei/guided-meditations/mantra-meditation-self-affirmation")!) {
                            Text("Mantra")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                       //         .border(Color.black, width: 1)
                                .background(Color.green)
                                .padding(.bottom,1)
                        }
                        Link(destination:URL(string:"https://insighttimer.com/alexiszahner/guided-meditations/overcome-unhelpful-thinking-patterns")!) {
                            Text("Reframe")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                        //        .border(Color.black, width: 1)
                                .background(y)
                                .padding(.bottom,1)
                        }
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=-gd7KZBniWs")!) {
                            Text("Unravel")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                     //           .border(Color.black, width: 1)
                                .background(Color.blue)
                                .padding(.bottom,1)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Sensory")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                            .padding(.bottom,1)
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=CgnXYxlglu4")!) {
                            Text("Music Scribble")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                         //       .border(Color.black, width: 1)
                                .background(Color.green)
                                .padding(.bottom,1)
                        }
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=3mDJx17CR-s")!) {
                            Text("Temperature")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                          //      .border(Color.black, width: 1)
                                .background(y)
                                .padding(.bottom,1)
                        }
                        Link(destination:URL(string:"https://www.youtube.com/watch?v=30VMIEmA114")!) {
                            Text("5 Things")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                        //        .border(Color.black, width: 1)
                                .background(Color.blue)
                                .padding(.bottom,1)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Journaling")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                            .padding(.bottom,1)
                        NavigationLink(destination: WhatAmIFeelingView()){
                            Text("What Am I Feeling")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                           //     .border(Color.black, width: 1)
                                .background(Color.green)
                                .padding(.bottom,1)
                        }
                        NavigationLink(destination: KnowYourWhyView()){
                            Text("Know Your Why")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                            //    .border(Color.black, width: 1)
                                .background(y)
                                .padding(.bottom,1)
                        }
                        NavigationLink(destination: PositiveThoughtsView()){
                            Text("Positive Thoughts")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding([.leading, .trailing],30)
                                .frame(width: 2*w, height: h)
                          //      .border(Color.black, width: 1)
                                .background(Color.blue)
                                .padding(.bottom,1)
                        }
                        Spacer()
                    }
                    Spacer()
                }.padding(.horizontal)
            }.accentColor(.white)
            .navigationBarTitle("Activities", displayMode: .large)
            //.navigationBarHidden(true)
        }
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}

