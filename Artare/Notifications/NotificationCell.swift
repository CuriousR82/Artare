//
//  NotificationCell.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-09.
//

import SwiftUI

struct NotificationCell: View {
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            HStack (alignment: .top) {
                
                Image(systemName: "person.fill")
                    .resizable()
                    .foregroundColor(.blue)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding([.top, .trailing], 10)
//                    .padding(.trailing, 10)
                
                HStack(spacing: 5, content: {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                        .cornerRadius(18)
                    
                    Text("CuriousR ")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    +
                    Text("followed you")
                        .foregroundColor(.black)
                })
                
//                VStack(alignment: .leading, spacing: 5, content: {
//                    Image("logo")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 36, height: 36)
//                        .cornerRadius(18)
//
//                    Text("CuriousR ")
//                        .fontWeight(.bold)
//                        .foregroundColor(.primary)
//
//                    +
//                    Text("followed you")
//                        .foregroundColor(.black)
//                })
                
                Spacer()
            }
            .padding(.leading, 30)
        }
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
