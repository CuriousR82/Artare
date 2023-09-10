//
//  TopBar.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-10.
//

import SwiftUI

struct TopBar: View {
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 0)
                
                Image(systemName: "paintbrush.pointed.fill")
                    .foregroundColor(.blue)
                    .padding(.leading, 30)
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                })
            }
            .padding()
            
            Rectangle()
                .frame(width: width, height: 1)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
        .background(Color("base"))
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
