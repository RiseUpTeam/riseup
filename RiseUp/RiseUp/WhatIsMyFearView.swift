//
//  WhatIsMyFearView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/9/21.
//

import SwiftUI
import AppDevWithSwiftLibrary
import Foundation
import AVKit

struct WhatIsMyFearView: View {
    @State var audioPlayer: AVAudioPlayer!
    let sound = "01 Tranquility.mp3"
    var body: some View {
        VStack {
            Text("Journal Prompt")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
            GroupBox(
                label: Label("What Is My Fear?", systemImage: "square.and.pencil")
                    .foregroundColor(.purple)
                
            ) {
                Text("Write about something you would love to do if you weren’t so afraid to do it.  Then, examine how these fears are holding you back—and if there are any potential ways you could overcome them.")
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
    


struct WhatIsMyFearView_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsMyFearView()
    }
}

