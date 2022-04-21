//
//  NavigationController.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-20.
//

import Foundation

class NavigationViewModel: ObservableObject {
    @Published var activeRoute: Routes = .quicksort

    func navigate(to route: Routes) {
        activeRoute = route
    }
    
}
