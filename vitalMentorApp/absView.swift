//
//  absView.swift
//  vitalmentorCOPYYY
//
//  Created by natali oleinik on 8/1/23.
//

import SwiftUI

struct absView: View {
    let situpURL = URL(string: "https://www.youtube.com/watch?v=1fbU_MkV7NE&ab_channel=LIVESTRONG.COM")!
    let plankURL = URL(string: "https://www.youtube.com/watch?v=pSHjTRCQxIw&ab_channel=ScottHermanFitness")!
    let crunchesURL = URL(string: "https://www.youtube.com/watch?time_continue=49&v=5ER5Of4MOPI&embeds_referring_euri=https%3A%2F%2Fwww.google.com%2F&source_ve_path=MjM4NTE&feature=emb_title&ab_channel=MindBodySoul")!
    
    var body: some View {
        
        ZStack {
            
            VStack {
                Text("CORE")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .font(.system(size: 55))
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)
                    .padding (.bottom, 30)
                    .padding(.trailing, 15.0)
                
                
                
                Text("Welcome to our core-focused page! Here, we delve into the world of abs - those essential muscles that not only enhance your appearance but also provide stability and balance.")
                    .foregroundColor(.black)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 25.0)
                    .padding(.vertical, 5.0)
                    .padding(.trailing, 15.0)
                
                
                    .frame(width: 380.0, height: 120.0)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(.white)
                            .frame(height: nil)
                            .shadow(radius: 31)
                            .padding(.horizontal, 15)
                            .padding(.vertical, -7.0)
                            .padding(.trailing, 15.0)
                        
                    )
                
                
                
                VStack(spacing: 20) {
                    Button(action: openSitupVideo) {
                        Text("Sit-ups")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(width: 200.0, height: 50.0)
                            .background(Color(hue: 0.854, saturation: 0.39, brightness: 0.838))
                            .cornerRadius(10)
                            .padding(.top, 30.0)
                            .shadow(radius: 31)
                            .padding(.trailing, 15.0)
                        
                        
                    }
                    Button(action: openPlankVideo) {
                        Text("Plank")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(width: 200.0, height: 50.0)
                            .background(Color(hue: 0.854, saturation: 0.39, brightness: 0.838))
                            .cornerRadius(10)
                            .shadow(radius: 31)
                            .padding(.trailing, 15.0)
                        
                    }
                    Button(action: openCrunchVideo) {
                        Text("Crunches")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(width: 200.0, height: 50.0)
                            .background(Color(hue: 0.854, saturation: 0.39, brightness: 0.838))
                            .cornerRadius(10)
                            .shadow(radius: 31)
                            .padding(.trailing, 15.0)
                        
                    }
                }
            }
            .padding(.bottom, 250)
            
        }
        
        .padding(2.0)
        .background(
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 0.95, green: 0.92, blue: 0.98),
                Color(red: 0.85, green: 0.78, blue: 0.94),
                Color(red: 0.8, green: 0.75, blue: 0.95),
                Color(red: 0.85, green: 0.78, blue: 0.94),
                Color(red: 0.95, green: 0.92, blue: 0.98)
            ]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        )
    }
    
    func openCrunchVideo() {
        guard UIApplication.shared.canOpenURL(crunchesURL) else {
            print("Error: Unable to open URL.")
            return
        }
        
        UIApplication.shared.open(crunchesURL)
    }
    
    func openPlankVideo() {
        guard UIApplication.shared.canOpenURL(plankURL) else {
            print("Error: Unable to open URL.")
            return
        }
        
        UIApplication.shared.open(plankURL)
        
    }
    func openSitupVideo() {
        guard UIApplication.shared.canOpenURL(situpURL) else {
            print("Error: Unable to open URL.")
            return
        }
        UIApplication.shared.open(situpURL)
    }
    
}
