//
//  ContentView.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSelected = false
    
    var body: some View {
        NavigationView {
            SiderbarView()
            AlgorithmView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
