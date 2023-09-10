//
//  MainView.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-10.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            TopBar()
            Home()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
