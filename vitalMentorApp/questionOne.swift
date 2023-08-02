//
//  questionOne.swift
//  vitalMentorApp
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct questionOne: View {
    @State private var dystopianBooks = ["The Hunger Games", "The Maze Runner"]
    @State private var romanceBooks = ["It Ends With Us", "Pride & Prejudice"]
    @State private var mysteryBooks = ["One of Us is Lying", "The Apartment"]
    
    func pickBookD() -> String {
        let randomDystopian = Int.random(in: 0..<2)
        let dystopianBook = dystopianBooks[randomDystopian]
        return dystopianBook
    } //dystopian
    
    func pickBookR() -> String {
        let randomRomance = Int.random(in: 0..<2)
        let romanceBook = romanceBooks[randomRomance]
        return romanceBook
    } // romance
    
    func pickBookM() -> String {
        let randomMystery = Int.random(in: 0..<2)
        let mysteryBook = mysteryBooks[randomMystery]
        return mysteryBook
    } // mystery
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("What is your favorite genre?")
                    .font(.title)
                    .fontWeight(.bold)
                    
                Button("Dystopian") {
                    let randomBookD = pickBookD()
                    print(randomBookD)
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.purple)
                
                Button("Romance") {
                    let randomBookR = pickBookR()
                    print(randomBookR)
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.purple)
                
                Button("Mystery") {
                    let randomBookM = pickBookM()
                    print(randomBookM)
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.purple)
                
                
            } //closing vstack
        } // closing nav stack
    } //some view stack
}

struct questionOne_Previews: PreviewProvider {
    static var previews: some View {
        questionOne()
    }
}
