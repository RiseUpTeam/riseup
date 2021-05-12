//
//  WhatAmIFeelingView.swift
//  RiseUp
//
//  Created by Rebecca Kornack 2 on 5/9/21.
//

import SwiftUI
import AppDevWithSwiftLibrary
import Foundation
import AVKit

struct WhatAmIFeelingView: View {
    
    @State var audioPlayer: AVAudioPlayer!
    let sound = "01 Tranquility.mp3"
    var body: some View {
        VStack {
            Text("Journal Prompt")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
                .frame(alignment: .top)
            GroupBox(
                label: Label("What Am I Feeling", systemImage: "square.and.pencil")
                    .foregroundColor(.purple)
                
                
            ) {
                Text("Imagine your anxiety as an object or a person. What does it look like? What does it sound like?")
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


struct WhatAmIFeelingView_Previews: PreviewProvider {
    static var previews: some View {
        WhatAmIFeelingView()
    }
}
