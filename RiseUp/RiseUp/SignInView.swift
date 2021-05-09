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
    @State var isValid = false
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
                        checkPassword()
                    })
                    .frame(width: 150, height: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                }
                .padding()
                Spacer()
                if isValid {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 100, height: 50)
                                .foregroundColor(.blue)
                            Text("Submit")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                    })
                }
                Spacer()
            }.onAppear(perform: {
                person = UserDefaults.standard.getStructValue(forKey: "user")!
            })
        }
    }
    func getFirstName() -> String {
        return person.firstName
    }
    func checkPassword() {
        if person.password == password {
            isValid = true
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(person: Person())
    }
}

