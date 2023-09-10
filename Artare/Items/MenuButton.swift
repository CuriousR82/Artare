//
//  MenuButton.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-10.
//

import SwiftUI

struct MenuButton: View {
    
    // ["Profile", "Lists", "Topics", "Bookmarks", "Moments"]
    
    var title: String
    var symbol: String
    
    init(title: String) {
        self.title = title
        
        if title == "Profile" {
            symbol = "person"
        }
        else if title == "Lists" {
            symbol = "list.bullet"
        }
        else if title == "Topics" {
            symbol = "star"
        }
        else if title == "Bookmarks" {
            symbol = "bookmark"
        }
        else  if title == "Moments" {
            symbol = "bolt"
        }
        else {
            symbol = "arrow.up.right"
        }
        
    }
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: symbol)
            //                .resizable()
            //                .renderingMode(.template)
            //                .frame(width: 24, height: 24)
                .foregroundColor(.gray)
            
            Text(title)
                .foregroundColor(Color("text"))
            
            Spacer(minLength: 0)
        }
        .padding(.vertical, 12)
    }
}
