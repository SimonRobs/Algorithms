//
//  QuicksortViewModel.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-20.
//

import SwiftUI


class QuicksortViewModel: ObservableObject {
    
    struct Circle {
        let origin: CGPoint
        let r: CGFloat
    }
    
    @Published var circles: [Circle] = []
    var size = CGSize.zero
    
    func render(_ context: inout GraphicsContext, _ size: CGSize) {
        if size != self.size { self.size = size }
        for circle in circles {
            let path = Path(ellipseIn: CGRect(origin: circle.origin, size: CGSize(width: circle.r, height: circle.r)))
            context.fill(path, with: .color(Color(red: 0.5, green: 0.3, blue: 0.9, opacity: 0.8)))
        }
    }
    
    func addCircles(amount: Int = 1) {
        for _ in 0..<amount {
            let r = CGFloat.random(in: 4...32)
            let x = CGFloat.random(in: r...(size.width - r))
            let y = CGFloat.random(in: r...(size.height - r))
            circles.append(Circle(origin: CGPoint(x: x, y: y), r: r))
        }
    }
    
}
