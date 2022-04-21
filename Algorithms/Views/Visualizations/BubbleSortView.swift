//
//  BubbleSortView.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-21.
//

import SwiftUI

struct BubbleSortView: View {
    
    @StateObject var viewModel = BubbleSortViewModel()
    
    @State private var elementCount = 0
    
    private let countChoices = [25, 50, 100, 500, 1000]
    
    var body: some View {
        VStack {
            TimelineView(.animation) { timeline in
                Canvas(opaque: true, colorMode: .linear, rendersAsynchronously: true) { context, size in
                    let now = timeline.date.timeIntervalSinceReferenceDate
                    viewModel.render(&context, size, time: now)
                }
            }
            Spacer()
            
            controls
        }
            .padding()
            .navigationTitle("Quicksort")
    }
    
    var controls: some View {
        HStack {
            Picker("Number of Elements:", selection: $elementCount) {
                ForEach(countChoices, id: \.self) { choice in
                    Text("\(choice)").tag(choice)
                }
            }
            .pickerStyle(.radioGroup)
            .onChange(of: elementCount) { value in
                viewModel.reset(elementsCount: value)
            }
            
            Button("Sort!") { viewModel.startSorting() }
            Button("Reset") { viewModel.reset(elementsCount: elementCount) }
        }
    }
}


struct BubbleSortView_Previews: PreviewProvider {
    static var previews: some View {
        BubbleSortView()
    }
}
