//
//  SidebarLinks.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-20.
//

import Foundation

let sidebarLinks: [SidebarSection] = [
    // MARK: Graph Traversal
    SidebarSection(label: "Graphs", icon: "point.3.filled.connected.trianglepath.dotted", buttons: [
        SidebarButton(label: "Prim", route: .prim),
        SidebarButton(label: "Dijkstra", route: .dijkstra),
    ]),
    
    // MARK: Sorting
    SidebarSection(label: "Sorting", icon: "chart.bar.xaxis", buttons: [
        SidebarButton(label: "Bubble Sort", route: .bubbleSort),
        SidebarButton(label: "Insertion Sort", route: .insertionSort),
        SidebarButton(label: "Quicksort", route: .quicksort),
    ])
]
