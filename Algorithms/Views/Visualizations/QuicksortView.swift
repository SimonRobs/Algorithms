//
//  QuicksortView.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-20.
//

import SwiftUI

struct QuicksortView: View {
    
    @StateObject var viewModel = QuicksortViewModel()
    
    var body: some View {
        VStack {
            Canvas(opaque: true, colorMode: .linear, rendersAsynchronously: true) { context, size in
                viewModel.render(&context, size)
            }
                .background(Color.white)
                .border(Color.gray)
            
            Spacer()
            
            controls
        }
            .padding()
            .navigationTitle("Quicksort")
    }
    
    var controls: some View {
        Button("Draw Circles") {
            viewModel.addCircles(amount: 6400)
        }
        .frame(minHeight: 200)
    }
}


struct QuicksortView_Previews: PreviewProvider {
    static var previews: some View {
        QuicksortView()
    }
}
