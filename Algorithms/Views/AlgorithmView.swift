//
//  AlgorithmView.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-20.
//

import SwiftUI

struct AlgorithmView: View {
    
    @EnvironmentObject var navigationViewModel: NavigationViewModel
    
    var body: some View {
        switch navigationViewModel.activeRoute {
        case .quicksort:
            QuicksortView()
        default:
            Text("Select an algorithm to visualize")
            
        }
    }
}
