//
//  bookrecs.swift
//  vitalMentorApp
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct bookrecs: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Book Recommendation Generator")
                Text("Answer 3 questions, and we'll pick a book for you to read!")
                NavigationLink(destination: questionOne()) {
                    Text("Get started")
                }
            } // closing v stack
        } // closing nav stack
    } // closing some view
} // closing struct


struct bookrecs_Previews: PreviewProvider {
    static var previews: some View {
        bookrecs()
    }
}
