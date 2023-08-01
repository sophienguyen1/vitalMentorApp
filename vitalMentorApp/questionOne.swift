//
//  questionOne.swift
//  vitalMentorApp
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct questionOne: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("What is your favorite genre?")
                Button("Dystopian") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                Button("Romance") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                Button("Horror") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                NavigationLink(destination: questionTwo()) {
                    Text("Next question")
                }
            }
        }
        Text("Hello, World!")
    }
}

struct questionOne_Previews: PreviewProvider {
    static var previews: some View {
        questionOne()
    }
}
