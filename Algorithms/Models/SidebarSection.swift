//
//  SidebarSection.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-20.
//

import Foundation

struct SidebarSection: Identifiable {
    let id = UUID()
    let label: String
    let icon: String
    let buttons: [SidebarButton]
}
