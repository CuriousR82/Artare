//
//  Feed.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-09.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing: 18) {
                
                PostCellView(post: "Hey Tim, are those regular glasses?", postImage: "post")
                Divider()

                ForEach(1...20, id: \.self) { _ in
                    PostCellView(post: sampleText)
                    Divider()
                }
                
                PostCellView(post: sampleText)
//                Divider()
//                PostCellView(post: "I have just finished my still-life piece w/ graphite!", postImage: "Cat")
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        })
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
