//
//  SignUpView.swift
//  e-channelling
//
//  Created by COCOBSCCOMPY4231P-035 on 2024-11-07.
//

import Foundation
import SwiftUI

struct SignUpView: View {
    @State private var fullName = ""
    @State private var password = ""
    @State private var email = ""
    @State private var mobileNumber = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("New Account")
                .font(.title)
                .fontWeight(.bold)

            TextField("Full name", text: $fullName)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)

            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)

            TextField("Email", text: $email)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)

            HStack {
                TextField("Mobile Number", text: $mobileNumber)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
            }

            Toggle(isOn: .constant(false)) {
                Text("I agree to Terms of Use and Privacy Policy")
            }
            .padding(.top, 10)

            Button(action: {
                // Sign up action
            }) {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding(.top, 10)

            Text("or sign up with")
                .foregroundColor(.gray)

            Button(action: {
                // Sign up with Apple action
            }) {
                Label("Sign Up With Apple", systemImage: "applelogo")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(8)
            }

            Spacer()
        }
        .padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

