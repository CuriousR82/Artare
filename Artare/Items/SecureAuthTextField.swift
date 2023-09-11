//
//  SecureAuthTextField.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-11.
//

import SwiftUI

struct SecureAuthTextField: View {
    
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading, content: {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.gray)
                }
                SecureField("", text: $text)
                    .frame(height: 45)
                    .foregroundColor(.blue)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
            })
            
            Rectangle()
                .frame(height: 1, alignment: .center)
                .foregroundColor(.gray)
                .padding(.top, -2)
        }
        .padding(.horizontal)
    }
}
