import SwiftUI

struct bookrecs: View {
    var body: some View {
        NavigationStack {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 0.95, green: 0.92, blue: 0.98),
                Color(red: 0.85, green: 0.78, blue: 0.94),
                Color(red: 0.8, green: 0.75, blue: 0.95),
                Color(red: 0.85, green: 0.78, blue: 0.94),
                Color(red: 0.95, green: 0.92, blue: 0.98)
            ]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
                VStack {
                    Text("Book Generator")
                                       .fontWeight(.bold)
                        .foregroundColor(.black)
                        .font(.system(size: 55))
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding (.bottom, 30)
                        .padding(.trailing, 15.0)
                    Text("Answer a question, and we'll pick a book for you to read!")
                        .foregroundColor(.black)
                        .font(.system(size: 18))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 25)
                        .padding(.vertical, 5.0)
                        .padding(.trailing, 15.0)
                        .frame(width: 380.0, height: 90.0)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(.white)
                                .frame(height: nil)
                                .shadow(radius: 31)
                                .padding(.horizontal, 15)
                                .padding(.vertical, -1.0)
                                .padding(.trailing, 15.0))
                    NavigationLink(destination: questionOne()) {
                        Text("Get started")
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 25.0)
                            .padding(.vertical, 5.0)
                            .padding(.trailing, 15.0)
                            .frame(width: 200.0, height: 50.0)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.582, brightness: 0.001))
                                    .frame(height: nil)
                                    .shadow(radius: 31)
                                    .padding(.horizontal, 15)
                                    .padding(.top, 6.0)
                                    .padding(.trailing, 15.0)
                                )
                    }
                }
                .padding(.bottom, 80) // closing nav stack

            }
        } // closing ZStack
    } // closing some view
} // closing struct

struct bookrecs_Previews: PreviewProvider {
    static var previews: some View {
        bookrecs()
    }
}
