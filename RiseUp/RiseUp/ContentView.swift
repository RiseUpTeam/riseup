//
//  ContentView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/18/21.
//

import SwiftUI

struct Name : Hashable {
    var id = UUID()
    var salutation = ""
    var firstName : String
    var lastName : String
}

struct Account: Hashable {
    var id = UUID()
    var name : Name
    var images : [String:String] = ["":""]
}

var accounts : [Account] = []

func loadData() {
    accounts.append(Account(name: Name(firstName: "Mike", lastName: "Rodgers")))
    accounts.append(Account(name: Name(firstName: "Channice", lastName: "Tolbert")))
    accounts.append(Account(name: Name(firstName: "Rebecca", lastName: "Kornack")))
    accounts.append(Account(name: Name(firstName: "Kevin", lastName: "McQuown")))
    for index in 0..<accounts.count {
        accounts[index].images["colors"]="autumn-goodman-vTL_qy03D1I-unsplash"
        accounts[index].images["vistas"]="noah-silliman--UUGr3txNuc-unsplash"
        accounts[index].images["people"]="joel-mott-O9Ogddfvl-U-unsplash"
        accounts[index].images["meals"]="jed-owen-q6Y8Xr3SoQA-unsplash"
    }
}


struct PictureView: View {
    var image : String
    var body: some View {
        Image(loadImage(key: image))
            .resizable().scaledToFit()
    }
}

struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct StartApp: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Choose a picture to view....")
                HStack{
                    NavigationLink(destination: PictureView(image: "people")) {
                        Image(loadImage(key: "people"))
                            .renderingMode(.original)
                            .resizable().scaledToFit()
                    }
                    NavigationLink(destination: PictureView(image: "colors")) {
                        Image(loadImage(key: "colors"))
                            .renderingMode(.original)
                            .resizable().scaledToFit()
                    }
                }
                HStack{
                    NavigationLink(destination: PictureView(image: "meals")) {
                        Image(loadImage(key: "meals"))
                            .renderingMode(.original)
                            .resizable().scaledToFit()
                    }
                    NavigationLink(destination: PictureView(image: "vistas")) {
                        Image(loadImage(key: "vistas"))
                            .renderingMode(.original)
                            .resizable().scaledToFit()
                    }
                }
            }.navigationTitle("Pictures")
        }
    }
}

struct StartApp_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func loadImage(key : String)  -> String {
    return accounts[0].images[key]!
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Rise Up")
                    .resizable().scaledToFit()
                Spacer()
                NavigationLink(
                    destination: StartApp(),
                    label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 250, height: 50)
                                .foregroundColor(.green)
                            Text("Let's Get Started")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(.blue)
                        }
                    })
                Spacer()
            }
        }.onAppear(perform: {
            loadData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
