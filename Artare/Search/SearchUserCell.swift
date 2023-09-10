//
//  SearchUserCell.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-09.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("CuriousR")
                    .fontWeight(.heavy)
                Text("@CuriousR")
            }
            
            Spacer(minLength: 0)
        }
    }
}

struct SearchUserCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserCell()
    }
}
