//
//  FollowView.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-10.
//

import SwiftUI

struct FollowView: View {
    
    var count: Int
    var title: String
    
    var body: some View {
        HStack {
            Text("\(count)")
                .fontWeight(.bold)
            
            Text(title)
                .foregroundColor(.gray)
            
        }
    }
}
