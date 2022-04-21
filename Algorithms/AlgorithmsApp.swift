//
//  AlgorithmsApp.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-20.
//

import SwiftUI

@main
struct AlgorithmsApp: App {
    
    @StateObject var navigationViewModel = NavigationViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(navigationViewModel)
        }
        .commands {
            SidebarCommands()
        }
    }
}
