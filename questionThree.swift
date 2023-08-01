//
//  questionThree.swift
//  vitalMentorApp
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct questionThree: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("What is your favorite ")
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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct questionThree_Previews: PreviewProvider {
    static var previews: some View {
        questionThree()
    }
}
