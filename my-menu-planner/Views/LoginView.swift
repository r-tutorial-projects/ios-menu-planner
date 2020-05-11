//
//  LoginView.swift
//  my-menu-planner
//
//  Created by Ruben Vitt on 23.02.20.
//  Copyright © 2020 Rubeen. All rights reserved.
//

import SwiftUI
import Combine

struct LoginView: View {
    // MARK: Properties
    @State private var mail = ""
    @State private var pass = ""
    
    // Mark: VIEW
    var body: some View {
        NavigationView {
            VStack {
                Text("Login Window")
                    .font(.largeTitle)
                    .padding([.top, .bottom], 40)
                
                Image(systemName: "book.fill")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .padding(.bottom, 50)
                    .foregroundColor(.some(Color(.systemOrange)))
                
                VStack(alignment: .leading, spacing: 15) {
                    TextField("Email", text: self.$mail)
                        .modifier(InputViewModifier())
                    SecureField("Password", text: self.$pass)
                        .modifier(InputViewModifier())
                }
                Button("Sign in") {}
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color(.systemBlue))
                    .cornerRadius(15.0)
                
                
            }.padding([.leading, .trailing], 27.5)
        }
        .background(Color(.green))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct InputViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .padding()
            .background(Color(.systemFill))
            .cornerRadius(20.0)
    }
}
