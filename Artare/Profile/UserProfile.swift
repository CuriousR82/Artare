//
//  UserProfile.swift
//  twitter-clone (iOS)
//
//  Created by cem on 7/31/21.
//

import SwiftUI

struct UserProfile: View {
    
    @State var offset: CGFloat = 0
    @State var titleOffset: CGFloat = 0
    @State var currentTab = "Posts"
    @State var tabBarOffset: CGFloat = 0
    @Namespace var animation
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            VStack(spacing: 15){
                
                // Header View...
                GeometryReader{proxy -> AnyView in
                    
                    // Sticky Header...
                    let minY = proxy.frame(in: .global).minY
                    
                    DispatchQueue.main.async {
                        
                        self.offset = minY
                    }
                    
                    return AnyView(
                        
                        ZStack{
                            
                            // Banner...
                            Image("banner")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: getRect().width, height: minY > 0 ? 180 + minY : 180, alignment: .center)
                                .cornerRadius(0)
                            
                            BlurView()
                                .opacity(blurViewOpacity())
                            
                            // Title View...
                            VStack(spacing: 5){
                                
                                Text("CuriousR")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
//                                    .padding(.top, 2)
                                
                                Text("150 Posts")
                                    .foregroundColor(.white)
                            }
                            // to slide from bottom added extra 60..
                            .offset(y: 120)
                            .offset(y: titleOffset > 100 ? 0 : -getTitleTextOffset())
                            .opacity(titleOffset < 100 ? 1 : 0)
                        }
                            .clipped()
                        // Stretchy Header...
                            .frame(height: minY > 0 ? 180 + minY : nil)
                            .offset(y: minY > 0 ? -minY : -minY < 80 ? 0 : -minY - 80)
                    )
                }
                .frame(height: 180)
                .zIndex(1)
                
                VStack {
                    HStack {
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75)
                            .clipShape(Circle())
                            .padding(8)
                            .background(Color("base").clipShape(Circle()))
                            .offset(y: offset < 0 ? getOffset() - 20 : -20)
                            .scaleEffect(getScale())
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Text("Edit Profile")
                                .foregroundColor(.blue)
                                .padding(.vertical, 6)
                                .padding(.horizontal, 12)
                                .background(Capsule().stroke(Color.blue, lineWidth: 1.5))
                        }
                    }
                    .padding(.top, -25)
                    .padding(.bottom, -10)
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("CuriousR")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("@CuriousR")
                            .foregroundColor(.gray)
                        
                        Text("Hi, my name is Rosa, I hope to create a difference between the world of computers and art!")
                        
                        HStack(spacing: 5, content: {
                            Text("13")
                                .foregroundColor(.primary)
                                .fontWeight(.semibold)
                            
                            Text("Followers")
                                .foregroundColor(.gray)
                            
                            Text("680")
                                .foregroundColor(.primary)
                                .fontWeight(.semibold)
                                .padding(.leading, 10)
                            
                            Text("Following")
                                .foregroundColor(.gray)
                        })
                    })
                    .overlay(GeometryReader { proxy -> Color in
                        let minY = proxy.frame(in: .global).minY
                        
                        DispatchQueue.main.async {
                            self.titleOffset = minY
                        }
                        
                        return Color.clear
                        
                    }
                        .frame(width: 0, height: 0), alignment: .top)
                    
                    VStack(spacing: 0) {
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack(spacing: 0, content: {
                                TabButton(currentTab: $currentTab, title: "Posts", animation: animation)
                                TabButton(currentTab: $currentTab, title: "Posts & Likes", animation: animation)
                                TabButton(currentTab: $currentTab, title: "Media", animation: animation)
                                TabButton(currentTab: $currentTab, title: "Likes", animation: animation)
                            })
                        })
                        
                        Divider()
                    }
                    .padding(.top, 30)
                    .background(Color("base"))
                    .offset(y: tabBarOffset < 90 ? -tabBarOffset + 90 : 0)
                    .overlay(
                        GeometryReader { proxy -> Color in
                            let minY = proxy.frame(in: .global).minY
                            
                            DispatchQueue.main.async {
                                self.tabBarOffset = minY
                            }
                            
                            return Color.clear
                        }
                            .frame(width: 0, height: 0), alignment: .top
                    )
                    .zIndex(1)
                    
                    VStack (spacing: 18) {
                        PostCellView(post: "Hey Tim, are those regular glasses?", postImage: "post")
                        
                        Divider()
                        
                        ForEach(0..<20, id: \.self) { _ in
                            PostCellView(post: sampleText)
                            
                            Divider()
                        }
                    }
                    .padding(.top)
                    .zIndex(0)
                }
                .padding(.horizontal)
                .zIndex(-offset > 80 ? 0 : 1)
            }
        })
                .ignoresSafeArea(.all, edges: .top)
    }
    
    func getTitleTextOffset() -> CGFloat{
        
        // some amount of progress for slide effect..
        let progress = 20 / titleOffset
        
        let offset = 60 * (progress > 0 && progress <= 1 ? progress : 1)
        
        return offset
    }
    
    func blurViewOpacity() -> Double{
        
        let progress = -(offset + 80) / 150
        
        return Double(-offset > 80 ? progress : 0)
    }
    
    func getOffset() -> CGFloat {
        let progress = (-offset / 80) * 20
        
        return progress <= 20 ? progress : 20
    }
    
    func getScale() -> CGFloat {
        let progress = -offset / 80
        let scale = 1.8 - (progress < 1.0 ? progress : 1)
        
        return scale < 1 ? scale : 1
    }
}


struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
