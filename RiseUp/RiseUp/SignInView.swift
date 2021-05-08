//
//  SignInView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 5/8/21.
//

import SwiftUI
import Foundation
import AppDevWithSwiftLibrary

struct SignInView: View {
    @State var person = Person()
    @State var password = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome")
                    .font(.title)
                    .foregroundColor(.blue)
                ZStack{
                    Rectangle()
                        .frame(width:150, height: 50)
                        .opacity(0)
                        .border(Color.blue, width:3)
                    Text(getFirstName())
                    .frame(width: 150, height: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                }
                .padding()
                Spacer()
                Text("Enter password.")
                        .font(.title)
                        .foregroundColor(.blue)
                    ZStack{
                        Rectangle()
                            .frame(width:150, height: 50)
                            .opacity(0)
                            .border(Color.blue, width:3)
                        TextField("",text: $password, onCommit: {
                            updatePassword()
                        })
                        .frame(width: 150, height: 50, alignment: .center)
                        .multilineTextAlignment(.center)
                    }
                    .padding()
                }
                Spacer()
            }.onAppear(perform: {

            })
        }
    func getFirstName() -> String {
        let person1 = Person()
        UserDefaults.standard.setStructValue(value: person1, forKey: "user")
        return person1.firstName
    }
    func updatePassword() {
        var person1 : Person = UserDefaults.standard.getStructValue(forKey: "user")!
        person1.password = password
        UserDefaults.standard.setStructValue(value: person1, forKey: "user")
        UserDefaults.standard.synchronize()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
