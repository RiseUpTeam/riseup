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
                Group {
                    Text("Feeling Anxious?")
                        .font(.largeTitle)
                        .padding()
                    Text("Choose something to help you calm yourself.")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .trailing],20)
                }
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
                            Text("Relaxing").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Low"))
                            Text("Nature Sounds").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("Quiet Storm").padding([.leading, .trailing],30)
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
                            Text("Four Square").padding([.leading, .trailing],30)
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
                            Text("Label 1").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Low"))
                            Text("Label 2").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("Label 3").padding([.leading, .trailing],30)
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
                            Text("Label 1").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Low"))
                            Text("Label 2").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("Label 3").padding([.leading, .trailing],30)
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
                            Text("Label 1").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Low"))
                            Text("Label 2").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("Label 3").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color.gray)
                        }
                        Spacer()
                    }
                    Group {
                        Text("Video")
                            .font(.title)
                            .padding(.bottom,10)
                        HStack {
                            Text("Label 1").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Low"))
                            Text("Label 2").padding([.leading, .trailing],30)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(Color("Gray Medium"))
                            Text("Label 3").padding([.leading, .trailing],30)
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

