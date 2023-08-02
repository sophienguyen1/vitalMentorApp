//
//  absView.swift
//  vitalmentorCOPYYY
//
//  Created by natali oleinik on 8/1/23.
//

import SwiftUI

struct absView: View {
    var body: some View {
            
            ZStack {
                Image("abs")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
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
                        NavigationLink(destination: ContentView()) {
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
                        NavigationLink(destination: ContentView()) {
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
                        NavigationLink(destination: ContentView()){
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
        }
    }


struct absView_Previews: PreviewProvider {
    static var previews: some View {
        absView()
    }
}
