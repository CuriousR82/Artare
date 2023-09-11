//
//  WelcomeView.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-10.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            HStack {
                
                Spacer(minLength: 0)
                
                Image(systemName: "paintbrush.pointed.fill")
                    .foregroundColor(.blue)
                
                Spacer(minLength: 0)
            }
            
            Spacer(minLength: 0)
            
            Text("Join the artists' trend right now.")
                .font(.system(size: 30, weight: .heavy, design: .default))
                .frame(width: (getRect().width * 0.9), alignment: .center)
            
            Spacer(minLength: 0)
            
            VStack(alignment: .center, spacing: 10, content: {
                Button(action: {
                    print("Sign in with Google")
                }, label: {
                    HStack(spacing: -4, content: {
                        Image("google")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text("Continue with Google")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(Color("text"))
                            .padding()
                    })
                    .padding(.horizontal, 25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 36)
                            .stroke(Color.blue, lineWidth: 1)
                            .opacity(0.3)
                            .frame(width: 310, height: 60, alignment: .center)
                    )
                })
                
                Button(action: {
                    print("Sign in with Apple")
                }, label: {
                    HStack(spacing: -4, content: {
                        Image(systemName: "apple.logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 27, height: 27)
                            .foregroundColor(Color("text"))
                        
                        Text("Continue with Apple")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(Color("text"))
                            .padding()
                    })
                    .padding(.horizontal, 25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 36)
                            .stroke(Color.blue, lineWidth: 1)
                            .opacity(0.3)
                            .frame(width: 310, height: 60, alignment: .center)
                    )
                })
                
                HStack {
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.3)
                        .frame(width: (getRect().width * 0.35), height: 1)
                    
                    Text("Or")
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.3)
                        .frame(width: (getRect().width * 0.35), height: 1)
                }
                
                RoundedRectangle(cornerRadius: 36)
                    .foregroundColor(.blue)
                    .frame(width: 310, height: 60, alignment: .center)
                    .overlay(
                    Text("Create a new account")
                        .fontWeight(.bold)
                        .font(.title3)
                        .foregroundColor(Color("base"))
                        .padding()
                    )
            })
            .padding()
            
            VStack(alignment: .leading, content: {
                VStack {
                    Text("By signing up, you agree to our ") + Text("Terms").foregroundColor(.blue) + Text(",") + Text(" Privacy Policy").foregroundColor(.blue) + Text(", and Cookie Use.")
                }.padding(.bottom)
//                .padding(.horizontal)
                
                HStack(spacing: 2) {
                    Text("Have an account already?")
                    Text("Log in")
                        .foregroundColor(.blue)
                }
//                .padding(.horizontal)
            })
            .padding(.horizontal)
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
