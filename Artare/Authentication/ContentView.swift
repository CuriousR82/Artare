//
//  ContentView.swift
//  Artare
//
//  Created by Rosa Jeon on 2023-09-09.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        if viewModel.isAuthenticated {  

            if let user = viewModel.currentUser {
                MainView(user: user)
            }
        }
        else {
            WelcomeView()

        }
        
        // ________
//        MainView()
        // ___________
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
