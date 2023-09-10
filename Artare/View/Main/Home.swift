//
//  Home.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-09.
//

import SwiftUI

struct Home: View {
    
    @State var showCreatePost = false
    @State var text = ""
    
    var body: some View {
        VStack {
            ZStack {
                TabView {
                    Feed()
                        .navigationBarHidden(true)
                        .tabItem {
//                            Image("Home")
                            Image(systemName: "house.fill")
                        }
                    SearchView()
                        .navigationBarHidden(true)
                        .tabItem {
//                            Image("Search")
                            Image(systemName: "magnifyingglass")
                        }
                    NotificationsView()
                        .navigationBarHidden(true)
                        .tabItem {
//                            Image("Notifications")
                            Image(systemName: "bell")
                        }
                    MessagesView()
                        .navigationBarHidden(true)
                        .tabItem {
                            Image(systemName: "ellipsis.message")
                        }
                }
                
                VStack {
                    Spacer()
                    HStack {
                        
                        Spacer()
                        Button(action: {
                            self.showCreatePost.toggle()
                        }, label: { 
                            Image(systemName: "pencil").renderingMode(.template).resizable().frame(width: 20, height: 20).padding()
                                .background(Color("bg"))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        })
                    }
                    .padding()

                }
                .padding(.bottom, 65)
            }
            .sheet(isPresented: $showCreatePost, content: {
                CreatePostView(text: text)
            })
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
