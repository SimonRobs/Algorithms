//
//  Highlightable.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-21.
//

import SwiftUI

class Highlightable {
    var highlighted: Bool = false
    func highlight() { highlighted = true }
    func clearHighlight() { highlighted = false }
}
