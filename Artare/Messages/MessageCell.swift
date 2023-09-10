//
//  MessageCell.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-09.
//

import SwiftUI

struct MessageCell: View {
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            HStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 0, content: {
                    HStack {
                        Text("CuriousR ")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        Text("@CuriousR")
                            .foregroundColor(.gray)
                        Spacer(minLength: 0)
                        Text("09/09/2023")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                    
                    Text("You: What's up?")
                        .foregroundColor(.gray)
                        .padding(.top, 2)
                    Spacer()
                })
            }
            .padding(.top, 2)
        })
        .frame(width: width, height: 84)
    }
}

struct MessageCell_Previews: PreviewProvider {
    static var previews: some View {
        MessageCell()
    }
}
