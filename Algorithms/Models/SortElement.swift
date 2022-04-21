//
//  SortElement.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-21.
//

import SwiftUI

class SortElement: Highlightable  {
    let value: Int
    
    
    init(value: Int) {
        self.value = value
    }
    
}

extension SortElement: Comparable {
    static func == (lhs: SortElement, rhs: SortElement) -> Bool {
        return lhs.value < rhs.value
    }
    
    static func < (lhs: SortElement, rhs: SortElement) -> Bool {
        return lhs.value < rhs.value
    }
}
