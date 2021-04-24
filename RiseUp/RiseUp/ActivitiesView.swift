//
//  ActivitiesView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/24/21.
//

import SwiftUI

struct ActivitiesView: View {
    var body: some View {
        VStack(alignment: .center) {
            Group {
                Text("Feeling Anxious?")
                    .font(.largeTitle)
                    .padding(.top)
                Text("Choose something to help you calm yourself.")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing],20)
            }.padding()
            Group {
                Group {
                    Text("Music")
                        .font(.title)
                        .padding(.bottom,10)
                    HStack {
                        Text("Label 1").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .background(Color.gray)
                        Text("Label 2").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("Label 3").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                }
                Group {
                    NavigationLink(destination: BreathingView()){
                        Text("Breathing")
                            .font(.title)
                            .padding(.bottom,10)
                        }
                    HStack {
                        Text("Label 1").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .background(Color.gray)
                        Text("Label 2").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("Label 3").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
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
                            .background(Color.gray)
                        Text("Label 2").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("Label 3").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
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
                            .background(Color.gray)
                        Text("Label 2").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("Label 3").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                }
                Group {
                    Text("Journaling")
                        .font(.title)
                        .padding(.bottom,10)
                    HStack {
                        Text("Label 1").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .background(Color.gray)
                        Text("Label 2").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("Label 3").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
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
                            .background(Color.gray)
                        Text("Label 2").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("Label 3").padding([.leading, .trailing],30)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                }
            }
            Spacer()
            Group {
                Spacer()
                HStack(alignment: .center) {
                    NavigationLink(destination: HomeView()) {
                        VStack(alignment: .center){
                            Image(systemName: "house")
                                .font(.system(size:30))
                            Text("Home")
                                .font(.caption)
                        }.padding([.leading, .trailing],25)
                    }
                    // NavigationLink(destination: ActivitiesView()) {
                    VStack(alignment: .center){
                        Image(systemName: "text.book.closed.fill")
                            .font(.system(size:30))
                        Text("Activities")
                            .font(.caption)
                    }.padding([.leading, .trailing],25)
                    .foregroundColor(.green)
                    //}
                    NavigationLink(destination: ProfileView()) {
                        VStack(alignment: .center){
                            Image(systemName: "person.fill")
                                .font(.system(size:37))
                            Text("Profile")
                                .font(.caption)
                        }.padding([.leading, .trailing],25)
                    }
                    NavigationLink(destination: HistoryView()) {
                        VStack(alignment: .center){
                            Image(systemName: "chart.bar.xaxis")
                                .font(.system(size:37))
                            Text("History")
                                .font(.caption)
                        }.padding([.leading, .trailing],25)
                    }
                }
            }
        }        .navigationBarHidden(true)
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
