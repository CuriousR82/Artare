//
//  Extensions.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-09.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
