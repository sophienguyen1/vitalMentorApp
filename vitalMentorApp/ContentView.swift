//
//  ContentView.swift
//  vitalmentorCOPYYY
//
//  Created by natali oleinik on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Background image
                Image("homething")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 70.0)
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)

                VStack {
                    Text("VitalMentor")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(size: 55))
                        .multilineTextAlignment(.center)
                        .padding(.top, 50.0) // Adjust the value to position the text as needed
                    
                    // Navigation links to the next screen
                    NavigationLink(destination: bookrecs()) {
                        Image("star")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .padding(-10.0)
                    }
                    HStack{
                    NavigationLink(destination: absView()) {
                        Image("star")
                            .resizable()
                            .contentShape(Rectangle())
                            .frame(width: 50, height: 50)
                            .padding(.top, 70.0)
                            .padding(.leading, 0.0)
                        
                    }
                        NavigationLink(destination: JournalView()) {
                            Image("star")
                            
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .padding(.trailing, 70.0)
                            .padding(0.0)
                            
                        }        }
                    NavigationLink(destination: absView()) {
                        Image("star")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .padding(.top, 20.0)
                        .padding(.leading, 0.0)                    }
                    NavigationLink(destination: absView()) {
                        Image("star")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .padding(.top, 40.0)
                        .padding(.leading, 50.0)                    }
                    Spacer() // Pushes the stars to the top of the screen
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
