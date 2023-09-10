//
//  SearchCell.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-09.
//

import SwiftUI

struct SearchCell: View {
    
    var tag = ""
    var posts = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            Text("hello").fontWeight(.heavy)
            Text(posts + " Posts").fontWeight(.light)
        })
    }
}

struct SearchCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchCell()
    }
}
