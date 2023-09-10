//
//  CreatePostView.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-09.
//

import SwiftUI

struct CreatePostView: View {
    @State var text = ""
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Cancel")
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Post")
                        .padding([.leading, .trailing], 15)
                        .padding([.top, .bottom], 7.5)
                })
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            
            MultilineTextField(text: $text)
        }
        .padding()
    }
}

struct CreatePostView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePostView()
    }
}
