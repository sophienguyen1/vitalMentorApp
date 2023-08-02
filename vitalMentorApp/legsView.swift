//
//  absView.swift
//  vitalmentorCOPYYY
//
//  Created by natali oleinik on 8/1/23.
//

import SwiftUI

struct legsView: View {

    var body: some View {
            
            ZStack {
                Image("legs")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("LEGS")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .font(.system(size: 55))
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding (.bottom, 30)
                        .padding(.trailing, 15.0)

                    
                    
                    Text("Step into this page, where we unravel the  strength and versatility of your lower limbs. From thighs to calves, our recommended exercises will help you build powerful and agile legs.")
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
                            Text("Squats")
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
                            Text("Lunges")
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
                            Text("Calf Raises")
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

    
struct legsView_Previews: PreviewProvider {
    static var previews: some View {
        absView()
    }
}
