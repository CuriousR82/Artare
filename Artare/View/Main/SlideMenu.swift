//
//  SlideMenu.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-10.
//

import SwiftUI

struct SlideMenu: View {
    
    @State var show = false
    var menuButtons = ["Profile", "Lists", "Topics", "Bookmarks", "Moments"]
    
    @State var width = UIScreen.main.bounds.width
//    var edges = UIWindowScene.windows.first?.safeAreaInsets
    var body: some View {
        
        VStack {
            HStack(spacing: 0){
//                Spacer(minLength: 0)
                
                VStack(alignment: .leading){
                    Image("logo")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    HStack(alignment: .top, spacing: 12) {
                        
                        
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("CuriousR")
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            Text("@CuriousR")
                                .foregroundColor(.gray)
                            
                            // Follow Counts...
                            
                            HStack(spacing: 20){
                                
                                FollowView(count: 8, title: "Following")
                                    .onTapGesture {
                                        
                                    }
                                
                                FollowView(count: 18, title: "Following")
                                    .onTapGesture {
                                        // do something here....
                                    }
                                
                            }
                            .padding(.top,10)
                            
                            Divider()
                                .padding(.top,10)
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                            withAnimation{
                                
                                show.toggle()
                            }
                            
                        }) {
                            
                            Image(systemName: show ? "chevron.down" : "chevron.up")
                                .foregroundColor(Color("twitter"))
                        }
                    }
                    
                    // Different Views When up or down buttons pressed....
                    
                    VStack(alignment: .leading){
                        
                        // Menu Buttons....
                        
                        ForEach(menuButtons,id: \.self){menu in
                            
                            
                            
                            Button(action: {
                                // switch your actions or work based on title....
                            }) {
                                
                                MenuButton(title: menu)
                            }
                        }
                        
                        Divider()
                            .padding(.top)
                        
                        Button(action: {
                            // switch your actions or work based on title....
                        }) {
                            
                            MenuButton(title: "Twitter Ads")
                        }
                        
                        Divider()
                        
                        Button(action: {}) {
                            
                            Text("Settings and privacy")
                                .foregroundColor(.blue)
                        }
                        .padding(.top)
                        
                        Button(action: {}) {
                            
                            Text("Help centre")
                                .foregroundColor(.blue)
                        }
                        .padding(.top, 5)
                        
                        Spacer(minLength: 0)
                        
                        Divider()
                            .padding(.bottom)
                        
                        HStack {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "lightbulb")
                                    .foregroundColor(.blue)
                            })
                            
                            Spacer(minLength: 0)
                            
                            Image(systemName: "qrcode.viewfinder")
                                .foregroundColor(.blue)
                        }
                    }
                    // hiding this view when down arrow pressed...
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil : 0)
                    
                    // Alternative View For Up Arrow...
                    
                    VStack(alignment: .leading){
                        
                        Button(action: {}) {
                            
                            Text("Create a new account")
                                .foregroundColor(.blue)
                        }
                        .padding(.top, 15)
                        
                        Button(action: {}) {
                            
                            Text("Add an existing account")
                                .foregroundColor(.blue)
                        }
                        .padding(.top, 5)
                        
                        Spacer(minLength: 0)
                    }
                    .opacity(show ? 0 : 1)
                    .frame(height: show ? 0 : nil)
                    
                    
                }
                .padding(.horizontal, 20)
                .padding(.top, 75)
                .padding(.bottom, 25)
                .frame(width: width - 90)
                .background(Color("base"))
                .ignoresSafeArea(.all, edges: .vertical)
                Spacer(minLength: 0)
            }
        }
    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenu()
    }
}
