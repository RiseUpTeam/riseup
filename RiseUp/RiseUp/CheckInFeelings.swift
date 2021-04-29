//
//  CheckInFeelings.swift
//  RiseUp
//
//  Created by Michael Rodgers on 4/29/21.
//

import SwiftUI

struct CheckInFeelings: View {
    var body: some View {
        VStack {
            Text("How are you feeling?")
                .font(.largeTitle)
                .fontWeight(.bold)
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 150, height: 55)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                    Text("Worried")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 150, height: 55)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                    Text("Fearful")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                }
            }
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 150, height: 55)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                    Text("Sad")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 150, height: 55)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                    Text("Restless")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                }
            }
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 150, height: 55)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                    Text("Panicky")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 150, height: 55)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                    Text("Angry")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                }
            }
            HStack {
                NavigationLink(destination:CheckInSymptomsView()){
                ZStack {
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 100, height: 50)
                        .foregroundColor(.blue)
                    Text("Submit") // will link to Symptom page
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                }.padding(.top, 30)
                }
            }
        }
    }
}

struct CheckInFeelings_Previews: PreviewProvider {
    static var previews: some View {
        CheckInFeelings()
    }
}
