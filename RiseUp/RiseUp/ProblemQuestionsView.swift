//
//  ProblemQuestionsView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/9/21.
//

import SwiftUI
import AppDevWithSwiftLibrary
import Foundation
import AVKit

struct ProblemQuestionsView: View {
    @State var audioPlayer: AVAudioPlayer!
    let sound = "01 Tranquility.mp3"
    var body: some View {
        VStack {
            Text("Journal Prompt")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
            GroupBox(
                label: Label("Problem Questions", systemImage: "square.and.pencil")
                    .foregroundColor(.purple)
                
            ) {
                Text("Everyone has days when they feel off, but sometimes it’s difficult to determine why you feel that way. In many cases, there’s a specific problem or worry that you need to address.  What are you struggling with right now? Instead of brushing off your feelings, use journaling to dig deeper and explore your feelings. Is there anything you could do to eliminate one or more of these challenges?")
            }
        }.padding()
        ZStack {
                    VStack {
                        Text("Listen while you write.")
                        .font(.title)
                        HStack {
                            Spacer()
                            Button(action: {
                                self.audioPlayer.play()
                            }) {
                                Image(systemName: "play.circle.fill").resizable()
                                    .frame(width: 50, height: 50)
                                    .aspectRatio(contentMode: .fit)
                            }
                            Spacer()
                            Button(action: {
                                self.audioPlayer.pause()
                            }) {
                                Image(systemName: "pause.circle.fill").resizable()
                                    .frame(width: 50, height: 50)
                                    .aspectRatio(contentMode: .fit)
                            }
                            Spacer()
                        }
                    }
                }
                .onAppear {
                    let sound = Bundle.main.path(forResource: "01 Tranquility", ofType: "mp3")
                    self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                }; Spacer()
        }
    }
    


struct ProblemQuestions_Previews: PreviewProvider {
    static var previews: some View {
        ProblemQuestionsView()
    }
}

