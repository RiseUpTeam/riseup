//
//  SignUpView.swift
//  RiseUp
//
//  Created by Michael Rodgers on 5/8/21.
//

import SwiftUI

struct SignUpView: View {
    @State var userName = ""
    @State var password = ""
    @State var isReadyName = false
    @State var isReadyPassword = false
    var body: some View {
        NavigationView {
            VStack {
                Text("Enter user name.")
                    .font(.title)
                    .foregroundColor(.blue)
                ZStack{
                    Rectangle()
                        .frame(width:150, height: 50)
                        .opacity(0)
                        .border(Color.blue, width:3)
                    TextField("",text: $userName, onCommit: {
                        updateName()
                        isReadyName = true
                    })
                    .frame(width: 150, height: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                }
                .padding()
                Spacer()
                if isReadyName {
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
                            isReadyPassword = true
                        })
                        .frame(width: 150, height: 50, alignment: .center)
                        .multilineTextAlignment(.center)
                    }
                    .padding()
                }
                Spacer()
            }.onAppear(perform: {
                isReadyName = false
                isReadyPassword = false
                userName = ""
                password = ""
            })
        }
    }
    func updateName() {
        var person1 = Person()
        UserDefaults.standard.setStructValue(value: person1, forKey: "user")
        person1.userName = userName
        UserDefaults.standard.synchronize()
    }
    func updatePassword() {
        var person1 : Person = UserDefaults.standard.getStructValue(forKey: "user")!
        person1.password = password
        UserDefaults.standard.setStructValue(value: person1, forKey: "user")
        UserDefaults.standard.synchronize()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
