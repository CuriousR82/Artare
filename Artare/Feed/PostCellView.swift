//
//  PostCellView.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-09.
//

import SwiftUI

struct PostCellView: View {
    
    var post: String
    var postImage: String?
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10, content: {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55, alignment: .center)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10,
                       content: {
                    (
                        Text("CuriousR  ")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        +
                        Text("@CuriousR")
                            .foregroundColor(.gray)
                    )
                    
                    Text(post)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    if let image = postImage {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(10)
                        }
                        .frame(height: 250)
                    }
                })
            })
            
            // Bottom
            
            HStack(spacing: 50, content: {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .frame(width: 16, height: 16)
                }).foregroundColor(.gray)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "repeat")
                        .resizable()
                        .frame(width: 17, height: 17)
                }).foregroundColor(.gray)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 17, height: 15)
                }).foregroundColor(.gray)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width: 13, height: 17)
                }).foregroundColor(.gray)
            })
            .padding(.top, 4)
        }
    }
}

struct PostCellView_Previews: PreviewProvider {
    static var previews: some View {
        PostCellView(post: sampleText)
    }
}

var sampleText = "Hiii have you guys tried out the Faber Castell watercolour pencils?"
