import Foundation
import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            // Replace systemName with your custom image name
            Image("front") // Replace "front" with your actual image name if it's in the asset catalog
                .resizable()
                .frame(width: 200, height: 200)
                .padding(.top, 50)

            Text("Welcome to E-Care!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding(.top, 20)

            Text("Your personal health companion, here to help you track, manage, and improve your well-being every day.")
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(.gray)

            Spacer()

            Button(action: {
                // Navigate to SignUp or Login screen
            }) {
                Text("Let’s get started!")
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
            }
        }
        .padding()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

