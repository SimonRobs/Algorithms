//
//  BubbleSortViewModel.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-21.
//

import SwiftUI

class BubbleSortViewModel: ObservableObject {
    @Published var elements: [SortElement] = []
    private var canvasSize: CGSize = .zero
    private var sorting = false
    private var i = 0
    private var j = 1
    
    func render(_ context: inout GraphicsContext, _ size: CGSize, time: TimeInterval) {
        if size != canvasSize { canvasSize = size }
        if elements.isEmpty {  reset(elementsCount: 100) }
        for (index, element) in elements.enumerated() {
            let elementFrame = makeElementFrame(from: element, at: CGFloat(index))
            context.fill(RoundedRectangle(cornerRadius: 2).path(in: elementFrame), with: .color(.cyan))
        }
        for _ in 0..<1 {
            nextStep()
        }
    }
    
    func reset(elementsCount: Int) {
        fillElements(count: elementsCount)
        sorting = false
        i = 0
        j = 1
    }
    
    func startSorting() {
        sorting = true
    }
    
    private func fillElements(count: Int) {
        elements.removeAll()
        for _ in 0..<count {
            let value = Int.random(in: 1...Int(canvasSize.height))
            elements.append(SortElement(value: value))
        }
    }
    
    private func makeElementFrame(from element: SortElement, at index: CGFloat) -> CGRect {
        let elementsCount = CGFloat(elements.count)
        let spacing: CGFloat = (10 * elementsCount) > canvasSize.width ? 0 : 10
        let availableWidth = canvasSize.width - spacing * elementsCount
        let elementWidth = availableWidth / elementsCount
        let x = index * (elementWidth + spacing)
        let y = canvasSize.height - CGFloat(element.value)
        let elementHeight = CGFloat(element.value)
        return CGRect(x: x, y: y, width: elementWidth, height: elementHeight)
    }
    
    private func nextStep() {
        if !sorting { return }
        if i < elements.count {
            if j < elements.count - i {
                if elements[j] < elements[j - 1] {
                    let temp = elements[j]
                    elements[j] = elements[j-1]
                    elements[j-1] = temp
                }
                j += 1
            } else {
                j = 1
                i += 1
            }
        } else {
            sorting = false
        }
    }
}
