//
//  MessagesView.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-09.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<10) { _ in
                    MessageCell()
                }
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
